/*using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using MongoDB.Driver;
using MongoDB.Bson;
using System;


//var client = new MongoClient("mongodb://localhost:27017");
var client = new MongoClient("mongodb+srv://<v.okpanachi@gmail.com>:<David12345.>@foodadventureclustertor.nqd40it.mongodb.net/?retryWrites=true&w=majority");
var database = client.GetDatabase("FoodGameDB");
var collection = database.GetCollection<MongoDBCode>("FoodGameTable");

var user = new MongoDBCode
{
    FirstName = "FirstName1",
    LastName = "LastName1",
    Username = "user123",
    Password = "hashedPassword" // Remember to hash the password for security
};

collection.InsertOne(user);

var filter = Builders<MongoDBCode>.Filter.Eq("Username", "user123");
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


public class MongoDBCode
{
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string Username { get; set; }
    public string Password { get; set; }


}*/