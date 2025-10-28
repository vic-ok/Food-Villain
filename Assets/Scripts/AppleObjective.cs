using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AppleObjective : MonoBehaviour
{
    public PlayerScript healthBarForApple;
    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            ObjectivesCompete.GameIsStopped = true;
            ObjectivesCompete.occurence.GetObjectivesDone(false, true, false, false, false, false);
            //Debug.Log("Player touched ");
            healthBarForApple.playerGainMoreHealth(15);

            /*badgeCount--;
            badgeCountText.text = "Well done: " + badgeCount;*/

            Destroy(gameObject, 2f);
        }
    }
}
