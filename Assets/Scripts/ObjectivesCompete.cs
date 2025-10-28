using System.Collections;
using System.Collections.Generic;
using System.Threading.Tasks;
using UnityEngine;
using UnityEngine.UI;

public class ObjectivesCompete : MonoBehaviour
{
    [Header("Objectives to complete")]
    public Text objective1;
    public Text objective2;
    public Text objective3;
    public Text objective4;
    public Text objective5;

    



    public static ObjectivesCompete occurence;
    public GameObject objective1UI;
    public GameObject objective2UI;
    public GameObject objective3UI;
    public GameObject objective4UI;
    public GameObject objective5UI;
    
    public GameObject QuizUI;
    public GameObject TimerObj;
    public GameObject silverBadgeUI;
    public GameObject silverBadgeCongratsBtnText;

    public GameObject silverBadge4Scoreboard;

    public int timerDurationForSilverCongrats;

    public static bool GameIsStopped = false;


    

    private void Awake()
    {
        occurence = this;
    }

    private void Update()
    {
        if (Input.GetKeyDown("x"))
        {
            //if (GameIsStopped)
            //{
                resume();
                Cursor.lockState = CursorLockMode.Locked;
            //}
            
        }
    }

    public async void GetObjectivesDone(bool obj1, bool obj2, bool obj3, bool obj4, bool obj5, bool obj6)
    {
        if(obj1 == true)
        {
            if (GameIsStopped)
            {
                objective1.color = Color.cyan;
                showObjectives1();
                Cursor.lockState = CursorLockMode.None;
                GameIsStopped = false;
                
            }
        }
        if (obj2 == true)
        {
            if (GameIsStopped)
            {
                objective2.color = Color.cyan;
                showObjectives2();
                Cursor.lockState = CursorLockMode.None;
                GameIsStopped = false;

            }
        }
        if (obj3 == true)
        {
            if (GameIsStopped)
            {
                objective3.color = Color.cyan;
                showObjectives3();
                Cursor.lockState = CursorLockMode.None;
                GameIsStopped = false;

            }
        }
        if (obj4 == true)
        {
            if (GameIsStopped)
            {
                objective4.color = Color.cyan;
                showObjectives4();
                Cursor.lockState = CursorLockMode.None;
                GameIsStopped = false;

            }
        }
        if (obj5 == true)
        {
            if (GameIsStopped)
            {
                objective5.color = Color.cyan;
                showObjectives5();

                

                /*silverBadgeCongratsBtnText.SetActive(true);
                await Task.Delay((int)(4f * 1000));
                silverBadgeCongratsBtnText.SetActive(false);*/

                Cursor.lockState = CursorLockMode.None;
                GameIsStopped = false; 

                showSilverBadge();
                //showQuiz();
                Cursor.lockState = CursorLockMode.None;
                GameIsStopped = false;

            }
        }
        if (obj6 == true)
        {
            if (GameIsStopped)
            {
                showQuiz();
                showSilverBadge();
                
                Cursor.lockState = CursorLockMode.None;
                GameIsStopped = false;

            }
        }
    }

    public void showObjectives1()
    {
        objective1UI.SetActive(true);
        Time.timeScale = 0f;
        GameIsStopped = true;

        
    }

    public void showObjectives2()
    {
        objective2UI.SetActive(true);
        Time.timeScale = 0f;
        GameIsStopped = true;


    }

    public void showObjectives3()
    {
        objective3UI.SetActive(true);
        Time.timeScale = 0f;
        GameIsStopped = true;


    }

    public void showObjectives4()
    {
        objective4UI.SetActive(true);
        Time.timeScale = 0f;
        GameIsStopped = true;


    }

    public void showObjectives5()
    {
        objective5UI.SetActive(true);
        Time.timeScale = 0f;
        GameIsStopped = true;


    }

    public void showQuiz()
    {
        QuizUI.SetActive(true);
        TimerObj.SetActive(true);
        Time.timeScale = 0f;
        GameIsStopped = true;
    }

    public void showSilverBadge()
    {
        silverBadgeUI.SetActive(true);
        silverBadge4Scoreboard.SetActive(true);//Set active silver badge for scoreboard
        Time.timeScale = 0f;
        GameIsStopped = true;


    }

    public void resume()
    {
        objective1UI.SetActive(false);
        objective2UI.SetActive(false);
        objective3UI.SetActive(false);
        objective4UI.SetActive(false);
        objective5UI.SetActive(false);
        Time.timeScale = 1f;
        Cursor.lockState = CursorLockMode.Locked;
        GameIsStopped = false;
    }
}
