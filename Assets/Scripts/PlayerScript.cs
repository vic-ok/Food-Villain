using System.Collections;
using System.Collections.Generic;
using System.Threading.Tasks;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class PlayerScript : MonoBehaviour
{
    [Header("Player Movement")]
    public float playerSpeed = 1.9f;
    //public float playerSprint1 = 3f;
    public float playerSprint = 1f;
    

    [Header("Player Health")]
    public float playerHealth = 120f;
    public float presentHealth;

    public int playerHealthInitalHealt2Int = 120;

    public Text playerHealthScoreText;
    public int convertCurrentPlayerHealth2Int;
    public HealthBarScript healthBar;

    [SerializeField]
    public GameObject healthGainNotifyTxt;
    [SerializeField] private Text uiHealthText;

    public GameObject level1NotifyTxt;

    [SerializeField]
    public GameObject healthZeroNotifyTxt;
    [SerializeField] private Text uiHealthZeroText;


    [Header("Player Script Camera")]
    public Transform playerCamera;
    public GameObject endGameMenuUI;


    [Header("Player animation and gravity")]
    public CharacterController cc;
    public float gravity = -9.81f;
    //public float gravity = -5.81f;
    public Animator animator;

    [Header("Player animation and jumping and velocity")]
    public float turnCalmTime = 0.1f;
    public float turnCalmVelocity;
    public float jumpRange = 1f;
    Vector3 velocity;
    public Transform surfaceCheck;
    bool onSurface;
    public float surfaceDistance = 0.4f;
    public LayerMask surfaceMask;

    //public AudioSource source;
    public AudioClip clip;

    private void Start()
    {
        Cursor.lockState = CursorLockMode.Locked;
        presentHealth = playerHealth;


        convertCurrentPlayerHealth2Int = playerHealthInitalHealt2Int;//keepng track of health score in order to use it for scoreboard
        healthBar.GiveFullHealthToPlayer(playerHealth);
    }
    private void Update()
    {
        //source.Play();
        //source.PlayOneShot(clip);
        

        onSurface = Physics.CheckSphere(surfaceCheck.position, surfaceDistance, surfaceMask);

        if (onSurface && velocity.y < 0)
        {
            velocity.y = -2f;
        }

        velocity.y += gravity * Time.deltaTime;
        cc.Move(velocity * Time.deltaTime);


        playerMove();
        jump();
        sprint();
        checkIfPlayerIsBelowGroundLevel();
        //pointTowardsMouseDirection();
    }

    void playerMove()
    {
        float horizontalAxis = Input.GetAxis("Horizontal");
        float verticalAxis = Input.GetAxis("Vertical");

        Vector3 direction = new Vector3(horizontalAxis, 0f, verticalAxis).normalized;


        //Player walk or move around
        if (direction.magnitude >= 0.1f)
        {
            animator.SetBool("Idle", false);
            animator.SetBool("Walk", true);
            animator.SetBool("Running", false);
            animator.SetBool("RiffleWalk", false);
            animator.SetBool("IdleAim", false);

            float targetAngle = Mathf.Atan2(direction.x, direction.z) * Mathf.Rad2Deg + playerCamera.eulerAngles.y;
            float angle = Mathf.SmoothDampAngle(transform.eulerAngles.y, targetAngle, ref turnCalmVelocity, turnCalmTime);
            transform.rotation = Quaternion.Euler(0f, angle, 0f);

            Vector3 moveDirection = Quaternion.Euler(0f, targetAngle, 0f) * Vector3.forward;
            cc.Move(moveDirection.normalized * playerSpeed * Time.deltaTime);
        }
        else
        {
            animator.SetBool("Idle", true);
            animator.SetBool("Walk", false);
            animator.SetBool("Running", false);
        }
    }

    void jump()
    {
        if (Input.GetButtonDown("Jump") && onSurface)
        {
            animator.SetBool("Idle", false);
            animator.SetTrigger("Jump");
            velocity.y = Mathf.Sqrt(jumpRange * -2 * gravity);
        }
        else
        {
            animator.SetBool("Idle", true);
            animator.ResetTrigger("Jump");
        }
    }

    void sprint()
    {
        if (Input.GetButton("Sprint") && Input.GetKey(KeyCode.W) || Input.GetKey(KeyCode.UpArrow) && onSurface)
        {
            float horizontalAxis = Input.GetAxis("Horizontal");
            float verticalAxis = Input.GetAxis("Vertical");

            Vector3 direction = new Vector3(horizontalAxis, 0f, verticalAxis).normalized;

            if (direction.magnitude >= 0.1f)
            {
                animator.SetBool("Walk", false);
                animator.SetBool("Running", true);

                float targetAngle = Mathf.Atan2(direction.x, direction.z) * Mathf.Rad2Deg + playerCamera.eulerAngles.y;
                float angle = Mathf.SmoothDampAngle(transform.eulerAngles.y, targetAngle, ref turnCalmVelocity, turnCalmTime);
                transform.rotation = Quaternion.Euler(0f, angle, 0f);

                Vector3 moveDirection = Quaternion.Euler(0f, targetAngle, 0f) * Vector3.forward;
                cc.Move(moveDirection.normalized * playerSprint * Time.deltaTime);
            }
            else
            {
                animator.SetBool("Walk", true);
                animator.SetBool("Running", false);
            }
        }
    }

    public async Task playerHitDamageAsync(float takeDamage)
    {
        presentHealth -= takeDamage;

        convertCurrentPlayerHealth2Int -= (int)takeDamage; //This is the current player's health displayed at scoreboard.       
        playerHealthScoreText.text = convertCurrentPlayerHealth2Int + "/" + playerHealthInitalHealt2Int; //This is the current player's health displayed at scoreboard.

        healthBar.SetHealth(presentHealth);

        if (presentHealth <= 0)
        {
            uiHealthZeroText.color = Color.red;
            uiHealthZeroText.text = "Oopss...Health exhausted!";

            healthZeroNotifyTxt.SetActive(true);
            await Task.Delay((int)(6f * 1000));
            healthZeroNotifyTxt.SetActive(false);

            playerDie1();
        }

        //if (presentHealth <= (0.25 * playerHealthInitalHealt2Int))
        if (presentHealth <= 40)
        {
            uiHealthText.color = Color.red;
            uiHealthText.text = "You're running out of health! Eat healthy food to stay alive!";

            delayTime();

        }

    }


    public void playerGainMoreHealth(float gainHealth)
    {
        presentHealth += gainHealth;

        convertCurrentPlayerHealth2Int += (int)gainHealth; //This is the current player's health displayed at scoreboard.       
        playerHealthScoreText.text = convertCurrentPlayerHealth2Int + "/" + playerHealthInitalHealt2Int; //This is the current player's health displayed at scoreboard.

        uiHealthText.color = Color.green;
        uiHealthText.text = "+15 points to your health!";
        delayTime();
        healthBar.SetHealth(presentHealth);

    }

    public async void delayTimeLevel1()
    {
        level1NotifyTxt.SetActive(true);
        await Task.Delay((int)(6f * 1000));
        level1NotifyTxt.SetActive(false);
    }

    public async void delayTime()
    {
        healthGainNotifyTxt.SetActive(true);
        await Task.Delay((int)(6f * 1000));
        healthGainNotifyTxt.SetActive(false);
    }

    private void playerDie1()
    {
        endGameMenuUI.SetActive(true);
        Cursor.lockState = CursorLockMode.None;
        Object.Destroy(gameObject, 1.0f);
        //Invoke(nameof(ReloadLevel), 1.3f);
        //ReloadLevel();
    }

    private void checkIfPlayerIsBelowGroundLevel()
    {
        if (transform.position.y < -2f)
        {
            playerDie1();
        }
    }

    void ReloadLevel1()
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().name);
    }

    public void pointTowardsMouseDirection1()
    {
        Vector3 mousePosition = Input.mousePosition;
        mousePosition = Camera.main.ScreenToWorldPoint(mousePosition);

        Vector2 direction = new Vector2(mousePosition.x - transform.position.x, mousePosition.y - transform.position.y);
        transform.up = direction;
    }
}
