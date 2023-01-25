using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class pauseMenu : MonoBehaviour
{

    public RectTransform menuPanel;
    public float slideSpeed = 2.5f;
    private bool isPaused = false;
    public Image arrowImage;
    public RectTransform[] options;
    public int currentOption = 0;
    public float arrowSpeed = 2.5f;

    // Start is called before the first frame update
    void Start()
    {
        menuPanel.localPosition = new Vector2(-menuPanel.rect.width, 0);
        menuPanel.gameObject.SetActive(false);
        arrowImage.gameObject.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown("p"))
        {
            isPaused = !isPaused;
            if (isPaused)
            {
                //menu box
                Time.timeScale = 0;
                menuPanel.localPosition = new Vector2(-menuPanel.rect.width, 0);
                menuPanel.gameObject.SetActive(true);

                //menu arrow
                arrowImage.rectTransform.localPosition = new Vector2(-menuPanel.rect.width, options[currentOption].localPosition.y);
                arrowImage.rectTransform.gameObject.SetActive(true);
            }
            else
            {
                Time.timeScale = 1;
                menuPanel.gameObject.SetActive(false);
                arrowImage.rectTransform.gameObject.SetActive(false);
            }
        }
        //arrow control
        if (Input.GetKeyDown(KeyCode.DownArrow))
        {
            if (currentOption < options.Length - 1)
            {
                currentOption++;
            }
        }
        if (Input.GetKeyDown(KeyCode.UpArrow))
        {
            if (currentOption > 0)
            {
                currentOption--;
            }
        }
        if (Input.GetKeyDown(KeyCode.Return))
        {
            switch(currentOption) {
                case 0:
                    // resume
                    Debug.Log("Not Implemented");
                    break;
                case 1:
                    // restart
                    Debug.Log("Not Implemented");
                    break;
                case 2:
                    //settings
                    SceneManager.LoadScene("Settings");
                    break;
                case 3:
                    //main menu
                    SceneManager.LoadScene("StartScene");
                    break;
                case 4:
                    //quit
                    SceneManager.LoadScene("Quit");
                    break;
                default:
                    break;
                }
        }

        if (isPaused)
        {
            if (Vector3.Distance(menuPanel.localPosition, Vector2.zero + new Vector2(-43,0)) > 1)
            {
                Debug.Log("still moving");
                menuPanel.localPosition = Vector2.Lerp(menuPanel.localPosition, Vector2.zero + new Vector2(-43,0), slideSpeed * Time.unscaledDeltaTime);
                arrowImage.rectTransform.localPosition = Vector2.Lerp(arrowImage.rectTransform.localPosition, Vector2.zero + new Vector2(-857,options[currentOption].localPosition.y), slideSpeed * Time.unscaledDeltaTime);
            }
        }

        arrowImage.rectTransform.localPosition = Vector2.Lerp(arrowImage.rectTransform.localPosition, 
                                                            new Vector3(arrowImage.rectTransform.localPosition.x, options[currentOption].localPosition.y, arrowImage.rectTransform.localPosition.z),
                                                            arrowSpeed * Time.unscaledDeltaTime);
        

    }
}
// This script should be attached to an empty game object in your scene and it will slide the "menuPanel" UI element in from the left when the "p" key is pressed.
// You can adjust the slideSpeed variable to change how fast the menu slides in and out.
// Note: You will need a UI panel that has a RectTransform component and is offscreen to the left.
// Also, Time.timeScale = 0 will pause the game and Time.timeScale = 1 will resume it.







