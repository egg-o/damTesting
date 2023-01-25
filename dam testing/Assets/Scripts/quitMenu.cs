using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;


public class quitMenu : MonoBehaviour
{
    public Image arrowImage;
    public RectTransform[] options;
    public int currentOption = 0;
    public float arrowSpeed = 2.5f;

    // Start is called before the first frame update
    void Start()
    {
        arrowImage.gameObject.SetActive(true);
        arrowImage.rectTransform.localPosition = new Vector2(-164, -10);

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
                    // yes
                    Application.Quit();
                    break;
                case 1:
                    // no
                    SceneManager.LoadScene("startScene");
                    break;
                default:
                    break;
            }
        }   
        arrowImage.rectTransform.localPosition = Vector2.Lerp(arrowImage.rectTransform.localPosition, 
                                                    new Vector3(arrowImage.rectTransform.localPosition.x, options[currentOption].localPosition.y - 30, arrowImage.rectTransform.localPosition.z),
                                                    arrowSpeed * Time.unscaledDeltaTime);
        
    }
}
