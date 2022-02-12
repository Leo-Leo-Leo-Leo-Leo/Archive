using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class GameLogic : MonoBehaviour {

    [SerializeField] float Timerf = 180f;
    [SerializeField] Text TimerText;
    [SerializeField] Text ScoreText;

    [SerializeField] Animation DoorState;

    private int Points;

    private int TreasureCounter;

    void Start()
    {

        TimerText.text = "Score: " + Math.Round(Timerf, 0);

        Points = 0;
        TreasureCounter = 0;

        SetPointsText();
    }

    void Update()
    {
        Timerf = Timerf - Time.deltaTime;

        if (Timerf < 0)
        {
            ScoreText.text = "YOU LOSE";
        }
        else
        {
            TimerText.text = "Score: " + Math.Round(Timerf, 0);
        }
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Treasure"))
        {
            other.gameObject.SetActive(false);

            Points = Points + 5;
            TreasureCounter++;
            SetPointsText();
        }

        if (other.gameObject.CompareTag("Fire"))
        {
            Points = Points - 5;

            SetPointsText();
        }

        if (other.gameObject.CompareTag("Trap"))
        {
            Points = Points - 5;

            SetPointsText();
        }
    }

    void SetPointsText()
    {
        ScoreText.text = "Points: " + Points.ToString();

        if (TreasureCounter >= 20)
        {
            ScoreText.text = "You Win!";
            DoorState.Play("DoorOpen");

            SceneManager.LoadScene("Island-3288 Scene 2");
        }
        else if (Points < 0)
        {
            ScoreText.text = "YOU LOSE";
            DoorState.Play("DoorClose");
        }
    }
}
