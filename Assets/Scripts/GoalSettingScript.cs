using System;
using System.Collections;
using System.Collections.Generic;
using System.Threading.Tasks;
using UnityEngine;
using UnityEngine.UI;

public class GoalSettingScript : MonoBehaviour
{
    public Button saveGoalsBtn;
    public InputField calorieInput;
    public InputField fatInput;
    public InputField carbohydrateInput;
    public InputField proteinInput;
    public InputField sodiumInput;
    public Text messageText;

    public GameObject foodRecipeUI;
    public GameObject goalSettingUI;

    public InputField CalInputField;
    public InputField ProInputField;
    public InputField FatInputField;
    public InputField bodyWeightInputField;
    public InputField CarhInputField;
    public InputField sodInputField;

    // Start is called before the first frame update
    void Start()
    {
        saveGoalsBtn.onClick.AddListener(playerGoals);
    }

    // Set player's goals here
    public void playerGoals()
    {
        if (calorieInput.text == "" || fatInput.text == "" || carbohydrateInput.text == "" || proteinInput.text == "" || sodiumInput.text == "")
        {
            messageText.color = Color.red;
            messageText.text = "One or more of the fields are empty. Enter a value/number.";
            delayTimeNew();

        }
        else
        {
            // Get the string value from the calorie InputField
            string stringValue1 = CalInputField.text;
            string stringValue2 = FatInputField.text;
            string stringValue3 = CarhInputField.text;
            string stringValue4 = bodyWeightInputField.text;
            string stringValue5 = ProInputField.text;
            string stringValue6 = sodInputField.text;
            
            float intValue1 = 0;
            float intValue2 = 0;
            float intValue3 = 0;
            float intValue4 = 0;
            float intValue5 = 0;
            float intValue6 = 0;

            // Convert the string to an integer using int.Parse()
            try
            {
                intValue1 = float.Parse(stringValue1);
                intValue2 = float.Parse(stringValue2);
                intValue3 = float.Parse(stringValue3);
                intValue4 = float.Parse(stringValue4);
                intValue5 = float.Parse(stringValue5);
                intValue6 = float.Parse(stringValue6);
                //Debug.Log("Converted value: " + intValue1);

                if (intValue1 > (float) 680 || intValue2 > (float) 26 || intValue3 > (float) 108 || intValue5 > (float) (0.8 * intValue4)/3 || intValue6 > (float) 766)
                {
                    messageText.color = Color.red;
                    messageText.text = "Kindly ensure you keep to the recommended values per day.";
                    delayTimeNew();

                }
                else
                {
                    foodRecipeUI.SetActive(true);
                    goalSettingUI.SetActive(false);
                }
            }
            catch (FormatException e)
            {
                //Debug.LogError("Error converting string to integer: Ensure you type in a number. " + e.Message);
                messageText.color = Color.red;
                messageText.text = "Ensure you type in a number.";
                delayTimeNew();
            }

        }
    }

    public async void delayTimeNew()
    {
        await Task.Delay((int)(4f * 1000));
        messageText.text = "";
        
    }
}
