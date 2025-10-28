using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OrangeObjective : MonoBehaviour
{
    public PlayerScript healthBarForOrange;
    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            ObjectivesCompete.GameIsStopped = true;
            ObjectivesCompete.occurence.GetObjectivesDone(false, false, true, false, false, false);
            //Debug.Log("Player touched ");
            healthBarForOrange.playerGainMoreHealth(15);

            /*badgeCount--;
            badgeCountText.text = "Well done: " + badgeCount;*/

            Destroy(gameObject, 2f);
        }
    }
}
