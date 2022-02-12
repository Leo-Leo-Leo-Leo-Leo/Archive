using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GameLogicScene2 : MonoBehaviour {

    [SerializeField] float Timerf = 180f;
    [SerializeField] Text TimerText;
    [SerializeField] Text ScoreText;
    [SerializeField] Text BatteryPower;

    [SerializeField] Animation DoorState;

    private int Points;
    private int Power;

    private int TreasureCounter;
    private int BatteryCounter;

    void Start()
    {
        TimerText.text = "Score: " + Math.Round(Timerf, 0);

        Points = 0;
        Power = 0;
        TreasureCounter = 0;
        BatteryCounter = 0;

        SetPointsText();
        SetPowerText();
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

        if (other.gameObject.CompareTag("Battery"))
        {
            other.gameObject.SetActive(false);

            Power = Power + 25;
            BatteryCounter++;

            SetPowerText();
        }

        if (other.gameObject.CompareTag("Fire"))
        {
            Points = Points - 5;
            Power = Power - 5;

            SetPointsText();
        }

        if (other.gameObject.CompareTag("Trap"))
        {
            Points = Points - 5;
            Power = Power - 5;

            SetPointsText();
            SetPowerText();
        }
    }

    void SetPowerText()
    {
        BatteryPower.text = "Power: " + Power.ToString() + "%" ;

        if (Power >= 80)
        {
            BatteryPower.text = "You WIN!"; 
            DoorState.Play("DoorOpen");
        }
        else if (Power < 80 && BatteryCounter >= 4)
        {
            ScoreText.text = "YOU LOSE";
            DoorState.Play("DoorClose");

            BatteryPower.text = "";
        }
    }

    void SetPointsText()
    {
        ScoreText.text = "Points: " + Points.ToString();

        if (TreasureCounter >= 25)
        {
            ScoreText.text = "Collect the remaining Batteries!";
        }
        else if (Points < 0)
        {
            ScoreText.text = "YOU LOSE";
            DoorState.Play("DoorClose");

            BatteryPower.text = "";
        }
    }
}
