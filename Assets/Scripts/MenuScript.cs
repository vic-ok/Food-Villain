using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MenuScript : MonoBehaviour
{
    [Header("All menu's")]
    public GameObject pauseMenuUI;
    public GameObject endGameMenuUI;
    public GameObject objectiveMenuUI;

    public static bool GameIsStopped = false;

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            if (GameIsStopped)
            {
                resume();
                Cursor.lockState = CursorLockMode.Locked;
                
            }
            else
            {
                pause();
                Cursor.lockState = CursorLockMode.None;
            }
        }else if (Input.GetKeyDown("m"))
        {
            if (GameIsStopped)
            {
                removeObjectives();
                Cursor.lockState = CursorLockMode.Locked;
            }
            else
            {
                showObjectives();
                Cursor.lockState = CursorLockMode.None;
            }
        }
        
    }

    public void showObjectives()
    {
        objectiveMenuUI.SetActive(true);
        Time.timeScale = 0f;
        GameIsStopped = true;
    }

    public void removeObjectives()
    {
        objectiveMenuUI.SetActive(false);
        Time.timeScale = 1f;
        Cursor.lockState = CursorLockMode.Locked;
        GameIsStopped = false;
    }

    public void resume()
    {
        pauseMenuUI.SetActive(false);
        Time.timeScale = 1f;
        //Cursor.lockState = CursorLockMode.Locked;
        Cursor.lockState = CursorLockMode.None;
        GameIsStopped = false;
    }

    public void restart()
    {
        SceneManager.LoadScene("MainMenu");
    }

    public void loadMenu()
    {
        SceneManager.LoadScene("MainMenu");
    }

    public void quitGame()
    {
        Debug.Log("Stopping...");
        Application.Quit();
    }

    void pause()
    {
        pauseMenuUI.SetActive(true);
        Time.timeScale = 0f;
        GameIsStopped = false;
    }
}
