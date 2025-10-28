using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class EnemyBulletScript : MonoBehaviour
{
    private GameObject player;
    private Rigidbody2D rb;
    //private Rigidbody rb;
    public float force;

    public float giveDamege = 5f;
    RaycastHit hitInfo;
    //public PlayerScript playerBody;
    //public Transform playerBody;



    /*[Header("Player Health")]
    public float playerHealth = 120f;
    public float presentHealth;

    public int playerHealthInitalHealt2Int = 120;

    public Text playerHealthScoreText;
    public int convertCurrentPlayerHealth2Int;*/

    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
        //rb = GetComponent<Rigidbody>();
        player = GameObject.FindGameObjectWithTag("Player");

        Vector3 direction = player.transform.position - transform.position;
        rb.velocity = new Vector2(direction.x, direction.y).normalized * force;

        float rot = Mathf.Atan2(-direction.y, -direction.x) * Mathf.Rad2Deg;
        transform.rotation = Quaternion.Euler(0, 0, rot+90);
    }

    private void OnTriggerEnter(Collider other)
    {
        
        PlayerScript playerBody = hitInfo.transform.GetComponent<PlayerScript>();
        if (other.gameObject.tag == "Player")
        {
            playerBody.playerHitDamageAsync(giveDamege);

            //ObjectivesCompete.GameIsStopped = true;
            //ObjectivesCompete.occurence.GetObjectivesDone(true, false, false, false, false, false);
            //Debug.Log("Player touched ");

            /*badgeCount--;
            badgeCountText.text = "Well done: " + badgeCount;*/

            //Destroy(gameObject, 2f);
        }
    }
}
