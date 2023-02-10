using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class camMovement : MonoBehaviour
{
    public Transform player1;
    public Transform player2;
    public float leftxLimit = 18;
    public float rightxLimit = -18;

    public float smoothing = 5f;

    private Vector3 offset;

    void Start()
    {
        offset = transform.position - (player1.position + player2.position) / 2;
    }

    void LateUpdate()
    {
        Vector3 targetCamPos = (player1.position + player2.position) / 2 + offset;

        targetCamPos.x = Mathf.Min(targetCamPos.x, leftxLimit);

        targetCamPos.x = Mathf.Max(targetCamPos.x, rightxLimit);

        transform.position = Vector3.Lerp(transform.position, targetCamPos, smoothing * Time.deltaTime);
    }
}
