using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.UI;
using UnityEngine.InputSystem;
using System.Threading.Tasks;
using System;
using System.Linq;

public class FoodRecipe : MonoBehaviour
{
    private Camera _mainCamera;

    public ChatGPTLvl4Script chatGPTCode;
    public GameObject chatGPTtxtArea;
    public Text AllGameScore;

    public GameObject jellofPanel;
    public GameObject moimoiPanel;
    public GameObject ebaNegusiPanel;
    public GameObject adaluPanel;

    public GameObject allIncredientPanel1;
    public GameObject allIncredientPanel2;
    public Button viewNextPanelRecipeIncredientBtn;
    public Button viewBackPanelRecipeIncredientBtn;
    public GameObject NextnBackGameObject;
    public int flag = 0;

    [SerializeField] Text textCalorieScore;
    [SerializeField] Text textChabohydrateScore;
    [SerializeField] Text textProteinScore;
    [SerializeField] Text textFatScore;
    [SerializeField] Text textPotassiumScore;

    [SerializeField] Text textAllIngredientsAddedToRecipe;
    [SerializeField] Text textAllIngredientsAddedToRecipeNew;
    [SerializeField] Text textAllScore;
    public int scores = 0;

    public InputField inputFieldCalorie;
    public InputField inputFieldFat;
    public InputField inputFieldCarbohydrate;
    public InputField inputFieldProtein;
    public InputField inputFieldSodium;


    public int intValue1 = 0;
    public int intValue2 = 0;
    public int intValue3 = 0;
    public int intValue4 = 0;
    public int intValue5 = 0;


    int calorieCounter = 0;
    int ebaCalorie = 340;
    int egusiCalorie = 200;
    int beefCalorie = 250;
    int leafCalorie = 23;
    int oilCalorie = 120;
    int pepperCalorie = 251;
    int onionsCalorie = 40;
    int saltCalorie = 0;
    int riceCalorie = 130;
    int plantainCalorie = 122;
    int curryCalorie = 100;
    int tomatoCalorie = 18;
    int bayLeaveCalorie = 6;
    int beansCalorie = 135;
    int crayfishCalorie = 82;
    int fishCalorie = 90;
    int cornCalorie = 340;
    int garlicCalorie = 6;
    int gingerCalorie = 6;
    int hotdogCalorie = 270;
    int fufuCalorie = 400;
    int pastaCalorie = 340;
    int springonionsCalorie = 40;
    int sweetpotatoCalorie = 150;
    int corrienderLeaveCalorie = 6;
    int cassavaCalorie = 400;
    int potatoCalorie = 150;

    int fatCounter = 0;
    int ebaFat = 18;
    int egusiFat = 18;
    int beefFat = 5;
    int leafFat = 1;
    int oilFat = 14;
    int pepperFat = 3;
    int onionsFat = 0;
    int saltFat = 0;
    int riceFat = 1;
    int plantainFat = 1;
    int curryFat = 10;
    int tomatoFat = 1;
    int bayLeaveFat = 1;
    int beansFat = 1; //in grams
    int crayfishFat = 1;
    int fishFat = 2;
    int cornFat = 1;
    int garlicFat = 1;
    int gingerFat = 1;
    int hotdogFat = 150;
    int fufuFat = 5;
    int pastaFat = 5;
    int springonionsFat = 0;
    int sweetpotatoFat = 20;
    int corrienderLeaveFat = 1;
    int cassavaFat = 1;
    int potatoFat = 50;

    int chabohydrateCounter = 0;
    int ebaCarbohydrate = 200;
    int egusiCarbohydrate = 100;
    int beefCarbohydrate = 0;
    int leafCarbohydrate = 4;
    int oilCarbohydrate = 0;
    int pepperCarbohydrate = 65;
    int onionsCarbohydrate = 9;
    int saltCarbohydrate = 0;
    int riceCarbohydrate = 28;
    int plantainCarbohydrate = 32;
    int curryCarbohydrate = 15;
    int tomatoCarbohydrate = 4;
    int bayLeaveCarbohydrate = 2;
    int beansCarbohydrate = 23;
    int crayfishCarbohydrate = 0;
    int fishCarbohydrate = 0;
    int cornCarbohydrate = 300;
    int garlicCarbohydrate = 2;
    int gingerCarbohydrate = 2;
    int hotdogCarbohydrate = 50;
    int fufuCarbohydrate = 370;
    int pastaCarbohydrate = 300;
    int springonionsCarbohydrate = 9;
    int sweetpotatoCarbohydrate = 80;
    int corrienderLeaveCarbohydrate = 2;
    int cassavaCarbohydrate = 370;
    int potatoCarbohydrate = 80;

    

    int proteinCounter = 0;
    int ebaProtein = 15;
    int egusiProtein = 25;
    int beefProtein = 20;
    int leafProtein = 3;
    int oilProtein = 0;
    int pepperProtein = 10;
    int onionsProtein = 1;
    int saltProtein = 0;
    int riceProtein = 3;
    int plantainProtein = 1;
    int curryProtein = 20;
    int tomatoProtein = 1;
    int bayLeaveProtein = 1;
    int beansProtein = 8;
    int crayfishProtein = 18;
    int fishProtein = 15;
    int cornProtein = 2;
    int garlicProtein = 1;
    int gingerProtein = 1;
    int hotdogProtein = 150;
    int fufuProtein = 1;
    int pastaProtein = 2;
    int springonionsProtein = 1;
    int sweetpotatoProtein = 3;
    int corrienderLeaveProtein = 1;
    int cassavaProtein = 1;
    int potatoProtein = 3;

    //Sodium measured in milligrams
    int potassiumCounter = 0;
    int ebaSodium = 120;
    int egusiSodium = 100;
    int beefSodium = 2;
    int leafSodium = 79;
    int oilSodium = 0;
    int pepperSodium = 20;
    int onionsSodium = 4;
    int saltSodium = 590; //A quarter teaspoon of salt per meal
    int riceSodium = 1;
    int plantainSodiumn = 4;
    int currySodium = 2;
    int tomatoSodium = 5;
    int bayLeaveSodium = 30;
    int beansSodium = 2;
    int crayfishSodium = 78;
    int fishSodium = 75;
    int cornSodium = 10;
    int garlicSodium = 30;
    int gingerSodium = 30;
    int hotdogSodium = 10;
    int fufuSodium = 50;
    int pastaSodium = 10;
    int springonionsSodium = 4;
    int sweetpotatoSodium = 25;
    int corrienderLeaveSodium = 30;
    int cassavaSodium = 50;
    int potatoSodium = 25;



    public Text recipeShowHiddenTxt;
    public Text calorieMsgTxt;

    public Text myText; // Reference to your Text component
    public Scrollbar scrollbar; // Reference to your Scrollbar (optional)

    //public Image ebaGarri;

    public FoodRecipeTimer timer;
    private List<string> sentences = new List<string>();

    public InputField indexInputField;
    public Text messageText1;
    public Text messageTextFoodItems;


    /*===============LIST OF EACH FOOD ITEM SCORE ADDED================*/
    private List<int> calorieList = new List<int>();
    private List<int> fatList = new List<int>();
    private List<int> carbohydrateList = new List<int>();
    private List<int> proteinList = new List<int>();
    private List<int> sodiumList = new List<int>();

    private List<int> ingredientNumberList = new List<int>();
    public int ingrdientNumbering = 0;
    public int globalIntCheckerRecipeSelected = 0;
    List<int> numList = new List<int>();

    private void Awake()
    {
        _mainCamera = Camera.main;
    }

