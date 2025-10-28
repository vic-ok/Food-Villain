using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.UI;

public class Zombie1 : MonoBehaviour
{
    [Header("Zombie health and damage")]
    private float zombieHealth = 100f;
    //private float zombiePresentHealth;
    public float zombiePresentHealth;
    public float giveDamege = 5f;

    [Header("Zombie things")]
    public NavMeshAgent zombieAgent;
    public Transform LookPoint;
    public Camera AttackingRaycastArea;
    public Transform playerBody;
    public LayerMask PlayerLayer;

    [Header("Zombie attack variables")]
    public float timeBtwAttack;
    bool previouslyAttacked;

    [Header("Zombie animation")]
    public Animator anim;

    [Header("Increase score after zombie is killed")]
    /*int foodPointsCounter = 0;
    [SerializeField] Text badgeCountText;
    [SerializeField] AudioSource collectionSound;*/
    public bool isZombieDead = false;

    [Header("Zombie guarding variables")]
    public GameObject[] walkPoints;
    int currentZombiePosition = 0;
    public float zombieSpeed;
    float walkingPointRadius = 2;

    [Header("Zombie mood/states")]
    public float visionRadius;
    public float attackingRadius;
    public bool playerInvisionRadius;
    public bool playingInattackingRadius;

    

    private void Awake()
    {
        zombiePresentHealth = zombieHealth;
        zombieAgent = GetComponent<NavMeshAgent>();
    }

    private void Update()
    {
        playerInvisionRadius = Physics.CheckSphere(transform.position, visionRadius, PlayerLayer);
        playingInattackingRadius = Physics.CheckSphere(transform.position, attackingRadius, PlayerLayer);

        if (!playerInvisionRadius && !playingInattackingRadius) Guard();
        //Guard();
        if (playerInvisionRadius && !playingInattackingRadius) PursuePlayer();
        //PursuePlayer();
        if (playerInvisionRadius && playingInattackingRadius) AttackPlayer();

        
    }

    private void Guard()
    {
        if (Vector3.Distance(walkPoints[currentZombiePosition].transform.position, transform.position) < walkingPointRadius)
        {
            currentZombiePosition = Random.Range(0, walkPoints.Length);
            if(currentZombiePosition >= walkPoints.Length)
            {
                currentZombiePosition = 0;
            }
        }
        transform.position = Vector3.MoveTowards(transform.position, walkPoints[currentZombiePosition].transform.position, Time.deltaTime * zombieSpeed);
        transform.LookAt(walkPoints[currentZombiePosition].transform.position);
    }
    private void PursuePlayer()
    {
        anim.SetBool("Attacking", true);
        zombieAgent.SetDestination(playerBody.position);

        if (zombieAgent.SetDestination(playerBody.position))
        {
            //anim.SetBool("Walking", false);
            anim.SetBool("Walking", true);
            anim.SetBool("Attacking", true);
            anim.SetBool("Dead", false);

        }
        else
        {
            /*anim.SetBool("Walking", false);
            anim.SetBool("Attacking", false);*/
            //anim.SetBool("Dead", true);
            //anim.SetBool("Dead", false);

        }
    }
   
    private void AttackPlayer ()
    {
        anim.SetBool("Attacking", true);
        /**/
        //transform.LookAt(LookPoint);
        //Invoke("AttackMyPlayer", 2f);
        zombieAgent.SetDestination(transform.position);

        //transform.LookAt(LookPoint);
        if (!previouslyAttacked)
        {
            RaycastHit hitInfo;
            if (Physics.Raycast(AttackingRaycastArea.transform.position, AttackingRaycastArea.transform.forward, out hitInfo, attackingRadius))
            {
                Debug.Log("Attacking" + hitInfo.transform.name);
                //PlayerScript playerBody = hitInfo.transform.GetComponent<PlayerScript>();
                PlayerScript playerBody = hitInfo.transform.GetComponent<PlayerScript>();

                if (playerBody != null)
                {
                    playerBody.playerHitDamageAsync(giveDamege);
                }
                

                //anim.SetBool("Walking", false);
                anim.SetBool("Walking", true);
                anim.SetBool("Attacking", true);
                anim.SetBool("Dead", false);
            }

            previouslyAttacked = true;
            Invoke(nameof(ActiveAttacking), timeBtwAttack);
        }

    }

    private void ActiveAttacking()
    {
        previouslyAttacked = false;
    }


    public void zombieHitDamage(float takeDamage)
    {
        zombiePresentHealth -= takeDamage;

        if(zombiePresentHealth <= 0)
        {
            anim.SetBool("Walking", false);
            anim.SetBool("Attacking", false);
            anim.SetBool("Dead", true);
            zombieDie();
            
        }
    }

    private void zombieDie()
    {
        zombieAgent.SetDestination(transform.position);
        zombieSpeed = 0f;
        attackingRadius = 0f;
        visionRadius = 0f;
        playerInvisionRadius = false;
        playingInattackingRadius = false;
        Object.Destroy(gameObject, 0f);
        timeDelay();
    }

    public void timeDelay()
    {
        isZombieDead = true;
    }

}
