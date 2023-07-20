using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.Threading.Tasks;

public class AnswerScript : MonoBehaviour
{
    [Header("Buttons variables")]
    public bool isCorrect = false;
    public QuizzManager quizzManager;

    public Color startColor;

    public float AnswersDuration = 1f;

    

    
    private void Start()
    {
        startColor = GetComponent<Image>().color;
        
    }

   

    // Start is called before the first frame update
    public async void Answer()
    {
        if (isCorrect)
        {
            GetComponent<Image>().color = Color.green;
            Debug.Log("Correct Answer");
            quizzManager.correct();

            await Task.Delay((int)(AnswersDuration * 1000)); //multiply by 1000 in order to convert from milliseconds to seconds
            GetComponent<Image>().color = Color.black;
            
        }
        else
        {
            GetComponent<Image>().color = Color.red;
            Debug.Log("Not correct");
            quizzManager.wrong();

            await Task.Delay((int)(AnswersDuration * 1000)); //multiply by 1000 in order to convert from milliseconds to seconds
            GetComponent<Image>().color = Color.black;
            
        }
    }
   
}
