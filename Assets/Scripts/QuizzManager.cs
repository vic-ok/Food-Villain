using System.Collections;
using System.Collections.Generic;
using System.Threading.Tasks;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
//using TMPro;

public class QuizzManager : MonoBehaviour
{
    public List<QuestionsAndAnswers> qNa;
    public GameObject[] options;
    public int currentQuestion;
    public Text QuestionTxt;
    
    public Text CorrectionTxt;
    //public Text ChatGPTCorrectionTxt;
    public GameObject correctionTxtGameObj;
    public GameObject chkScore2UnlockGoldTxtGameObj;
    public GameObject goldBadgeUI;
    public GameObject goldBadgeCongratsBtnText;

    public GameObject goldBadge4Scoreboard;

    public GameObject scoreboardTblShow;
    public GameObject unveilFoodGrpBtnGameObj;
    public GameObject foodGrpGameObj;
    public QuizTimerScript quizTimerScript;

    Dictionary<string, string> allCorrectAns = new Dictionary<string, string>()
{
    {"a)	Avocado", "Avocado is rich in protein."},
    {"c)	Strawberries", "Strawberries has it's seed on the outside."},
    {"b)	Vegetable", "Vegetable has no cholesterol."},
    {"d)	Corn oil", "Corn oil has no calcium."},
    {"b)	Herb", "Banana is a herb."},
    {"d)	Milk", "Milk doesn't contain fibre."},
    {"c)	25.0 – 29.9", "25.0 – 29.9 is considered overwieght."},
    {"a)	Calories", "Fruits has less calories."},
    {"a)	Nutrients", "Nutrients is needed for body growth and repair."},
    {"c)	Vitamins", "Fruits and vegetables are good sources of vitamins."},
    {"a).	Fruits and vegetables", "Our meals should be more of Fruits and vegetables."},
    {"c)	Egg", "Egg can help reduce hair fall."},
    {"b).	Calorie", "Calorie indicates amount of energy in food."},
    {"b).	Water", "Water makes up half of the body."},
    {"b).	Fat", "Carbohydrate, protein and fat are the 3 micro nutrients."},
    {"b).	Fat-2", "Fruits have low fats"},
    {"c)	Fibre", "Fibre helps to reduce bowel cancer."},
    {"d)	Spinach", "Spinach is rich in Vitamins A and K."},
    {"a)	Amino acids", "Amino acids combine to form protein."},
    {"c)	Dry fruits", "Reduce Dry fruits when trying to lose weight."},
};

    public GameObject quizzPanel;
    public GameObject GOPanel;
    public Text scoreText;
    int totalQuestions = 0;
    public int score = 0;

    public ObjectivesCompete objComp;
    public QuizTimerScript quizTimerRestart;

    public QuizzManager quizMgrRestart;
    //public Rifle rifle;

    public ChatGPTScript letsAskChatGPT;
    public GameObject UserText2ChatGPT;
    private string userTypeTxt;
    public InputField userText;
    public GameObject chatGPTTxtBox;
    public GameObject chatGPTScrollArea;
    public GameObject userSendBtn;
    public GameObject userDoneBtn;
    public Text questionEndTxtObj;
    //public TMP_Text UserText2ChatGPT;
    public static bool Level3Timer = false;

    public Text level2ScoreText; //NB: level1ScoreText is found in Rifle Script.


    public void Start()
    {
        //QuizTimer.TimerObj.SetActive(true);
        totalQuestions = qNa.Count;
        GOPanel.SetActive(false);
        correctionTxtGameObj.SetActive(false);
        chkScore2UnlockGoldTxtGameObj.SetActive(false);
        scoreboardTblShow.SetActive(false);
        generateQuestion();
    }

    public void restart()
    {
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
        /*totalQuestions = 0;
        score = 0;
        
        GOPanel.SetActive(false);*/
        //objComp.showQuiz();
        //quizMgrRestart.Start();
        //quizzPanel.SetActive(true);
        //quizTimerRestart.Start();
    }

    public async void GameOver()
    {
        quizzPanel.SetActive(false);
        GOPanel.SetActive(true);
        scoreText.text = score + "/" + totalQuestions;
        //passPointToQuiz(score);

        if (score < (0.8 * totalQuestions))
        {
            chkScore2UnlockGoldTxtGameObj.SetActive(true);
            await Task.Delay((int)(4f * 1000));
            chkScore2UnlockGoldTxtGameObj.SetActive(false);
        }
        else
        {
            goldBadgeCongratsBtnText.SetActive(true);
            await Task.Delay((int)(4f * 1000));
            goldBadgeCongratsBtnText.SetActive(false);

            showGoldBadge();
            unveilFoodGrpBtnGameObj.SetActive(true);
            
        }

    }

