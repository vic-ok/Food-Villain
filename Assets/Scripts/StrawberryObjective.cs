using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class StrawberryObjective : MonoBehaviour
{
    /*[Header("Badge complete counter")]
    int badgeCount = 5;
    [SerializeField] Text badgeCountText;*/

    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            ObjectivesCompete.GameIsStopped = true;
            ObjectivesCompete.occurence.GetObjectivesDone(true, false, false, false, false, false);
            //Debug.Log("Player touched ");

            /*badgeCount--;
            badgeCountText.text = "Well done: " + badgeCount;*/

            Destroy(gameObject, 2f);
        }
    }
}