    // Select item to display from dropdown menu
    public void dropDownMenuSelect(int val)
    {
        if (val == 0)
        {
            /*jellofPanel.SetActive(false);
            ebaNegusiPanel.SetActive(false);
            moimoiPanel.SetActive(false);
            adaluPanel.SetActive(false);*/

            allIncredientPanel1.SetActive(false);
            allIncredientPanel2.SetActive(false);
            NextnBackGameObject.SetActive(false);
            chatGPTtxtArea.SetActive(false);
            recipeShowHiddenTxt.text = "";
        }

        if (val == 1)
        {
            /*jellofPanel.SetActive(true);
            ebaNegusiPanel.SetActive(false);
            moimoiPanel.SetActive(false);
            adaluPanel.SetActive(false);*/

            allIncredientPanel1.SetActive(true);
            allIncredientPanel2.SetActive(false);
            NextnBackGameObject.SetActive(true);
            recipeShowHiddenTxt.text = "Jellof rice.";
            chatGPTtxtArea.SetActive(true);
            chatGPTCode.AskChatGPT("Please give me the food recipe for " + recipeShowHiddenTxt.text + " Please mention the name of this food when providing the recipe.");

            timer.resume();

            globalIntCheckerRecipeSelected = val;
            //checkForJellofRiceRecipe();
        }

        if (val == 2)
        {
            /*ebaNegusiPanel.SetActive(true);
            jellofPanel.SetActive(false);
            moimoiPanel.SetActive(false);
            adaluPanel.SetActive(false);*/

            allIncredientPanel1.SetActive(true);
            allIncredientPanel2.SetActive(false);
            NextnBackGameObject.SetActive(true);
            recipeShowHiddenTxt.text = "eba and egusi.";
            chatGPTtxtArea.SetActive(true);
            chatGPTCode.AskChatGPT("Please give me the food recipe for " + recipeShowHiddenTxt.text + " Please mention the name of this food when providing the recipe.");

            timer.resume();

            globalIntCheckerRecipeSelected = val;
            //checkForEbaAndEgusiRecipe();

        }

        if (val == 3)
        {
            /*moimoiPanel.SetActive(true);
            ebaNegusiPanel.SetActive(false);
            jellofPanel.SetActive(false);
            adaluPanel.SetActive(false);*/

            allIncredientPanel1.SetActive(true);
            allIncredientPanel2.SetActive(false);
            NextnBackGameObject.SetActive(true);
            recipeShowHiddenTxt.text = "moi-moi.";
            chatGPTtxtArea.SetActive(true);
            chatGPTCode.AskChatGPT("Please give me the food recipe for " + recipeShowHiddenTxt.text + " Please mention the name of this food when providing the recipe.");

            timer.resume();

            globalIntCheckerRecipeSelected = val;
            //checkForMoimoiRecipe();
        }

        if (val == 4)
        {
            /*adaluPanel.SetActive(true);
            moimoiPanel.SetActive(false);
            ebaNegusiPanel.SetActive(false);
            jellofPanel.SetActive(false);*/

            allIncredientPanel1.SetActive(true);
            allIncredientPanel2.SetActive(false);
            NextnBackGameObject.SetActive(true);
            recipeShowHiddenTxt.text = "adalu.";
            chatGPTtxtArea.SetActive(true);
            chatGPTCode.AskChatGPT("Please give me the food recipe for "+ recipeShowHiddenTxt.text + " Please mention the name of this food when providing the recipe.");

            timer.resume();

            globalIntCheckerRecipeSelected = val;
            //checkForAdaluRecipe();
        }
    }


    public void ebaCalMethod()
    {
        calorieCounter += ebaCalorie;
        textCalorieScore.text = "Calorie = " + calorieCounter;
        chabohydrateCounter += ebaCarbohydrate;
        textChabohydrateScore.text = "Glucose = " + chabohydrateCounter;
        proteinCounter += ebaProtein;
        textProteinScore.text = "Protein = " + proteinCounter;
        fatCounter += ebaFat;
        textFatScore.text = "Fat = " + fatCounter;
        potassiumCounter += ebaSodium;
        textPotassiumScore.text = "Sodium = " + potassiumCounter;

        calorieList.Add(ebaCalorie);
        fatList.Add(ebaFat);
        carbohydrateList.Add(ebaCarbohydrate);
        proteinList.Add(ebaProtein);
        sodiumList.Add(ebaSodium);

        ingrdientNumbering += 1;
        ingredientNumberList.Add(ingrdientNumbering);

        //textAllIngredientsAddedToRecipe.text = AddText("\n" + "Eba: Calorie = 340g; Fat = 18g; Carbohydrate = 200g; Protein = 15g; Sodium = 120g" );
        AddSentence("Eba: Calorie = 340g; Fat = 18g; Carbohydrate = 200g; Protein = 15g; Sodium = 120g"+ "\n" , ingrdientNumbering, ingredientNumberList);
    }
    public void egusiFlourCalMethod()
    {
        calorieCounter += egusiCalorie;
        textCalorieScore.text = "Calorie = " + calorieCounter;
        chabohydrateCounter += egusiCarbohydrate;
        textChabohydrateScore.text = "Glucose = " + chabohydrateCounter;
        proteinCounter += egusiProtein;
        textProteinScore.text = "Protein = " + proteinCounter;
        fatCounter += egusiFat;
        textFatScore.text = "Fat = " + fatCounter;
        potassiumCounter += egusiSodium;
        textPotassiumScore.text = "Sodium = " + potassiumCounter;

        calorieList.Add(egusiCalorie);
        fatList.Add(egusiFat);
        carbohydrateList.Add(egusiCarbohydrate);
        proteinList.Add(egusiProtein);
        sodiumList.Add(egusiSodium);

        ingrdientNumbering += 1;
        ingredientNumberList.Add(ingrdientNumbering);

        //textAllIngredientsAddedToRecipe.text = AddText("\n" + "Egusi flour: Calorie = 200g; Fat = 18g; Carbohydrate = 100g; Protein = 25g; Sodium = 100g" );
        AddSentence("Egusi flour: Calorie = 200g; Fat = 18g; Carbohydrate = 100g; Protein = 25g; Sodium = 100g" + "\n", ingrdientNumbering, ingredientNumberList);
    }

    public void beefiCalMethod()
    {
        calorieCounter += beefCalorie;
        textCalorieScore.text = "Calorie = " + calorieCounter;
        chabohydrateCounter += beefCarbohydrate;
        textChabohydrateScore.text = "Glucose = " + chabohydrateCounter;
        proteinCounter += beefProtein;
        textProteinScore.text = "Protein = " + proteinCounter;
        fatCounter += beefFat;
        textFatScore.text = "Fat = " + fatCounter;
        potassiumCounter += beefSodium;
        textPotassiumScore.text = "Sodium = " + potassiumCounter;

        calorieList.Add(beefCalorie);
        fatList.Add(beefFat);
        carbohydrateList.Add(beefCarbohydrate);
        proteinList.Add(beefProtein);
        sodiumList.Add(beefSodium);

        ingrdientNumbering += 1;
        ingredientNumberList.Add(ingrdientNumbering);

        //textAllIngredientsAddedToRecipe.text = AddText("\n" + "Beef: Calorie = 250g; Fat = 18g; Carbohydrate = 100g; Protein = 25g; Sodium = 100g");
        AddSentence("Beef: Calorie = 250g; Fat = 5g; Carbohydrate = 0g; Protein = 20g; Sodium = 2mg" + "\n", ingrdientNumbering, ingredientNumberList);
    }

    public void leafCalMethod()
    {
        calorieCounter += leafCalorie;
        textCalorieScore.text = "Calorie = " + calorieCounter;
        chabohydrateCounter += leafCarbohydrate;
        textChabohydrateScore.text = "Glucose = " + chabohydrateCounter;
        proteinCounter += leafProtein;
        textProteinScore.text = "Protein = " + proteinCounter;
        fatCounter += leafFat;
        textFatScore.text = "Fat = " + fatCounter;
        potassiumCounter += leafSodium;
        textPotassiumScore.text = "Sodium = " + potassiumCounter;

        calorieList.Add(leafCalorie);
        fatList.Add(leafFat);
        carbohydrateList.Add(leafCarbohydrate);
        proteinList.Add(leafProtein);
        sodiumList.Add(leafSodium);

        ingrdientNumbering += 1;
        ingredientNumberList.Add(ingrdientNumbering);

        //textAllIngredientsAddedToRecipe.text = AddText("\n" + "Leaf: Calorie = 7; Fat = 3g; Carbohydrate = 5g; Protein = 7g; Sodium = 20g");
        AddSentence("Leaf: Calorie = 23; Fat = 1g; Carbohydrate = 4g; Protein = 3g; Sodium = 79g" + "\n", ingrdientNumbering, ingredientNumberList);
    }

