using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ItemScoreCollection : MonoBehaviour
{
    int points = 0;
    [SerializeField] Text pointText;
    [SerializeField] AudioSource collectionSound;

    private void OnTriggerEnter(Collider other)
    {
  
        if (other.gameObject.CompareTag("CoinFoodTag"))
        {
            Destroy(other.gameObject);
            /*pointsCounter++;
            badgeCountText.text = "Points: " + pointsCounter;
            collectionSound.Play();*/
            }
    }

}
