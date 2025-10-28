using System.Collections;
using System.Collections.Generic;
using System.Threading.Tasks;
using UnityEngine;
using UnityEngine.UI;

public class FoodRecipeTimer : MonoBehaviour
{
    public int timerDuration;
    public int remainingDuration;

    //public QuizzManager quizMgr;
    public GameObject timerHurryTxt;
    //public Text timerHurryTxt;
    [Header("Variables for timer count down")]
    [SerializeField] private Image uiTimerFill;
    [SerializeField] private Text uiTimerText;

    public static bool GameIsStopped = false;

    // Start is called before the first frame update
    public void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
     }

    public void resume()
    {
        //pauseMenuUI.SetActive(false);
        Time.timeScale = 1f;
        //Cursor.lockState = CursorLockMode.Locked;
        //Cursor.lockState = CursorLockMode.None;
        //GameIsStopped = false;
        beginTimer(timerDuration);
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
        onEnd();
    }

    public async void delayTime()
    {
        timerHurryTxt.SetActive(true);
        //timerHurryTxt.
        await Task.Delay((int)(2f * 1000));
        timerHurryTxt.SetActive(false);
    }

    private void onEnd()
    {
        //Debug.Log("Quiz level ends!");
        //quizMgr.GameOver();
        //draggableItem.FoodGrpGameOver();
        Cursor.lockState = CursorLockMode.None;
    }
}