    public void oilCalMethod()
    {
        calorieCounter += oilCalorie;
        textCalorieScore.text = "Calorie = " + calorieCounter;
        chabohydrateCounter += oilCarbohydrate;
        textChabohydrateScore.text = "Glucose = " + chabohydrateCounter;
        proteinCounter += oilProtein;
        textProteinScore.text = "Protein = " + proteinCounter;
        fatCounter += oilFat;
        textFatScore.text = "Fat = " + fatCounter;
        potassiumCounter += oilSodium;
        textPotassiumScore.text = "Sodium = " + potassiumCounter;

        calorieList.Add(oilCalorie);
        fatList.Add(oilFat);
        carbohydrateList.Add(oilCarbohydrate);
        proteinList.Add(oilProtein);
        sodiumList.Add(oilSodium);

        ingrdientNumbering += 1;
        ingredientNumberList.Add(ingrdientNumbering);

        //textAllIngredientsAddedToRecipe.text = AddText("\n" + "Oil: Calorie = 10; Fat = 5g; Carbohydrate = 7g; Protein = 2g; Sodium = 15g");
        AddSentence("Oil per tablespoon: Calorie = 120cal; Fat = 14g; Carbohydrate = 0g; Protein = 0g; Sodium = 0mg" + "\n", ingrdientNumbering, ingredientNumberList);
    }

    public void pepperCalMethod()
    {
        calorieCounter += pepperCalorie;
        textCalorieScore.text = "Calorie = " + calorieCounter;
        chabohydrateCounter += pepperCarbohydrate;
        textChabohydrateScore.text = "Glucose = " + chabohydrateCounter;
        proteinCounter += pepperProtein;
        textProteinScore.text = "Protein = " + proteinCounter;
        fatCounter += pepperFat;
        textFatScore.text = "Fat = " + fatCounter;
        potassiumCounter += pepperSodium;
        textPotassiumScore.text = "Sodium = " + potassiumCounter;

        calorieList.Add(pepperCalorie);
        fatList.Add(pepperFat);
        carbohydrateList.Add(pepperCarbohydrate);
        proteinList.Add(pepperProtein);
        sodiumList.Add(pepperSodium);

        ingrdientNumbering += 1;
        ingredientNumberList.Add(ingrdientNumbering);

        //textAllIngredientsAddedToRecipe.text = AddText("\n" + "pepper: Calorie = 2; Fat = 2g; Carbohydrate = 3g; Protein = 0g; Sodium = 5g");
        AddSentence("pepper per 100 grams: Calorie = 251; Fat = 3g; Carbohydrate = 65g; Protein = 10g; Sodium = 20mg" + "\n", ingrdientNumbering, ingredientNumberList);
    }
    public void onionsCalMethod()
    {
        calorieCounter += onionsCalorie;
        textCalorieScore.text = "Calorie = " + calorieCounter;
        chabohydrateCounter += onionsCarbohydrate;
        textChabohydrateScore.text = "Glucose = " + chabohydrateCounter;
        proteinCounter += onionsProtein;
        textProteinScore.text = "Protein = " + proteinCounter;
        fatCounter += onionsFat;
        textFatScore.text = "Fat = " + fatCounter;
        potassiumCounter += onionsSodium;
        textPotassiumScore.text = "Sodium = " + potassiumCounter;

        calorieList.Add(onionsCalorie);
        fatList.Add(onionsFat);
        carbohydrateList.Add(onionsCarbohydrate);
        proteinList.Add(onionsProtein);
        sodiumList.Add(onionsSodium);

        ingrdientNumbering += 1;
        ingredientNumberList.Add(ingrdientNumbering);

        //textAllIngredientsAddedToRecipe.text = AddText("\n" + "Onions: Calorie = 4; Fat = 3g; Carbohydrate = 2g; Protein = 1g; Sodium = 8g");
        AddSentence("Onions: Calorie = 40; Fat = 0g; Carbohydrate = 9g; Protein = 1g; Sodium = 4mg" + "\n", ingrdientNumbering, ingredientNumberList);
    }
    public void saltCalMethod()
    {
        calorieCounter += saltCalorie;
        textCalorieScore.text = "Calorie = " + calorieCounter;
        chabohydrateCounter += saltCarbohydrate;
        textChabohydrateScore.text = "Glucose = " + chabohydrateCounter;
        proteinCounter += saltProtein;
        textProteinScore.text = "Protein = " + proteinCounter;
        fatCounter += saltFat;
        textFatScore.text = "Fat = " + fatCounter;
        potassiumCounter += saltSodium;
        textPotassiumScore.text = "Sodium = " + potassiumCounter;

        calorieList.Add(saltCalorie);
        fatList.Add(saltFat);
        carbohydrateList.Add(saltCarbohydrate);
        proteinList.Add(saltProtein);
        sodiumList.Add(saltSodium);

        ingrdientNumbering += 1;
        ingredientNumberList.Add(ingrdientNumbering);

        //textAllIngredientsAddedToRecipe.text = AddText("\n" + "Salt: Calorie = 6; Fat = 1g; Carbohydrate = 2g; Protein = 1g; Sodium = 30g");
        AddSentence("1/4 teaspoon of salt: Calorie = 0g; Fat = 0g; Carbohydrate = 0g; Protein = 0g; Sodium = 590mg" + "\n", ingrdientNumbering, ingredientNumberList);
    }

    public void riceMethod()
    {
        calorieCounter += riceCalorie;
        textCalorieScore.text = "Calorie = " + calorieCounter;
        chabohydrateCounter += riceCarbohydrate;
        textChabohydrateScore.text = "Glucose = " + chabohydrateCounter;
        proteinCounter += riceProtein;
        textProteinScore.text = "Protein = " + proteinCounter;
        fatCounter += riceFat;
        textFatScore.text = "Fat = " + fatCounter;
        potassiumCounter += riceSodium;
        textPotassiumScore.text = "Sodium = " + potassiumCounter;

        calorieList.Add(riceCalorie);
        fatList.Add(riceFat);
        carbohydrateList.Add(riceCarbohydrate);
        proteinList.Add(riceProtein);
        sodiumList.Add(riceSodium);

        ingrdientNumbering += 1;
        ingredientNumberList.Add(ingrdientNumbering);

        //textAllIngredientsAddedToRecipe.text = AddText("\n" + "Rice: Calorie = 350; Fat = 10g; Carbohydrate = 200g; Protein = 5g; Sodium = 20g");
        AddSentence("Rice: Calorie = 130; Fat = 1g; Carbohydrate = 28g; Protein = 3g; Sodium = 1mg" + "\n", ingrdientNumbering, ingredientNumberList);
    }

    public void potatoMethod()
    {
        calorieCounter += potatoCalorie;
        textCalorieScore.text = "Calorie = " + calorieCounter;
        chabohydrateCounter += potatoCarbohydrate;
        textChabohydrateScore.text = "Glucose = " + chabohydrateCounter;
        proteinCounter += potatoProtein;
        textProteinScore.text = "Protein = " + proteinCounter;
        fatCounter += potatoFat;
        textFatScore.text = "Fat = " + fatCounter;
        potassiumCounter += potatoSodium;
        textPotassiumScore.text = "Sodium = " + potassiumCounter;

        calorieList.Add(potatoCalorie);
        fatList.Add(potatoFat);
        carbohydrateList.Add(potatoCarbohydrate);
        proteinList.Add(potatoProtein);
        sodiumList.Add(potatoSodium);

        ingrdientNumbering += 1;
        ingredientNumberList.Add(ingrdientNumbering);

        //textAllIngredientsAddedToRecipe.text = AddText("\n" + "Potato: Calorie = 150; Fat = 1g; Carbohydrate = 80g; Protein = 3g; Sodium = 25g");
        AddSentence("Potato: Calorie = 150; Fat = 50g; Carbohydrate = 80g; Protein = 3g; Sodium = 25g" + "\n", ingrdientNumbering, ingredientNumberList);
    }

