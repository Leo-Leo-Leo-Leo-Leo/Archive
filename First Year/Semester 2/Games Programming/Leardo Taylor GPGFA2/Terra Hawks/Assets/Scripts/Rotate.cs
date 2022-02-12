using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rotate : MonoBehaviour {

    // Update is called once per frame
    public int x;
    public int y;
    public int z;

    void Update () {
        transform.Rotate(new Vector3(x, y, z)*Time.deltaTime);
	}
}
