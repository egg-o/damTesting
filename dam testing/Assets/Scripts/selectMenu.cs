using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class selectMenu : MonoBehaviour
{
    // Start is called before the first frame update

    //selectArrow
    public Image arrowImage;
    public RectTransform[] options;
    public int currentOption = 0;
    public float arrowSpeed = 2.5f;
   
    //leftPlayer
    public RectTransform leftCheck;
    private bool leftReady = false;

    //rightPlayer
    public RectTransform rightCheck;
    private bool rightReady = false;

    //misc
    private int timeBuffer = 1000;

    // Start is called before the first frame update
    void Start()
    {
        arrowImage.gameObject.SetActive(true);
        arrowImage.rectTransform.localPosition = new Vector2(-230, -230);
        leftCheck.gameObject.SetActive(false);
        rightCheck.gameObject.SetActive(false);

    }

    // Update is called once per frame
    void Update()
    {
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
                    // stage select
                    Debug.Log("not implemented");
                    break;
                case 1:
                    // time select
                    Debug.Log("not implemented");
                    break;
                case 2:
                    // settings
                    SceneManager.LoadScene("StartScene");
                    break;
                default:
                    break;
                }
        }
        if (Input.GetKeyDown("s"))
        {
            leftCheck.gameObject.SetActive(!leftCheck.gameObject.activeSelf);
            leftReady = !leftReady;
            timeBuffer = 1000;
        }
        if (Input.GetKeyDown("k"))
        {
            rightCheck.gameObject.SetActive(!rightCheck.gameObject.activeSelf);
            rightReady = !rightReady;
            timeBuffer = 1000;
        }
        arrowImage.rectTransform.localPosition = Vector2.Lerp(arrowImage.rectTransform.localPosition, 
                                                            new Vector3(arrowImage.rectTransform.localPosition.x, options[currentOption].localPosition.y, arrowImage.rectTransform.localPosition.z),
                                                            arrowSpeed * Time.unscaledDeltaTime);
        if (leftReady && rightReady) 
        {
            if (timeBuffer > 0) {
                timeBuffer -= 1;
            }
            else 
            {
                SceneManager.LoadScene("StageScene");
            }
        }
    }
}
