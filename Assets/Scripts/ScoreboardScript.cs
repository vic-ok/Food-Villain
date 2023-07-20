using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ScoreboardScript : MonoBehaviour
{

    public GameObject scoreboardTbl;

    public void onclickExit()
    {
        scoreboardTbl.SetActive(false);
    }

}
