/*using System.Collections;
using System.Collections.Generic;
using UnityEngine;
//using MongoDB.Driver;
using MongoDB.Bson;
using System;




public class MongoDBScript : MonoBehaviour
{
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string Username { get; set; }
    public string Password { get; set; }

    // Start is called before the first frame update
    void Start()
    {


        //var client = new MongoClient("mongodb://localhost:27017");
        var client = new MongoClient("mongodb+srv://<v.okpanachi@gmail.com>:<David12345.>@foodadventureclustertor.nqd40it.mongodb.net/?retryWrites=true&w=majority");
        var database = client.GetDatabase("FoodGameDB");
        //var collection = database.GetCollection<User>("FoodGameTable");
        var collection = database.GetCollection<MongoDBScript>("FoodGameTable");

        //var user = new User
        var user = new User
        {
            FirstName = "FirstName1",
            LastName = "LastName1",
            Username = "user123",
            Password = "hashedPassword" // Remember to hash the password for security
        };

        collection.InsertOne(user);

        //var filter = Builders<User>.Filter.Eq("Username", "user123");
        var filter = Builders<User>.Filter.Eq("Username", "user123");
        var foundUser = collection.Find(filter).FirstOrDefault();

        if (foundUser != null && foundUser.Password == "hashedEnteredPassword")
        {
            // Login successful
            Debug.Log("Login successful");
        }
        else
        {
            // Login failed
            Debug.Log("Login failed");
        }

    }

    // Update is called once per frame
    void Update()
    {

    }


}

public class User
{
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string Username { get; set; }
    public string Password { get; set; }
    // Add other properties as needed
}
*/