using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SelectCharacterScripts : MonoBehaviour
{
    public GameObject mainMenu;

    public void onPlayer1Selected()
    {
        
        SceneManager.LoadScene("FoodVillain 7");
    }

    public void onPlayer2Selected()
    {
       
        SceneManager.LoadScene("FoodVillain 6");
    }

    public void onBackBtn()
    {
        mainMenu.SetActive(true);
    }
}