    public void plantainMethod()
    {
        calorieCounter += plantainCalorie;
        textCalorieScore.text = "Calorie = " + calorieCounter;
        chabohydrateCounter += plantainCarbohydrate;
        textChabohydrateScore.text = "Glucose = " + chabohydrateCounter;
        proteinCounter += plantainProtein;
        textProteinScore.text = "Protein = " + proteinCounter;
        fatCounter += plantainFat;
        textFatScore.text = "Fat = " + fatCounter;
        potassiumCounter += plantainSodiumn;
        textPotassiumScore.text = "Sodium = " + potassiumCounter;

        calorieList.Add(plantainCalorie);
        fatList.Add(plantainFat);
        carbohydrateList.Add(plantainCarbohydrate);
        proteinList.Add(plantainProtein);
        sodiumList.Add(plantainSodiumn);

        ingrdientNumbering += 1;
        ingredientNumberList.Add(ingrdientNumbering);

        //textAllIngredientsAddedToRecipe.text = AddText("\n" + "Plantain: Calorie = 120; Fat = 40g; Carbohydrate = 10g; Protein = 100g; Sodium = 30g");
        AddSentence("Plantain: Calorie = 122; Fat = 1g; Carbohydrate = 32g; Protein = 1g; Sodium = 4mg" + "\n", ingrdientNumbering, ingredientNumberList);
    }

    public void curryMethod()
    {
        calorieCounter += curryCalorie;
        textCalorieScore.text = "Calorie = " + calorieCounter;
        chabohydrateCounter += curryCarbohydrate;
        textChabohydrateScore.text = "Glucose = " + chabohydrateCounter;
        proteinCounter += curryProtein;
        textProteinScore.text = "Protein = " + proteinCounter;
        fatCounter += curryFat;
        textFatScore.text = "Fat = " + fatCounter;
        potassiumCounter += currySodium;
        textPotassiumScore.text = "Sodium = " + potassiumCounter;

        calorieList.Add(curryCalorie);
        fatList.Add(curryFat);
        carbohydrateList.Add(curryCarbohydrate);
        proteinList.Add(curryProtein);
        sodiumList.Add(currySodium);

        ingrdientNumbering += 1;
        ingredientNumberList.Add(ingrdientNumbering);

        //textAllIngredientsAddedToRecipe.text = AddText("\n" + "Curry: Calorie = 5; Fat = 1g; Carbohydrate = 2g; Protein = 1g; Sodium = 30g");
        AddSentence("Curry: Calorie = 100; Fat = 10g; Carbohydrate = 15g; Protein = 20g; Sodium = 2g" + "\n", ingrdientNumbering, ingredientNumberList);
    }

    public void tomatoMethod()
    {
        calorieCounter += tomatoCalorie;
        textCalorieScore.text = "Calorie = " + calorieCounter;
        chabohydrateCounter += tomatoCarbohydrate;
        textChabohydrateScore.text = "Glucose = " + chabohydrateCounter;
        proteinCounter += tomatoProtein;
        textProteinScore.text = "Protein = " + proteinCounter;
        fatCounter += tomatoFat;
        textFatScore.text = "Fat = " + fatCounter;
        potassiumCounter += tomatoSodium;
        textPotassiumScore.text = "Sodium = " + potassiumCounter;

        calorieList.Add(tomatoCalorie);
        fatList.Add(tomatoFat);
        carbohydrateList.Add(tomatoCarbohydrate);
        proteinList.Add(tomatoProtein);
        sodiumList.Add(tomatoSodium);

        ingrdientNumbering += 1;
        ingredientNumberList.Add(ingrdientNumbering);

        //textAllIngredientsAddedToRecipe.text = AddText("\n" + "Tomato: Calorie = 98; Fat = 20g; Carbohydrate = 2g; Protein = 50g; Sodium = 10g");
        AddSentence("Tomato: Calorie = 18; Fat = 1g; Carbohydrate = 4g; Protein = 1g; Sodium = 5g" + "\n", ingrdientNumbering, ingredientNumberList);
    }

    public void bayLeaveMethod()
    {
        calorieCounter += bayLeaveCalorie;
        textCalorieScore.text = "Calorie = " + calorieCounter;
        chabohydrateCounter += bayLeaveCarbohydrate;
        textChabohydrateScore.text = "Glucose = " + chabohydrateCounter;
        proteinCounter += bayLeaveProtein;
        textProteinScore.text = "Protein = " + proteinCounter;
        fatCounter += bayLeaveFat;
        textFatScore.text = "Fat = " + fatCounter;
        potassiumCounter += bayLeaveSodium;
        textPotassiumScore.text = "Sodium = " + potassiumCounter;

        calorieList.Add(bayLeaveCalorie);
        fatList.Add(bayLeaveFat);
        carbohydrateList.Add(bayLeaveCarbohydrate);
        proteinList.Add(bayLeaveProtein);
        sodiumList.Add(bayLeaveSodium);

        ingrdientNumbering += 1;
        ingredientNumberList.Add(ingrdientNumbering);

        //textAllIngredientsAddedToRecipe.text = AddText("\n" + "Bayleave: Calorie = 6; Fat = 1g; Carbohydrate = 2g; Protein = 1g; Sodium = 30g");
        AddSentence("Bayleave: Calorie = 6; Fat = 1g; Carbohydrate = 2g; Protein = 1g; Sodium = 30g" + "\n", ingrdientNumbering, ingredientNumberList);
    }

    public void beansMethod()
    {
        calorieCounter += beansCalorie;
        textCalorieScore.text = "Calorie = " + calorieCounter;
        chabohydrateCounter += beansCarbohydrate;
        textChabohydrateScore.text = "Glucose = " + chabohydrateCounter;
        proteinCounter += beansProtein;
        textProteinScore.text = "Protein = " + proteinCounter;
        fatCounter += beansFat;
        textFatScore.text = "Fat = " + fatCounter;
        potassiumCounter += beansSodium;
        textPotassiumScore.text = "Sodium = " + potassiumCounter;

        calorieList.Add(beansCalorie);
        fatList.Add(beansFat);
        carbohydrateList.Add(beansCarbohydrate);
        proteinList.Add(beansProtein);
        sodiumList.Add(beansSodium);

        ingrdientNumbering += 1;
        ingredientNumberList.Add(ingrdientNumbering);

        //textAllIngredientsAddedToRecipe.text = AddText("\n" + "Beans: Calorie = 120; Fat = 90g; Carbohydrate = 10g; Protein = 200g; Sodium = 15g");
        AddSentence("Beans: Calorie = 135cal; Fat = 1g; Carbohydrate = 23g; Protein = 8g; Sodium = 2mg" + "\n", ingrdientNumbering, ingredientNumberList);
    }

