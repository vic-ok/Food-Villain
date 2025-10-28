using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;
using UnityEngine.UI;

public class Rifle : MonoBehaviour
{
    [Header("Rifle shooting")]
    public Camera cam;
    public float giveDamgeOf = 10f;
    public float shootingRange = 100f;
    public float fireCharge = 15f;
    private float nextTimeToShoot = 0f;
    public Animator animator;
    

    [Header("Increase score after zombie is killed")]
    int pointsCounter = 0;
    [SerializeField] Text pointText;
    [SerializeField] AudioSource collectionSound;
    //private float timeDelay = 0f;

    public Text level1ScoreText;

    [Header("Rifle effects")]
    public ParticleSystem muzzleSpark;
    public GameObject woodEffect;
    public GameObject goreEffect;

    public QuizzManager qMgr;
    public DraggableItem dragItem;

    public static int scoreVal;



    public Text playerDisplay;
    public Text scoreDisplay;
    public Text messageDisplay;

    //public InputField nameField;
   
    // Start is called before the first frame update
    private void Awake()
    {
        if (DBManager.username == null)
        {
            messageDisplay.text = "Can't find user.";
        }

        /*playerDisplay.text = "User: " + DBManager.username;
        scoreDisplay.text = "Point: " + DBManager.score;*/
    }


    [Obsolete]
    private void Update()
    {
        //if (Input.GetButtonDown("Fire1"))
        //if (Input.GetKey(KeyCode.P) && Time.time >= nextTimeToShoot)
        if ((Input.GetMouseButtonDown(0) || Input.GetKey(KeyCode.P)) && Time.time >= nextTimeToShoot)
        {
            animator.SetBool("Fire", true);
            animator.SetBool("Idle", false);
            nextTimeToShoot = Time.time + 1f / fireCharge;
            shoot();
            
        }else if (Input.GetButton("Fire1") && Input.GetKey(KeyCode.W) || Input.GetKey(KeyCode.UpArrow))
        {
            animator.SetBool("Idle", false);
            animator.SetBool("FireWalk", true);
        }else if (Input.GetButton("Fire2") && Input.GetButton("Fire1"))
        {
            animator.SetBool("Idle", false);
            animator.SetBool("IdleAim", true);
            animator.SetBool("FireWalk", true);
            animator.SetBool("Walk", true);
            animator.SetBool("Reloading", false);
        }
        else
        {
            animator.SetBool("Fire", false);
            animator.SetBool("Idle", true);
            animator.SetBool("FireWalk", false);
        }

        scoreVal = addPointToQuizPoint(pointsCounter);

        //pointTowardsMouseDirection();


        //CallToSaveScore(scoreVal);
    }

    public int addPointToQuizPoint(int pointsC)
    {
        //throw new NotImplementedException();
        pointsC = pointsCounter + qMgr.score + DraggableItem.foodPointsCounter;
        pointText.text = "Points: " + pointsC;
        return pointsC;
    }

    [Obsolete]
    public void CallToSaveScore(int playerScore)
    {
        StartCoroutine(SaveScoreToDb(playerScore));
    }

    [Obsolete]
    IEnumerator SaveScoreToDb(int scoreToSave)
    {
        /*List<IMultipartFormSection> formData = new List<IMultipartFormSection>
        {
            //new MultipartFormDataSection("name", pointText.text),
            new MultipartFormDataSection("score", pointText.text)

        };*/

        WWWForm formData = new WWWForm();

        //DBManager.username = nameField.text;
        //DBManager.username = playerDisplay.text.ToString();
        DBManager.score = scoreToSave;

        formData.AddField("name", DBManager.username);
        formData.AddField("score", DBManager.score);


        /*UnityWebRequest www = UnityWebRequest.Post("http://localhost/sqlconnect/saveScore.php", formData);*/
        WWW www = new WWW("http://localhost/sqlconnect/saveScore.php", formData);

        //yield return www.SendWebRequest();
        yield return www;
        

        if(www.text == "0")
        {
            Debug.Log("Game Saved.");
            Debug.Log(scoreToSave);
        }
        else
        {
            Debug.Log("Save failed. Error in saving #" + www.text);
        }

        //DBManager.LogOut();



        /*// Check for errors in the request
        if (www.isNetworkError || www.isHttpError)
        {
            Debug.LogError(www.error);
        }

        // Dispose of the UnityWebRequest
        www.Dispose();*/
        www.Dispose();

    }

    public void showScoreFromDB()
    {
        pointText.text = "Points: " + DBManager.score;
    }



    private void shoot()
    {
        muzzleSpark.Play();
        RaycastHit hitInfo;

        if (Physics.Raycast(cam.transform.position, cam.transform.forward, out hitInfo, shootingRange))
        {
            Debug.Log(hitInfo.transform.name);
             
            ObjectToHit objectToHit = hitInfo.transform.GetComponent<ObjectToHit>();
            Zombie1 zombie1 = hitInfo.transform.GetComponent<Zombie1>();
            Zombie2 zombie2 = hitInfo.transform.GetComponent<Zombie2>();

            if (objectToHit != null)
            {
                objectToHit.ObjectHitDamage(giveDamgeOf);
                GameObject woodGo = Instantiate(woodEffect, hitInfo.point, Quaternion.LookRotation(hitInfo.normal));
                Destroy(woodGo, 1f);
            }else if (zombie1 != null)
            {
                zombie1.zombieHitDamage(giveDamgeOf);
                GameObject goreEffectGo = Instantiate(goreEffect, hitInfo.point, Quaternion.LookRotation(hitInfo.normal));
                Destroy(goreEffectGo, 1f);

                //increase score
                //timeDelay += Time.time + 1f;
                if (zombie1.isZombieDead == true)
                {
                    pointsCounter++;
                    pointText.text = "Points: " + pointsCounter;
                    collectionSound.Play();
                    level1ScoreText.text = pointsCounter + "";
                }

            }
            else if (zombie2 != null) 
            {
                zombie2.zombieHitDamage(giveDamgeOf);
                GameObject goreEffectGo = Instantiate(goreEffect, hitInfo.point, Quaternion.LookRotation(hitInfo.normal));
                Destroy(goreEffectGo, 1f);
            }
        }
    }



    /*public void pointTowardsMouseDirection()
    {
        Vector3 mousePosition = Input.mousePosition;
        mousePosition = Camera.main.ScreenToWorldPoint(mousePosition);

        Vector2 direction = new Vector2(mousePosition.x - transform.position.x, mousePosition.y - transform.position.y);
        transform.up = direction;
    }*/

    /*IEnumerator Reload()
    {
       
        animator.SetBool("Reloading", true);
        yield return new WaitForSeconds(relodingTimes);
    }*/
}
