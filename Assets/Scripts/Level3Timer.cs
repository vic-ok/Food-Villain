using System.Collections;
using System.Collections.Generic;
using System.Threading.Tasks;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using System;

public class Level3Timer : MonoBehaviour
{
    [Header("Variables for timer count down")]
    [SerializeField] private Image uiTimerFill;
    [SerializeField] private Text uiTimerText;

    public int timerDuration;
    public int remainingDuration;

    public QuizzManager quizMgr;
    public GameObject timerHurryTxt;

    public DraggableItem draggableItem;
    //public QuizzManager checkIfLevel3IsActive;
    public ChatGPTScript chatGPTScript;
    public GameObject AllFunFactCchatGPTScrollArea;
    public GameObject Lvl4GameObj;
    //public Rifle myRifle;

    public static bool Level4Started = false;

    //public GameObject chatGPShowText;

    // Start is called before the first frame update
    void Start()
    {
        beginTimer(timerDuration);
        timerHurryTxt.SetActive(false);
    }

    private void beginTimer(int sec)
    {
        remainingDuration = sec;
        StartCoroutine(UpdateTimer());
    }

    private IEnumerator UpdateTimer()
    {
        while (remainingDuration >= 0)
        {
            uiTimerText.text = $"{remainingDuration / 60:00}:{remainingDuration % 60:00}";
            uiTimerFill.fillAmount = Mathf.InverseLerp(0, timerDuration, remainingDuration);
            remainingDuration--;

            if (remainingDuration <= (0.25 * timerDuration))
            {
                uiTimerText.color = Color.red;

                delayTime();

            }
            /*if (remainingDuration == 0)
            {
                uiTimerText.color = Color.cyan;

            }*/
            yield return new WaitForSeconds(1f);
        }


        AllFunFactCchatGPTScrollArea.SetActive(true);

        // Create a Random object
        System.Random random = new System.Random();

        // Generate a random number between 1 and 4
        int randomNumber = random.Next(0, 4); // Generates numbers in the range [0, 4), so we use 4 instead of 3 to include 3

        // Output the random number
        //Console.WriteLine("Random number between 0 and 3: " + randomNumber);

        //Debug.Log("Random number between 0 and 3: " + randomNumber);

        string[] availableFoodGroups = { "Carbohydrate", "Fruits and vegetables", "Dairy products", "Protein", "Fats and oil" };
        for(int i=0; i<availableFoodGroups.Length; i++)
        {
            if(randomNumber == i)
            {
                string FunFact = "Please list out two fun facts about "+ availableFoodGroups[i] +". Mention that these are fun facts about " + availableFoodGroups[i];
                chatGPTScript.AskChatGPT(FunFact);
                Lvl4GameObj.SetActive(true);
            }
        }

        /*string allFunFact = "For each, please list out two fun facts about Carbohydrate, Fruits and vegetables, Dairy products, Protein, and Fats and oil.";
        chatGPTScript.AskChatGPT(allFunFact);
        Lvl4GameObj.SetActive(true);*/
        //Level4Started = true;

        onEnd();
    }

    public async void delayTime()
    {
        timerHurryTxt.SetActive(true);
        await Task.Delay((int)(2f * 1000));
        timerHurryTxt.SetActive(false);
    }

    public void StartLevel4PlayBtn()
    {
        int gameScore = Rifle.scoreVal;
        PassingVariableBtwScenesController.totalScore = gameScore;
        SceneManager.LoadScene("Demo_FreeKitchen 1");
    }

    private void onEnd()
    {
        //Debug.Log("Quiz level ends!");
        quizMgr.GameOver();
        draggableItem.FoodGrpGameOver();
        //if(QuizzManager.Level3Timer)
        //if (true)
        //{
            
        //}
        Cursor.lockState = CursorLockMode.None;
    }
}
