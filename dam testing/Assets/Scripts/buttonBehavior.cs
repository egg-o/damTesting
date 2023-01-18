using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;


public class buttonBehavior : MonoBehaviour
{

    [SerializeField] private GameObject _pauseMenu;
    [SerializeField] private GameObject _pausebutton;

    int n;
    public void toStartScene(){
        SceneManager.LoadScene("StartScene");
        Debug.Log("SWITCH");
    }

    public void toTestScene(){
        SceneManager.LoadScene("TestScene");
    }
    
    public void QuitGame(){
        Application.Quit();
    }

    public void PauseButton(){
        Time.timeScale = 0f;
        _pauseMenu.SetActive(true);
        _pausebutton.SetActive(false);
    }

    public void ResumeButton(){
        Time.timeScale = 1.0f;
        _pausebutton.SetActive(false);
        _pausebutton.SetActive(true);
    }
}
