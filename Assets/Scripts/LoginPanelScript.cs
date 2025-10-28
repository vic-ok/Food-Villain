using System;
using System.Collections;
using System.Collections.Generic;
using System.Threading.Tasks;
using UnityEngine;
using UnityEngine.Networking;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class LoginPanelScript : MonoBehaviour
{
    public InputField nameField;
    public InputField passwordField;

    public Button submitButton;

    public Text messageText;
    public GameObject LoginPanel;
    public GameObject MainmenuLoginOrRegisterPanel;
    public GameObject gameMenu;

    [Obsolete]
    public void CallLogin()
    {
        StartCoroutine(LoginPlayer());
    }

    [Obsolete]
    IEnumerator LoginPlayer()
    {

        /*WWWForm form = new WWWForm();
        form.AddField("name", nameField.text);
        form.AddField("password", passwordField.text);


        WWW www = new WWW("http://localhost/sqlconnect/login.php", form);
        yield return www;
        if (www.text[0].Equals("0"))
        {
            DBManager.username = nameField.text;
            DBManager.score = int.Parse(www.text.Split('\t')[1]);
            Debug.Log("Login successful!");
            messageText.text = "Login successful!";
        }
        else
        {
            Debug.Log("User login failed. Error #" + www.text);
        }*/

        WWWForm form = new WWWForm();
        form.AddField("name", nameField.text);
        form.AddField("password", passwordField.text);

        UnityWebRequest www = UnityWebRequest.Post("http://localhost/sqlconnect/login.php", form);
        yield return www.SendWebRequest();

        if (www.result == UnityWebRequest.Result.Success)
        {
            string responseText = www.downloadHandler.text;
            string[] responseParts = responseText.Split(new[] { "\\L" }, StringSplitOptions.None);

            if (responseParts[0] == "0")
            {
                DBManager.username = nameField.text;
                DBManager.score = int.Parse(responseParts[1]);
                Debug.Log("Login successful!");
                messageText.text = "Login successful!";
                messageText.color = Color.green;

                delayTimeNew();
            }
            else
            {
                Debug.Log("User login failed. Error #" + responseParts[0]);
                messageText.text = "User login failed.";
                messageText.color = Color.red;
            }
        }
        else
        {
            Debug.Log("User login failed. Error #" + www.error);
        }

        // Check for errors in the request
        if (www.isNetworkError || www.isHttpError)
        {
            Debug.LogError(www.error);
        }

        // Dispose of the UnityWebRequest
        www.Dispose();

    }


    public async void delayTimeNew()
    {
        //timerHurryTxt.SetActive(true);
        await Task.Delay((int)(2f * 1000));

        gameMenu.SetActive(true);
        LoginPanel.SetActive(false);
        
    }

    public void verifyInput()
    {
        submitButton.interactable = (nameField.text.Length >= 8 && passwordField.text.Length >= 8);
    }

    public void goBackMtd()
    {
        LoginPanel.SetActive(false);
        MainmenuLoginOrRegisterPanel.SetActive(true);
    }

}
