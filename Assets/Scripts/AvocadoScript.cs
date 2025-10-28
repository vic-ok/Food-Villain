using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AvocadoScript : MonoBehaviour
{
    public PlayerScript healthBarForAvocado;

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            ObjectivesCompete.GameIsStopped = true;
            ObjectivesCompete.occurence.GetObjectivesDone(false, false, false, false, true, false);
            //Debug.Log("Player touched ");
            healthBarForAvocado.playerGainMoreHealth(15);

            /*badgeCount--;
            badgeCountText.text = "Well done: " + badgeCount;*/

            Destroy(gameObject, 2f);
        }
    }
}