    public void crayfishMethod()
    {
        calorieCounter += crayfishCalorie;
        textCalorieScore.text = "Calorie = " + calorieCounter;
        chabohydrateCounter += crayfishCarbohydrate;
        textChabohydrateScore.text = "Glucose = " + chabohydrateCounter;
        proteinCounter += crayfishProtein;
        textProteinScore.text = "Protein = " + proteinCounter;
        fatCounter += crayfishFat;
        textFatScore.text = "Fat = " + fatCounter;
        potassiumCounter += crayfishSodium;
        textPotassiumScore.text = "Sodium = " + potassiumCounter;

        calorieList.Add(crayfishCalorie);
        fatList.Add(crayfishFat);
        carbohydrateList.Add(ebaCarbohydrate);
        proteinList.Add(ebaProtein);
        sodiumList.Add(ebaSodium);

        ingrdientNumbering += 1;
        ingredientNumberList.Add(ingrdientNumbering);

        //textAllIngredientsAddedToRecipe.text = AddText("\n" + "Crayfish: Calorie = 50; Fat = 25g; Carbohydrate = 2g; Protein = 170g; Sodium = 5g");
        AddSentence("Crayfish: Calorie = 82; Fat = 1g; Carbohydrate = 0g; Protein = 18g; Sodium = 78mg" + "\n", ingrdientNumbering, ingredientNumberList);
    }

    public void fishMethod()
    {
        calorieCounter += fishCalorie;
        textCalorieScore.text = "Calorie = " + calorieCounter;
        chabohydrateCounter += fishCarbohydrate;
        textChabohydrateScore.text = "Glucose = " + chabohydrateCounter;
        proteinCounter += fishProtein;
        textProteinScore.text = "Protein = " + proteinCounter;
        fatCounter += fishFat;
        textFatScore.text = "Fat = " + fatCounter;
        potassiumCounter += fishSodium;
        textPotassiumScore.text = "Sodium = " + potassiumCounter;

        calorieList.Add(ebaCalorie);
        fatList.Add(ebaFat);
        carbohydrateList.Add(crayfishCarbohydrate);
        proteinList.Add(crayfishProtein);
        sodiumList.Add(crayfishSodium);

        ingrdientNumbering += 1;
        ingredientNumberList.Add(ingrdientNumbering);

        //textAllIngredientsAddedToRecipe.text = AddText("\n" + "Fish: Calorie = 210; Fat = 90g; Carbohydrate = 2g; Protein = 300g; Sodium = 25g");
        AddSentence("Fish: Calorie = 90; Fat = 2g; Carbohydrate = 0g; Protein = 15g; Sodium = 75mg" + "\n", ingrdientNumbering, ingredientNumberList);
    }

    public void cornMethod()
    {
        calorieCounter += cornCalorie;
        textCalorieScore.text = "Calorie = " + calorieCounter;
        chabohydrateCounter += cornCarbohydrate;
        textChabohydrateScore.text = "Glucose = " + chabohydrateCounter;
        proteinCounter += cornProtein;
        textProteinScore.text = "Protein = " + proteinCounter;
        fatCounter += cornFat;
        textFatScore.text = "Fat = " + fatCounter;
        potassiumCounter += cornSodium;
        textPotassiumScore.text = "Sodium = " + potassiumCounter;

        calorieList.Add(cornCalorie);
        fatList.Add(cornFat);
        carbohydrateList.Add(cornCarbohydrate);
        proteinList.Add(cornProtein);
        sodiumList.Add(cornSodium);

        ingrdientNumbering += 1;
        ingredientNumberList.Add(ingrdientNumbering);

        //textAllIngredientsAddedToRecipe.text = AddText("\n" + "Corn: Calorie = 340; Fat = 1g; Carbohydrate = 300g; Protein = 2g; Sodium = 10g");
        AddSentence("Corn: Calorie = 340; Fat = 1g; Carbohydrate = 300g; Protein = 2g; Sodium = 10g" + "\n", ingrdientNumbering, ingredientNumberList);
    }

    public void garlicMethod()
    {
        calorieCounter += garlicCalorie;
        textCalorieScore.text = "Calorie = " + calorieCounter;
        chabohydrateCounter += garlicCarbohydrate;
        textChabohydrateScore.text = "Glucose = " + chabohydrateCounter;
        proteinCounter += garlicProtein;
        textProteinScore.text = "Protein = " + proteinCounter;
        fatCounter += garlicFat;
        textFatScore.text = "Fat = " + fatCounter;
        potassiumCounter += garlicSodium;
        textPotassiumScore.text = "Sodium = " + potassiumCounter;

        calorieList.Add(garlicCalorie);
        fatList.Add(ebaFat);
        carbohydrateList.Add(garlicCarbohydrate);
        proteinList.Add(garlicProtein);
        sodiumList.Add(garlicSodium);

        ingrdientNumbering += 1;
        ingredientNumberList.Add(ingrdientNumbering);

        //textAllIngredientsAddedToRecipe.text = AddText("\n" + "Garlic: Calorie = 6; Fat = 1g; Carbohydrate = 2g; Protein = 1g; Sodium = 30g");
        AddSentence("Garlic: Calorie = 6; Fat = 1g; Carbohydrate = 2g; Protein = 1g; Sodium = 30g" + "\n", ingrdientNumbering, ingredientNumberList);
    }

    public void gingerMethod()
    {
        calorieCounter += gingerCalorie;
        textCalorieScore.text = "Calorie = " + calorieCounter;
        chabohydrateCounter += gingerCarbohydrate;
        textChabohydrateScore.text = "Glucose = " + chabohydrateCounter;
        proteinCounter += gingerProtein;
        textProteinScore.text = "Protein = " + proteinCounter;
        fatCounter += gingerFat;
        textFatScore.text = "Fat = " + fatCounter;
        potassiumCounter += gingerSodium;
        textPotassiumScore.text = "Sodium = " + potassiumCounter;

        calorieList.Add(gingerCalorie);
        fatList.Add(gingerFat);
        carbohydrateList.Add(gingerCarbohydrate);
        proteinList.Add(gingerProtein);
        sodiumList.Add(gingerSodium);

        ingrdientNumbering += 1;
        ingredientNumberList.Add(ingrdientNumbering);

        //textAllIngredientsAddedToRecipe.text = AddText("\n" + "Ginger: Calorie = 6; Fat = 1g; Carbohydrate = 2g; Protein = 1g; Sodium = 30g");
        AddSentence("Ginger: Calorie = 6; Fat = 1g; Carbohydrate = 2g; Protein = 1g; Sodium = 30g" + "\n", ingrdientNumbering, ingredientNumberList);
    }

    public void hotdogMethod()
    {
        calorieCounter += hotdogCalorie;
        textCalorieScore.text = "Calorie = " + calorieCounter;
        chabohydrateCounter += hotdogCarbohydrate;
        textChabohydrateScore.text = "Glucose = " + chabohydrateCounter;
        proteinCounter += hotdogProtein;
        textProteinScore.text = "Protein = " + proteinCounter;
        fatCounter += hotdogFat;
        textFatScore.text = "Fat = " + fatCounter;
        potassiumCounter += hotdogSodium;
        textPotassiumScore.text = "Sodium = " + potassiumCounter;

        calorieList.Add(hotdogCalorie);
        fatList.Add(hotdogFat);
        carbohydrateList.Add(hotdogCarbohydrate);
        proteinList.Add(hotdogProtein);
        sodiumList.Add(hotdogSodium);

        ingrdientNumbering += 1;
        ingredientNumberList.Add(ingrdientNumbering);

        //textAllIngredientsAddedToRecipe.text = AddText("\n" + "Hotdog: Calorie = 270; Fat = 30g; Carbohydrate = 50g; Protein = 150g; Sodium = 10g");
        AddSentence("Hotdog: Calorie = 270; Fat = 150g; Carbohydrate = 50g; Protein = 150g; Sodium = 10g" + "\n", ingrdientNumbering, ingredientNumberList);
    }

