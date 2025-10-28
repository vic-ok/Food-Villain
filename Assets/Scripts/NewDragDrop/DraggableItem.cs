using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class DraggableItem : MonoBehaviour, IBeginDragHandler, IDragHandler, IEndDragHandler
{
    [Header("UI")]
    public Image image;
    
    [HideInInspector] public Transform parentAfterDrag;
    private Vector3 initialPosition;

    private const float distanceThreshold = 100f;
    public string targetTag;

    public static int foodPointsCounter = 0;
    [SerializeField] Text pointText;
    [SerializeField] AudioSource collectionSound;
    public GameObject foodGrpPanel;
    //public QuizzManager allScoreboard;
    public GameObject FoodGOPanel;
    public Text level3ScoreText;
    public GameObject showLvl3LableTxtInGameObj1;
    public GameObject showLvl3LableTxtInGameObj2;
    public GameObject hideFoodGroupUnveilBtn;


    private void Start()
    {
        initialPosition = transform.position;
        FoodGOPanel.SetActive(false);
    }

    public void OnBeginDrag(PointerEventData eventData)
    {
        image.raycastTarget = false;
        parentAfterDrag = transform.parent;
        transform.SetParent(transform.root);
        transform.SetAsLastSibling();
        image.raycastTarget = false;
    }

    public void OnDrag(PointerEventData eventData)
    {
        transform.position = Input.mousePosition;
    }

    public void OnEndDrag(PointerEventData eventData)
    {
        image.raycastTarget = true;

        GameObject[] targets = GameObject.FindGameObjectsWithTag(targetTag);
        bool foundTarget = false;
        Transform targetTransform = null;

        foreach (GameObject target in targets)
        {
            float distance = Vector3.Distance(transform.position, target.transform.position);
            if (distance <= distanceThreshold)
            {
                for (var i = target.transform.childCount - 1; i >= 0; i--)
                {
                    
                    Object.Destroy(target.transform.GetChild(i).gameObject);
                }
                foundTarget = true;
                targetTransform = target.transform;
                break;
            }
        }

        if (!foundTarget)
        {
            StartCoroutine(ReturnToInitialPosition());
        }
        else
        {
            transform.SetParent(targetTransform);
            transform.position = targetTransform.position;

            foodPointsCounter++;
            pointText.text = foodPointsCounter + "";
            collectionSound.Play();
        }

        image.raycastTarget = true;
    }


    private IEnumerator ReturnToInitialPosition()
    {
        float elapsedTime = 0f;
        float duration = 0.5f; // Adjust this value to control the duration of the return animation
        Vector3 startPosition = transform.position;

        while (elapsedTime < duration)
        {
            transform.position = Vector3.Lerp(startPosition, initialPosition, elapsedTime / duration);
            elapsedTime += Time.deltaTime;
            yield return null;
        }

        transform.position = initialPosition;
        transform.SetParent(parentAfterDrag);
    }


    public void FoodGrpGameOver()
    {
        foodGrpPanel.SetActive(false);
        FoodGOPanel.SetActive(true);
        hideFoodGroupUnveilBtn.SetActive(false);
        //allScoreboard.onclickViewScoreboard();
        showLvl3LableTxtInGameObj1.SetActive(true);
        showLvl3LableTxtInGameObj2.SetActive(true);
        level3ScoreText.text = foodPointsCounter + "" ;

        /*if (foodPointsCounter < 15)
        {
            chkScore2UnlockGoldTxtGameObj.SetActive(true);
            await Task.Delay((int)(4f * 1000));
            chkScore2UnlockGoldTxtGameObj.SetActive(false);
        }
        else
        {
            goldBadgeCongratsBtnText.SetActive(true);
            await Task.Delay((int)(4f * 1000));
            goldBadgeCongratsBtnText.SetActive(false);

            showGoldBadge();
            unveilFoodGrpBtnGameObj.SetActive(true);

        }*/
    }

    /*public int addPointToFoodPoint(int pointsC)
    {
        //throw new NotImplementedException();
        pointsC = foodPointsCounter + qMgr.score;
        pointText.text = "Points: " + pointsC;
        return pointsC;
    }*/

}