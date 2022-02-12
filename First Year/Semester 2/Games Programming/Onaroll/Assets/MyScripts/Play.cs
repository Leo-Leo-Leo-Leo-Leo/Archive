using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Play : MonoBehaviour {

	// Use this for initialization
	public void _Play ()
    {
        SceneManager.LoadScene("Level 1");
	}
}