    /*public int passPointToQuiz(int pointsC)
    {
        //throw new NotImplementedException();
        
        return pointsC;
    }*/

    public void showBeginFoodGroupLevelGame()
    {
        foodGrpGameObj.SetActive(true);
        //await Task.Delay((int)(4f * 1000));
        Level3Timer = true;

    }

    public void onclickViewScoreboard()
    {
        scoreboardTblShow.SetActive(true);
        level2ScoreText.text = score + "/" + totalQuestions;
    }

    public void showGoldBadge()
    {
        goldBadgeUI.SetActive(true);
        goldBadge4Scoreboard.SetActive(true);//Set active gold badge for scoreboard
        Time.timeScale = 0f;
        //GameIsStopped = true;
    }

    public void correct()
    {
        score += 1;
        qNa.RemoveAt(currentQuestion);
        generateQuestion();
        //StartCoroutine(WaitForNext());
    }

    public async void wrong()
    {
        letsAskChatGPT.AskChatGPT(qNa[currentQuestion].Questions +" "+ string.Join(" ", qNa[currentQuestion].Answers));
        chatGPTScrollArea.SetActive(true);
        chatGPTTxtBox.SetActive(true);

        UserText2ChatGPT.SetActive(true);
        userSendBtn.SetActive(true);
        userDoneBtn.SetActive(true);
        //ConfirmAnswerWithChatGPT();

        string str = qNa[currentQuestion].Answers[qNa[currentQuestion].CorrectAnswer - 1].ToString();
        foreach (KeyValuePair<string, string> entry in allCorrectAns)
        {
            if (entry.Key.Equals(str))
            {
                CorrectionTxt.text = entry.Value;
                CorrectionTxt.color = Color.cyan;

                correctionTxtGameObj.SetActive(true);
                await Task.Delay((int)(4f * 1000));
                correctionTxtGameObj.SetActive(false);
            }

        }
        quizTimerScript.remainingDuration += 30;
        QuestionDelayTimeNew();
        //qNa.RemoveAt(currentQuestion);

        //generateQuestion();
        //StartCoroutine(WaitForNext());
    }

    public async void QuestionDelayTimeNew()
    {
        //await Task.Delay((int)(10f * 120000));
        await Task.Delay(120000);
        //messageText.text = "";

    }

    

    public void ConfirmAnswerWithChatGPT()
    {
        userTypeTxt = userText.text;
        letsAskChatGPT.AskChatGPT(userTypeTxt);
        chatGPTScrollArea.SetActive(true);
        chatGPTTxtBox.SetActive(true);
    }

    public void DoneWithChatGPT()
    {
        qNa.RemoveAt(currentQuestion);
        generateQuestion();

        chatGPTScrollArea.SetActive(false);
        UserText2ChatGPT.SetActive(false);
        chatGPTTxtBox.SetActive(false);
        userSendBtn.SetActive(false);
        userDoneBtn.SetActive(false);
        string userTypeTxt = "";
        userText.text = "";
        //letsAskChatGPT.AskChatGPT(userTypeTxt);
    }


    /*IEnumerator WaitForNext()
    {
        yield return new WaitForSeconds(1);
        generateQuestion();
    }*/

    void setAnswers()
    {
        for (int i=0; i<options.Length; i++)
        {
            //options[i].GetComponent<Image>().color = options[i].GetComponent<AnswerScript>().startColor;
            options[i].GetComponent<AnswerScript>().isCorrect = false;
            options[i].transform.GetChild(0).GetComponent<Text>().text = qNa[currentQuestion].Answers[i];

            

            if (qNa[currentQuestion].CorrectAnswer == i+1)
            {
                options[i].GetComponent<AnswerScript>().isCorrect = true;
                
            }
            
        }
    }

   public async void generateQuestion()
    {
        if (qNa.Count > 0)
        {
            currentQuestion = Random.Range(0, qNa.Count);
            QuestionTxt.text = qNa[currentQuestion].Questions;
            setAnswers();
        }
        else
        {
            string questionEndMsg = "End of questions";
            questionEndTxtObj.text = questionEndMsg;
            await Task.Delay((int)(5f * 1000));

            GameOver();
        }

        
    }


    public void studyHealthyTips4Quiz()
    {
        Application.OpenURL("https://www.youtube.com/watch?v=nW1Aip3NGIU&ab_channel=Healthpecial");
        Application.OpenURL("https://www.canadianliving.com/health/nutrition/article/the-top-25-healthy-fruits-blueberries-apples-cherries-bananas-and-21-more-healthy-picks");
        Application.OpenURL("https://www.nhs.uk/live-well/eat-well/how-to-eat-a-balanced-diet/eight-tips-for-healthy-eating/");
    }
}
