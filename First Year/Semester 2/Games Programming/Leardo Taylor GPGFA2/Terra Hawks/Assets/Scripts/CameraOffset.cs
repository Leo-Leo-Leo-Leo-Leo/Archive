using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraOffset : MonoBehaviour {


    [SerializeField] GameObject Player;
    [SerializeField] Vector3 Offset;

    void Start () {
        Offset = transform.position - Player.transform.position;
    }

    void LateUpdate()
    {
        transform.position = Player.transform.position + Offset;
    }
}
