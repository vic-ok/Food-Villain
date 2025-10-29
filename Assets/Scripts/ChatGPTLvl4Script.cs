using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using OpenAI;
using UnityEngine.UI;
using UnityEngine.Events;

public class ChatGPTLvl4Script : MonoBehaviour
{
    public onResponseEvent onResponse;

    [System.Serializable]
    public class onResponseEvent : UnityEvent<string> { }

    private OpenAIApi openAI = new OpenAIApi("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", "org-P8tOUjEO3lNED9QKBVlukNRi");
    private List<ChatMessage> messages = new List<ChatMessage>();
    //public Text ChatGPTCorrectionTxt;

    public Text foodRecipe4FoodMenuSelectedChatGPTtxt;


    public async void AskChatGPT(string newText)
    {
        ChatMessage newMessage = new ChatMessage();
        newMessage.Content = newText;
        newMessage.Role = "user";

        messages.Add(newMessage);

        CreateChatCompletionRequest request = new CreateChatCompletionRequest();
        request.Messages = messages;
        request.Model = "gpt-3.5-turbo";

        var response = await openAI.CreateChatCompletion(request);

        if (response.Choices != null && response.Choices.Count > 0)
        {
            var chatResponse = response.Choices[0].Message;
            messages.Add(chatResponse);


             //if (Level3Timer.Level4Started == true)
            //{
                foodRecipe4FoodMenuSelectedChatGPTtxt.text = "ChatGPT says: " + chatResponse.Content.ToString();
                foodRecipe4FoodMenuSelectedChatGPTtxt.color = Color.white;
            //}
            

        }



    }

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
