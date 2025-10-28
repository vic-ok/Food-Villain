using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenuScript : MonoBehaviour
{
    public GameObject selectCharacter;
    public GameObject aboutPage;
    public GameObject mainMenu;

    public void onSelectCharacter()
    {
        selectCharacter.SetActive(true);
        mainMenu.SetActive(false);
    }

    public void onAbout()
    {
        aboutPage.SetActive(true);
        mainMenu.SetActive(false);
    }

    public void onBackBtn()
    {
        mainMenu.SetActive(true);
        aboutPage.SetActive(false);
    }

    public void onPlayBtn()
    {
        SceneManager.LoadScene("FoodVillain 7");
    }

    public void onQuitBtn()
    {
        Debug.Log("Stopping...");
        Application.Quit();
    }
}
