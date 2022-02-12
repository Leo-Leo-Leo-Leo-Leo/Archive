using System;
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rotate : MonoBehaviour {

    [SerializeField] float x = 25f;
    [SerializeField] float y = 50f;
    [SerializeField] float z = 75f;

	void Update () {
        transform.Rotate( new Vector3(x,y,z) * Time.deltaTime );
	}
}
