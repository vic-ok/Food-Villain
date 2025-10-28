using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class SaveGameDataInDB : MonoBehaviour
{
    public Text playerDisplay;
    public Text scoreDisplay;
    public Text messageDisplay;
    // Start is called before the first frame update
    private void Awake()
    {
        if(DBManager.username == null)
        {
            messageDisplay.text = "Can't find user.";
        }

        playerDisplay.text = "User: " + DBManager.username;
        scoreDisplay.text = "Point: " + DBManager.score;
    }

    
    public void SaveData()
    {
        
    }
}
