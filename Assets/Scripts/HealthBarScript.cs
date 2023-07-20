using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HealthBarScript : MonoBehaviour
{
    public Slider healthBarSlider;
    public void GiveFullHealthToPlayer(float health)
    {
        healthBarSlider.maxValue = health;
        healthBarSlider.value = health;

    }

    public void SetHealth(float health)
    {
        healthBarSlider.value = health;
    }

}
