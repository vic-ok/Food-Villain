using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MangoObjective : MonoBehaviour
{
    public PlayerScript healthBarForMango;
    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            ObjectivesCompete.GameIsStopped = true;
            ObjectivesCompete.occurence.GetObjectivesDone(false, false, false, true, false, false);
            //Debug.Log("Player touched ");
            healthBarForMango.playerGainMoreHealth(15);

            /*badgeCount--;
            badgeCountText.text = "Well done: " + badgeCount;*/

            Destroy(gameObject, 2f);
        }
    }
}
