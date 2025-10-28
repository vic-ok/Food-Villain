using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MainMenuLoginOrRegister : MonoBehaviour
{
    public GameObject LoginPanel;
    public GameObject RegisterPanel;
    public GameObject MainmenuLoginOrRegisterPanel;
    public Text playerDisplay;

    private void Start()
    {
        if (DBManager.LoggedIn)
        {
            playerDisplay.text = "Player: " + DBManager.username;
        }
    }

    public void goToRegister()
    {
        LoginPanel.SetActive(false);
        RegisterPanel.SetActive(true);
        MainmenuLoginOrRegisterPanel.SetActive(false);
    }

    public void goToLogin()
    {
        LoginPanel.SetActive(true);
        RegisterPanel.SetActive(false);
        MainmenuLoginOrRegisterPanel.SetActive(false);
    }
}
