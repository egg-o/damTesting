using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class cameraMovementTesting : MonoBehaviour
{
    public float speed = 10f;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        float horizontal = 0f;
        if (Input.GetKey(KeyCode.N))
        {
            horizontal = -1f;
        }
        else if (Input.GetKey(KeyCode.M))
        {
            horizontal = 1f;
        }
        transform.position += new Vector3(horizontal * speed * Time.deltaTime, 0, 0);
    }
}
