using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;
using UnityEngine.UI;

public class RegistrationPanelScript : MonoBehaviour
{
    public InputField nameField;
    public InputField passwordField;

    public Button submitButton;

    public Text messageText;
    public GameObject RegisterPanel;
    public GameObject MainmenuLoginOrRegisterPanel;

    [System.Obsolete]
    public void CallRegister()
    {
        StartCoroutine(Register());
    }

    /*IEnumerator Register()
    {
        WWWForm form = new WWWForm();
        form.AddField("name", nameField.text);
        form.AddField("password", passwordField.text);


        WWW www = new WWW("http://localhost/sqlconnect/register.php", form);
        yield return www;
        if (www.text == "0")
        {
            Debug.Log("User created successfully.");
        }
        else
        {
            Debug.Log("User creation failed. Error #" + www.text);
        }
    }*/

    [System.Obsolete]
    IEnumerator Register()
    {
        List<IMultipartFormSection> formData = new List<IMultipartFormSection>
        {
            new MultipartFormDataSection("name", nameField.text),
            new MultipartFormDataSection("password", passwordField.text)
        };

        UnityWebRequest www = UnityWebRequest.Post("http://localhost/sqlconnect/register.php", formData);
        yield return www.SendWebRequest();

        if (www.result == UnityWebRequest.Result.Success)
        {
            Debug.Log("User created successfully.");
            messageText.text = "User created successfully.";
            messageText.color = Color.green;
        }
        else
        {
            Debug.Log("User creation failed. Error #" + www.error);
            messageText.text = "User creation failed. Try again.";
            messageText.color = Color.red;
        }


        // Check for errors in the request
        if (www.isNetworkError || www.isHttpError)
        {
            Debug.LogError(www.error);
        }

        // Dispose of the UnityWebRequest
        www.Dispose();
    }

    public void verifyInput()
    {
        submitButton.interactable = (nameField.text.Length >= 8 && passwordField.text.Length >= 8);
    }

    public void goBackMtd()
    {
        RegisterPanel.SetActive(false);
        MainmenuLoginOrRegisterPanel.SetActive(true);
    }

}
