using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class StrawberryObjective : MonoBehaviour
{
    /*[Header("Badge complete counter")]
    int badgeCount = 5;
    [SerializeField] Text badgeCountText;*/

    public PlayerScript healthBarForStrawberry;

    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            ObjectivesCompete.GameIsStopped = true;
            ObjectivesCompete.occurence.GetObjectivesDone(true, false, false, false, false, false);
            //Debug.Log("Player touched ");
            healthBarForStrawberry.playerGainMoreHealth(15);

            /*badgeCount--;
            badgeCountText.text = "Well done: " + badgeCount;*/

            Destroy(gameObject, 2f);
        }
    }
}