    public void fufuMethod()
    {
        calorieCounter += fufuCalorie;
        textCalorieScore.text = "Calorie = " + calorieCounter;
        chabohydrateCounter += fufuCarbohydrate;
        textChabohydrateScore.text = "Glucose = " + chabohydrateCounter;
        proteinCounter += fufuProtein;
        textProteinScore.text = "Protein = " + proteinCounter;
        fatCounter += fufuFat;
        textFatScore.text = "Fat = " + fatCounter;
        potassiumCounter += fufuSodium;
        textPotassiumScore.text = "Sodium = " + potassiumCounter;

        calorieList.Add(fufuCalorie);
        fatList.Add(fufuFat);
        carbohydrateList.Add(fufuCarbohydrate);
        proteinList.Add(fufuProtein);
        sodiumList.Add(fufuSodium);

        ingrdientNumbering += 1;
        ingredientNumberList.Add(ingrdientNumbering);

        //textAllIngredientsAddedToRecipe.text = AddText("\n" + "Fufu: Calorie = 400; Fat = 2g; Carbohydrate = 370g; Protein = 1g; Sodium = 50g");
        AddSentence("Fufu: Calorie = 400; Fat = 5g; Carbohydrate = 370g; Protein = 1g; Sodium = 50g" + "\n", ingrdientNumbering, ingredientNumberList);
    }

    public void pastaMethod()
    {
        calorieCounter += pastaCalorie;
        textCalorieScore.text = "Calorie = " + calorieCounter;
        chabohydrateCounter += pastaCarbohydrate;
        textChabohydrateScore.text = "Glucose = " + chabohydrateCounter;
        proteinCounter += pastaProtein;
        textProteinScore.text = "Protein = " + proteinCounter;
        fatCounter += pastaFat;
        textFatScore.text = "Fat = " + fatCounter;
        potassiumCounter += pastaSodium;
        textPotassiumScore.text = "Sodium = " + potassiumCounter;

        calorieList.Add(pastaCalorie);
        fatList.Add(pastaFat);
        carbohydrateList.Add(pastaCarbohydrate);
        proteinList.Add(pastaProtein);
        sodiumList.Add(pastaSodium);

        ingrdientNumbering += 1;
        ingredientNumberList.Add(ingrdientNumbering);

        //textAllIngredientsAddedToRecipe.text = AddText("\n" + "Pasta: Calorie = 340; Fat = 1g; Carbohydrate = 300g; Protein = 2g; Sodium = 10g");
        AddSentence("Pasta: Calorie = 340; Fat = 5g; Carbohydrate = 300g; Protein = 2g; Sodium = 10g" + "\n", ingrdientNumbering, ingredientNumberList);
    }

    public void springonionsMethod()
    {
        calorieCounter += springonionsCalorie;
        textCalorieScore.text = "Calorie = " + calorieCounter;
        chabohydrateCounter += springonionsCarbohydrate;
        textChabohydrateScore.text = "Glucose = " + chabohydrateCounter;
        proteinCounter += springonionsProtein;
        textProteinScore.text = "Protein = " + proteinCounter;
        fatCounter += springonionsFat;
        textFatScore.text = "Fat = " + fatCounter;
        potassiumCounter += springonionsSodium;
        textPotassiumScore.text = "Sodium = " + potassiumCounter;

        calorieList.Add(springonionsCalorie);
        fatList.Add(springonionsFat);
        carbohydrateList.Add(springonionsCarbohydrate);
        proteinList.Add(springonionsProtein);
        sodiumList.Add(springonionsSodium);

        ingrdientNumbering += 1;
        ingredientNumberList.Add(ingrdientNumbering);

        //textAllIngredientsAddedToRecipe.text = AddText("\n" + "Spring onions: Calorie = 4; Fat = 3g; Carbohydrate = 2g; Protein = 1g; Sodium = 8g");
        AddSentence("Onions: Calorie = 40; Fat = 0g; Carbohydrate = 9g; Protein = 1g; Sodium = 4mg" + "\n", ingrdientNumbering, ingredientNumberList);
    }

    public void sweetpotatoMethod()
    {
        calorieCounter += sweetpotatoCalorie;
        textCalorieScore.text = "Calorie = " + calorieCounter;
        chabohydrateCounter += sweetpotatoCarbohydrate;
        textChabohydrateScore.text = "Glucose = " + chabohydrateCounter;
        proteinCounter += sweetpotatoProtein;
        textProteinScore.text = "Protein = " + proteinCounter;
        fatCounter += sweetpotatoFat;
        textFatScore.text = "Fat = " + fatCounter;
        potassiumCounter += sweetpotatoSodium;
        textPotassiumScore.text = "Sodium = " + potassiumCounter;

        calorieList.Add(sweetpotatoCalorie);
        fatList.Add(sweetpotatoFat);
        carbohydrateList.Add(sweetpotatoCarbohydrate);
        proteinList.Add(sweetpotatoProtein);
        sodiumList.Add(sweetpotatoSodium);

        ingrdientNumbering += 1;
        ingredientNumberList.Add(ingrdientNumbering);

        //textAllIngredientsAddedToRecipe.text = AddText("\n" + "Sweet-potato: Calorie = 150; Fat = 1g; Carbohydrate = 80g; Protein = 3g; Sodium = 25g");
        AddSentence("Sweet-potato: Calorie = 150; Fat = 20g; Carbohydrate = 80g; Protein = 3g; Sodium = 25g" + "\n", ingrdientNumbering, ingredientNumberList);
    }

    public void corrienderLeaveMethod()
    {
        calorieCounter += corrienderLeaveCalorie;
        textCalorieScore.text = "Calorie = " + calorieCounter;
        chabohydrateCounter += corrienderLeaveCarbohydrate;
        textChabohydrateScore.text = "Glucose = " + chabohydrateCounter;
        proteinCounter += corrienderLeaveProtein;
        textProteinScore.text = "Protein = " + proteinCounter;
        fatCounter += corrienderLeaveFat;
        textFatScore.text = "Fat = " + fatCounter;
        potassiumCounter += corrienderLeaveSodium;
        textPotassiumScore.text = "Sodium = " + potassiumCounter;

        calorieList.Add(corrienderLeaveCalorie);
        fatList.Add(corrienderLeaveFat);
        carbohydrateList.Add(corrienderLeaveCarbohydrate);
        proteinList.Add(corrienderLeaveProtein);
        sodiumList.Add(corrienderLeaveSodium);

        ingrdientNumbering += 1;
        ingredientNumberList.Add(ingrdientNumbering);

        //textAllIngredientsAddedToRecipe.text = AddText("\n" + "Corriender leave: Calorie = 6; Fat = 1g; Carbohydrate = 2g; Protein = 1g; Sodium = 30g");
        AddSentence("Corriender leave: Calorie = 6; Fat = 1g; Carbohydrate = 2g; Protein = 1g; Sodium = 30g" + "\n", ingrdientNumbering, ingredientNumberList);
    }

    public void cassavaMethod()
    {
        calorieCounter += cassavaCalorie;
        textCalorieScore.text = "Calorie = " + calorieCounter;
        chabohydrateCounter += cassavaCarbohydrate;
        textChabohydrateScore.text = "Glucose = " + chabohydrateCounter;
        proteinCounter += cassavaProtein;
        textProteinScore.text = "Protein = " + proteinCounter;
        fatCounter += cassavaFat;
        textFatScore.text = "Fat = " + fatCounter;
        potassiumCounter += cassavaSodium;
        textPotassiumScore.text = "Sodium = " + potassiumCounter;

        calorieList.Add(cassavaCalorie);
        fatList.Add(cassavaFat);
        carbohydrateList.Add(cassavaCarbohydrate);
        proteinList.Add(cassavaProtein);
        sodiumList.Add(cassavaSodium);

        ingrdientNumbering += 1;
        ingredientNumberList.Add(ingrdientNumbering);

        //textAllIngredientsAddedToRecipe.text = AddText("\n" + "Cassava: Calorie = 400; Fat = 2g; Carbohydrate = 370g; Protein = 1g; Sodium = 50g");
        AddSentence("Cassava: Calorie = 400; Fat = 1g; Carbohydrate = 370g; Protein = 1g; Sodium = 50g" + "\n", ingrdientNumbering, ingredientNumberList);
    }

    public void AddSentence(string sentence, int numLabel, List<int> list)
    {
        //sentenceList.Add(sentence);
        
        sentences.Add(sentence);
        AddSentNumbering();

        int updateIndex = sentences.IndexOf(sentence);

        //UpdateSentenceText(updateIndex, list[updateIndex]);
        UpdateSentenceText();
    }

