using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class FoodGroupItemScore : MonoBehaviour, IDropHandler
{
    int pointsCounter = 0;
    [SerializeField] Text pointText;
    [SerializeField] AudioSource collectionSound;

    public void OnDrop(PointerEventData eventData)
    {
        /*if (transform.childCount == 0)
        {
            Item1Script inventoryItem = eventData.pointerDrag.GetComponent<Item1Script>();
            inventoryItem.parentAfterDrag = transform;
        }*/
    }

    private void OnTriggerEnter(Collider other, PointerEventData eventData)
    {

        if (other.gameObject.CompareTag("CarbohydrateTag") && transform.childCount == 0)
        {

            Item1Script inventoryItem = eventData.pointerDrag.GetComponent<Item1Script>();
            inventoryItem.parentAfterDrag = transform;

            Destroy(other.gameObject);
            pointsCounter++;
            
            collectionSound.Play();

        }
    }
}
