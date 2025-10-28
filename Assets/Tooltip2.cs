using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class Tooltip2 : MonoBehaviour
{
    public TextMeshProUGUI headerField;
    public TextMeshProUGUI contentField;
    public LayoutElement layoutElement;
    public int characterWrapLimit;

    public void SetText(string content, string header = "")
    {
        if (string.IsNullOrEmpty(header))
        {
            headerField.gameObject.SetActive(false);
        }
        else
        {
            headerField.gameObject.SetActive(true);
            headerField.text = header;
        }

        contentField.text = content;
    }

    // Update is called once per frame
    void Update()
    {

        //if (Application.isEditor)
        //{
            int headerLength = headerField.text.Length;
            int contentLength = contentField.text.Length;

            layoutElement.enabled = (headerLength > characterWrapLimit || contentLength > characterWrapLimit) ? true : false;
        //}

        Vector2 position = Input.mousePosition;
        transform.position = position;

    }
}