    public void AddSentNumbering()
    {
        for (int x=0; x< sentences.Count; x++)
        {
            if (numList.Contains(x+1))
            {
                continue;
            }
            else
            {
                numList.Add(x + 1);
                
                sentences[x] = (x + 1) + " " + sentences[x];
            }
            
        }
        
    }

    //public void UpdateSentenceText(int updateIndex, int numIng)
    public void UpdateSentenceText()
    {
        //sentenceText.text = string.Join("\n", sentences);
        textAllIngredientsAddedToRecipe.text = string.Join("\n" + "", sentences);
    }

    /*public void ItemNumberToDelet()
    {
        if (delItemNumInput.text == "")
        {
            messageText1.color = Color.red;
            messageText1.text = "The field is empty. Input a value.";
            delayTimeNew();

        }
        else
        {
            int itemNum = delItemNumInput.text
            DeleteSentence2(delItemNumInput.text);
        }
    }*/

    public void OnDeleteButtonClick()
    {
        string indexString = indexInputField.text;
        if (!string.IsNullOrEmpty(indexString))
        {
            if (int.TryParse(indexString, out int index))
            {
                DeleteSentence(index-1);
            }
            else
            {
                //Debug.LogWarning("Invalid index. Please enter a valid integer.");
                messageText1.color = Color.red;
                messageText1.text = "Invalid index. Please enter a valid integer.";
                delayTimeNew();
            }
        }
        else
        {
            //Debug.LogWarning("Index input is empty. Please enter an index.");
            messageText1.color = Color.red;
            messageText1.text = "Index input is empty. Please enter an index.";
            delayTimeNew();
        }
    }

    public async void delayTimeNew()
    {
        await Task.Delay((int)(4f * 1000));
        messageText1.text = "";

    }

    public async void delayTimeNew2()
    {
        await Task.Delay((int)(8f * 1000));
        messageTextFoodItems.text = "";

    }

    /*public void DeleteRecentSentence()
    {
        if (sentences.Count > 0)
        {
            sentences.RemoveAt(sentences.Count - 1);
            UpdateSentenceText();
        }
    }*/

    public void DeleteSentence(int index)
    {
        if (index >= 0 && index < sentences.Count)
        {
            sentences.RemoveAt(index);
            numList.RemoveAt(index);

            int numIngred = ingredientNumberList[index] - 1;
            ingredientNumberList.RemoveAt(index);

            calorieCounter -= calorieList[index];
            calorieList.RemoveAt(index);
            textCalorieScore.text = "Calorie = " + calorieCounter;

            fatCounter -= fatList[index];
            fatList.RemoveAt(index);
            textFatScore.text = "Fat = " + fatCounter;

            chabohydrateCounter -= carbohydrateList[index];
            carbohydrateList.RemoveAt(index);
            textChabohydrateScore.text = "Glucose = " + chabohydrateCounter;

            proteinCounter -= proteinList[index];
            proteinList.RemoveAt(index);
            textProteinScore.text = "Protein = " + proteinCounter;

            potassiumCounter -= sodiumList[index];
            sodiumList.RemoveAt(index);
            textPotassiumScore.text = "Sodium = " + potassiumCounter;

            //UpdateSentenceText(index, numIngred);
            UpdateNumbering(index);
            UpdateSentenceText();
        }
        else
        {
            //Debug.LogWarning("Invalid index. Please enter a valid integer.");
            messageText1.color = Color.red;
            messageText1.text = "Invalid index. Please enter a valid integer.";
            delayTimeNew();
        }
    }

    public void UpdateNumbering(int indexVal)
    {
        //List<string> inputSentence = new List<string>();
        
        for (int y = indexVal; y < sentences.Count; y++)
        {
            string[] words = sentences[y].Split(' ');
            // Remove the first word
            if (words.Length > 1)
            {
                string[] remainingWords = words.Skip(1).ToArray();
                
                // Join the remaining words back into a sentence
                string updatedSentence = string.Join(" ", remainingWords);

                numList[y] = numList[y] - 1;
                sentences[y] = numList[y] + " " + updatedSentence;
            }
            
            
        }
    }


    public void nextBtn()
    {
        if(flag == 0)
        {
            allIncredientPanel1.SetActive(false);
            allIncredientPanel2.SetActive(true);

            flag = 1;
        }
    }

    public void backBtn()
    {
        if (flag == 1)
        {
            allIncredientPanel1.SetActive(true);
            allIncredientPanel2.SetActive(false);

            flag = 0;
        }
    }

    /*public void OnClick(InputAction.CallbackContext context)
    {
        if (!context.started) return;

        var rayHit = Physics2D.GetRayIntersection(_mainCamera.ScreenPointToRay(Mouse.current.position.ReadValue()));
        if (!rayHit.collider) return;

        Debug.Log(rayHit.collider.gameObject.name.ToString());
        
    }*/

    

    public string AddText(string newText)
    {
        // Get the current text from the Text component
        string currentText = myText.text;

        // Concatenate the new text with the existing text, adding a space for separation
        string updatedText = currentText + "\n " + newText;

        // Update the Text component with the new text
        myText.text = updatedText;


        //scrollRect.content = textRect;
        // If using a Scrollbar, set its value to 1 to scroll to the bottom
        //scrollbar.e
        if (scrollbar != null)
        {
            scrollbar.value = 1;
        }

        return updatedText;
    }


    public void checkForJellofRiceRecipe()
    {
        
        List<string> jellofSentences = new List<string>();
        jellofSentences.Add("Rice: Calorie = 130; Fat = 1g; Carbohydrate = 28g; Protein = 3g; Sodium = 1mg" + "\n");
        jellofSentences.Add("Plantain: Calorie = 122; Fat = 1g; Carbohydrate = 32g; Protein = 1g; Sodium = 4mg" + "\n");
        jellofSentences.Add("Onions: Calorie = 40; Fat = 0g; Carbohydrate = 9g; Protein = 1g; Sodium = 4mg" + "\n");
        jellofSentences.Add("Bayleave: Calorie = 23; Fat = 1g; Carbohydrate = 4g; Protein = 3g; Sodium = 79g" + "\n");
        jellofSentences.Add("1/4 teaspoon of salt: Calorie = 0g; Fat = 0g; Carbohydrate = 0g; Protein = 0g; Sodium = 590mg" + "\n");
        jellofSentences.Add("Oil per tablespoon: Calorie = 120cal; Fat = 14g; Carbohydrate = 0g; Protein = 0g; Sodium = 0mg" + "\n");
        jellofSentences.Add("Curry: Calorie = 100; Fat = 10g; Carbohydrate = 15g; Protein = 20g; Sodium = 2g" + "\n");
        jellofSentences.Add("Tomato: Calorie = 18; Fat = 1g; Carbohydrate = 4g; Protein = 1g; Sodium = 5g" + "\n");

        int countCheckjellof = 0;
        for (int i = 0; i < jellofSentences.Count; ++i)
        {
            if (sentences.Contains(jellofSentences[i]))
            {
                countCheckjellof += 1;
                continue;
            }

        }

        if (countCheckjellof != jellofSentences.Count)
        {
            textAllIngredientsAddedToRecipeNew.color = Color.red;
            textAllIngredientsAddedToRecipeNew.text = "Not all jellof ingredients is contained in your selections";
        }
        else
        {
            textAllIngredientsAddedToRecipeNew.color = Color.green;
            textAllIngredientsAddedToRecipeNew.text = "Well done! 10 points earned!";
            scores += 10;
            textAllScore.text = "Point: " + scores;
        }
    }

