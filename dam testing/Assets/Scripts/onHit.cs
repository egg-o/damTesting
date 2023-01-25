using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(AudioSource))]
public class onHit : MonoBehaviour
{

    AudioSource audioData;
    
    void Start()
    {
        audioData = GetComponent<AudioSource>();
    }

    //Detect collisions between the GameObjects with Colliders attached
    void OnCollisionEnter(Collision collision)
    {
        Debug.Log("collision processed");
        //Check for a match with the specified name on any GameObject that collides with your GameObject
        if (collision.gameObject.name == "MyGameObjectName")
        {
            //If the GameObject's name matches the one you suggest, output this message in the console
            Debug.Log("Do something here");
        }

        //Check for a match with the specific tag on any GameObject that collides with your GameObject
        if (collision.gameObject.tag == "Player")
        {
            //If the GameObject has the same tag as specified, output this message in the console
            audioData.Play(0);
            Debug.Log("Do something else here");
            
        }
    }
}
