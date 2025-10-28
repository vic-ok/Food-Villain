using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TooltipSystem2 : MonoBehaviour
{
    private static TooltipSystem2 current;
    public Tooltip2 tooltip2;

    public void Awake()
    {
        current = this;
    }

    public static void Show(string content, string header = "")
    {
        current.tooltip2.SetText(content, header);
        current.tooltip2.gameObject.SetActive(true);
    }

    public static void Hide()
    {
        current.tooltip2.gameObject.SetActive(false);

    }
}