    public void checkForEbaAndEgusiRecipe()
    {
        
        List<string> ebaGusiSentences = new List<string>();
        ebaGusiSentences.Add("Eba: Calorie = 340g; Fat = 18g; Carbohydrate = 200g; Protein = 15g; Sodium = 120g" + "\n");
        ebaGusiSentences.Add("Egusi flour: Calorie = 200g; Fat = 18g; Carbohydrate = 100g; Protein = 25g; Sodium = 100g" + "\n");
        ebaGusiSentences.Add("pepper per 100 grams: Calorie = 251; Fat = 3g; Carbohydrate = 65g; Protein = 10g; Sodium = 20mg" + "\n");
        ebaGusiSentences.Add("Beef: Calorie = 250g; Fat = 5g; Carbohydrate = 0g; Protein = 20g; Sodium = 2mg" + "\n");
        ebaGusiSentences.Add("Onions: Calorie = 40; Fat = 0g; Carbohydrate = 9g; Protein = 1g; Sodium = 4mg" + "\n");
        ebaGusiSentences.Add("1/4 teaspoon of salt: Calorie = 0g; Fat = 0g; Carbohydrate = 0g; Protein = 0g; Sodium = 590mg" + "\n");
        ebaGusiSentences.Add("Leaf: Calorie = 23; Fat = 1g; Carbohydrate = 4g; Protein = 3g; Sodium = 79g" + "\n");

        int countCheckEbaEgusi = 0;
        for (int i = 0; i < ebaGusiSentences.Count; ++i)
        {
            if (sentences.Contains(ebaGusiSentences[i]))
            {
                countCheckEbaEgusi += 1;
                continue;
            }
            
        }

        if(countCheckEbaEgusi != ebaGusiSentences.Count)
        {
            textAllIngredientsAddedToRecipeNew.color = Color.red;
            textAllIngredientsAddedToRecipeNew.text = "Not all Eba and egusi ingredients is contained in your selections";
        }
        else
        {
            textAllIngredientsAddedToRecipeNew.color = Color.green;
            textAllIngredientsAddedToRecipeNew.text = "Well done! 10 points earned!";
            scores += 10;
            textAllScore.text = "Point: " + scores;
        }


    }

    public void checkForMoimoiRecipe()
    {
        List<string> moimoiSentences = new List<string>();
        moimoiSentences.Add("Beans: Calorie = 135; Fat = 1g; Carbohydrate = 23g; Protein = 8g; Sodium = 2mg" + "\n");
        moimoiSentences.Add("Oil per tablespoon: Calorie = 120cal; Fat = 14g; Carbohydrate = 0g; Protein = 0g; Sodium = 0mg" + "\n");
        moimoiSentences.Add("pepper per 100 grams: Calorie = 251; Fat = 3g; Carbohydrate = 65g; Protein = 10g; Sodium = 20mg" + "\n");
        moimoiSentences.Add("Crayfish: Calorie = 82; Fat = 1g; Carbohydrate = 0g; Protein = 18g; Sodium = 78mg" + "\n");

        int countCheckmoi = 0;
        for (int i = 0; i < moimoiSentences.Count; ++i)
        {
            if (sentences.Contains(moimoiSentences[i]))
            {
                countCheckmoi += 1;
                continue;
            }
            
        }

        if (countCheckmoi != moimoiSentences.Count)
        {
            textAllIngredientsAddedToRecipeNew.color = Color.red;
            textAllIngredientsAddedToRecipeNew.text = "Not all moimoi ingredients is contained in your selections";
        }
        else
        {
            textAllIngredientsAddedToRecipeNew.color = Color.green;
            textAllIngredientsAddedToRecipeNew.text = "Well done! 10 points earned!";
            scores += 10;
            textAllScore.text = "Point: " + scores;
        }

    }

    public void checkForAdaluRecipe()
    {
        List<string> adaluSentences = new List<string>();
        adaluSentences.Add("Beans: Calorie = 135; Fat = 1g; Carbohydrate = 23g; Protein = 8g; Sodium = 2mg" + "\n");
        adaluSentences.Add("Oil per tablespoon: Calorie = 120cal; Fat = 14g; Carbohydrate = 0g; Protein = 0g; Sodium = 0mg" + "\n");
        adaluSentences.Add("pepper per 100 grams: Calorie = 251; Fat = 3g; Carbohydrate = 65g; Protein = 10g; Sodium = 20mg" + "\n");
        adaluSentences.Add("Crayfish: Calorie = 82; Fat = 1g; Carbohydrate = 0g; Protein = 18g; Sodium = 78mg" + "\n");
        adaluSentences.Add("Corn: Calorie = 340; Fat = 1g; Carbohydrate = 300g; Protein = 2g; Sodium = 10g" + "\n");
        adaluSentences.Add("Fish: Calorie = 90; Fat = 2g; Carbohydrate = 0g; Protein = 15g; Sodium = 75mg" + "\n");

        int countCheckadalu = 0;
        for (int i = 0; i < adaluSentences.Count; ++i)
        {
            if (sentences.Contains(adaluSentences[i]))
            {
                countCheckadalu += 1;
                continue;
            }


        }

        if (countCheckadalu != adaluSentences.Count)
        {
            textAllIngredientsAddedToRecipeNew.color = Color.red;
            textAllIngredientsAddedToRecipeNew.text = "Not all moimoi ingredients is contained in your selections";
        }
        else
        {
            textAllIngredientsAddedToRecipeNew.color = Color.green;
            textAllIngredientsAddedToRecipeNew.text = "Well done! 10 points earned!";
            scores += 10;
            textAllScore.text = "Point: " + scores;
        }
    }

    public void submitAndCheckFoodItemRecipe()
    {
        if(globalIntCheckerRecipeSelected == 1)
        {
            checkForJellofRiceRecipe();
        }

        if (globalIntCheckerRecipeSelected == 2)
        {
            checkForEbaAndEgusiRecipe();
        }

        if (globalIntCheckerRecipeSelected == 3)
        {
            checkForMoimoiRecipe();
        }

        if (globalIntCheckerRecipeSelected == 4)
        {
            checkForAdaluRecipe();
        }
    }

    private void Update()
    {

        viewNextPanelRecipeIncredientBtn.onClick.AddListener(nextBtn);
        viewBackPanelRecipeIncredientBtn.onClick.AddListener(backBtn);

        // Get the text from the input field
        string inputText1 = inputFieldCalorie.text;
        string inputText2 = inputFieldFat.text;
        string inputText3 = inputFieldCarbohydrate.text;
        string inputText4 = inputFieldProtein.text;
        string inputText5 = inputFieldSodium.text;

        // Using int.Parse (throws exception if parsing fails)
        try
        {
            intValue1 = int.Parse(inputText1);
            intValue2 = int.Parse(inputText2);
            intValue3 = int.Parse(inputText3);
            intValue4 = int.Parse(inputText4);
            intValue5 = int.Parse(inputText5);

            //Debug.Log("Converted Integer: " + intValue1);
        }
        catch (System.Exception e)
        {
            Debug.LogError("Conversion failed. Error: " + e.Message);
        }



        if (calorieCounter > intValue1)
        {
            calorieMsgTxt.text = "You have exceeded the normal set goal level for calorie: " + intValue1;
            delayTimeNew2();
        }

        if (chabohydrateCounter > intValue3)
        {
            calorieMsgTxt.text = "You have exceeded your set goal for carbohydrate: "+ intValue3;
            delayTimeNew2();
        }

        if (proteinCounter > intValue4)
        {
            calorieMsgTxt.text = "You have exceeded your set goal for protein: "+ intValue4;
            delayTimeNew2();
        }

        if (fatCounter > intValue2)
        {
            calorieMsgTxt.text = "You have exceeded your set goal for fat: "+ intValue2;
            delayTimeNew2();
        }

        if (potassiumCounter > intValue5)
        {
            calorieMsgTxt.text = "You have exceeded your set goal for sodium: "+ intValue5;
            delayTimeNew2();
        }
    }

    private void Start()
    {
        int allGameScr = PassingVariableBtwScenesController.totalScore;
        AllGameScore.text = "Points: " + allGameScr;
    }

}
