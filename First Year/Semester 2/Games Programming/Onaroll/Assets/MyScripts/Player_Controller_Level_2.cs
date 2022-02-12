using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;


public class Player_Controller_Level_2 : MonoBehaviour {

    [SerializeField] float speed = 12f;
    [SerializeField] float size = 0.2f;
    [SerializeField] Text Score;
    [SerializeField] Text Health;

    private int count = 0;
    private int score = 0;
    private int health = 100;
    private Rigidbody rb;

    void Start()
    {
        Score.text = "Score: 0";
        Health.text = "Health: 100";

        rb = GetComponent<Rigidbody>();
        transform.localScale = new Vector3(size, size, size);
    }

    void Update()
    {
        SetPlayerHealth();
    }

    void FixedUpdate()
    {
        float moveHorizontal = Input.GetAxis("Horizontal");
        float moveVertical = Input.GetAxis("Vertical");

        Vector3 movement = new Vector3(moveHorizontal, 0.0f, moveVertical);

        rb.AddForce(movement * speed);
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Food"))
        {
            other.gameObject.SetActive(false);

            count++;

            size = size + 0.05f;
            SetPlayerSize();

            health = health + 15;
            SetPlayerHealth();

            speed = speed - 1f;
            CheckPlayerSpeed();

            score = score + 15;
            SetPlayerScore();
        }

        if (other.gameObject.CompareTag("Trap"))
        {
            other.gameObject.SetActive(false);

            size = size - 0.05f;
            SetPlayerSize();

            health = health - 25;
            SetPlayerHealth();

            speed = speed + 2f;
            CheckPlayerSpeed();

            score = score - 5;
            SetPlayerScore();
        }
    }

    void CheckPlayerSpeed()
    {
        if (speed > 15f)
        {
            speed = 15f;
        }
        else if (speed < 7f)
        {
            speed = 7f;
        }
    }

    void SetPlayerSize()
    {
        if (size >= 0.2f && size <= 0.8f)
        {
            transform.localScale = new Vector3(size, size, size);
        }
        else if (size > 0.8f)
        {
            size = 0.8f;
            transform.localScale = new Vector3(size, size, size);
        }
        else if (size < 0.2f)
        {
            size = 0.2f;
            transform.localScale = new Vector3(size, size, size);
        }
    }

    void SetPlayerHealth()
    {
        if (health > 100)
        {
            health = 100;
            Health.text = "Heath: " + health.ToString();
        }
        else if (health < 0)
        {
            Health.text = "You are Dead!";
            SceneManager.LoadScene("Main Menu");
            speed = 0f;
        }
        else if (health > 0 && count > 11)
        {
            Health.text = "You Win";
            SceneManager.LoadScene("Main Menu");
        }
        else
        {
            Health.text = "Heath: " + health.ToString();
        }
    }

    void SetPlayerScore()
    {
        if (score < 0)
        {
            score = 0;
        }
        else
        {
            Score.text = "Score: " + score.ToString();
        }
    }
}
