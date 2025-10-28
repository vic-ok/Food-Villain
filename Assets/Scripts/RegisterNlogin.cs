using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Threading.Tasks;
using UnityEngine;
using UnityEngine.UI;


public class RegisterNlogin : MonoBehaviour
{

    public GameObject LoginUI;
    public GameObject myMainMenu;

    public InputField usernameInput;
    public InputField passwordInput;
    public Button registerBtn;
    public Button goToLoginBtn;
    public Text messageText;

    ArrayList credentials;

    // Start is called before the first frame update
    void Start()
    {
        registerBtn.onClick.AddListener(writeStuffToFile);
        goToLoginBtn.onClick.AddListener(login);

        if(File.Exists(Application.dataPath + "/credentials.txt"))
        {
            credentials = new ArrayList(File.ReadAllLines(Application.dataPath + "/credentials.txt"));
        }
        else
        {
            File.WriteAllText(Application.dataPath + "/credentials.txt", "");
        }
            
    }

    void writeStuffToFile()
    {
        bool isExist = false;
        credentials = new ArrayList(File.ReadAllLines(Application.dataPath + "/credentials.txt"));
        foreach (var i in credentials)
        {
            if (i.ToString().Contains(usernameInput.text))
            {
                isExist = true;
                break;
            }
        }

        if (usernameInput.text == "" && passwordInput.text == "")
        {
            messageText.text = "Kindly type in a username and password.";
        }
        

        if (isExist)
        {
            messageText.text = "Either user name exist or input credentials is empty.";
            //messageText.text = "Username "+ usernameInput.text + " already exist!";
            //Debug.Log($"Username '{usernameInput.text}' already exist!");
        }
        else
        {
            if (passwordInput.text.Length < 8)
            {
                messageText.text = "Password must be at least 8 characters";
            }
            else
            {
                credentials.Add(usernameInput.text + ":" + passwordInput.text);
                File.WriteAllLines(Application.dataPath + "/credentials.txt", (String[])credentials.ToArray(typeof(string)));
                messageText.text = "Account Registered!";
                //Debug.Log("Account Registered");
            }
    
        }
        
        
    }

    void login()
    {
        bool isExist = false;
        credentials = new ArrayList(File.ReadAllLines(Application.dataPath + "/credentials.txt"));

        foreach (var i in credentials)
        {
            string line = i.ToString();
            if(i.ToString().Substring(0, i.ToString().IndexOf(":")).Equals(usernameInput.text) && i.ToString().Substring(i.ToString().IndexOf(":") + 1).Equals(passwordInput.text))
            {
                isExist = true;
                break;
            }
        }

        if (isExist)
        {
            messageText.text = "Logged in as " + usernameInput.text;
            //Debug.Log("Logged in as '{usernameInput.text}'");
            delayTimeNew();
        }
        else
        {
            messageText.text = "Wrong credentials!";
        }

        
    }

    public async void delayTimeNew()
    {
        //timerHurryTxt.SetActive(true);
        await Task.Delay((int)(2f * 1000));
        LoginUI.SetActive(false);
        myMainMenu.SetActive(true);
    }

 
}
