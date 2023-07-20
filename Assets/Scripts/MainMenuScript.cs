using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenuScript : MonoBehaviour
{
    public GameObject selectCharacter;
    public GameObject mainMenu;

    public void onSelectCharacter()
    {
        selectCharacter.SetActive(true);
        mainMenu.SetActive(false);
    }

    public void onPlayBtn()
    {
        SceneManager.LoadScene("FoodVillain 3");
    }

    public void onQuitBtn()
    {
        Debug.Log("Stopping...");
        Application.Quit();
    }
}
