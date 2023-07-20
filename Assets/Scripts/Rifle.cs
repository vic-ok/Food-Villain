using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Rifle : MonoBehaviour
{
    [Header("Rifle shooting")]
    public Camera cam;
    public float giveDamgeOf = 10f;
    public float shootingRange = 100f;
    public float fireCharge = 15f;
    private float nextTimeToShoot = 0f;
    public Animator animator;

    [Header("Increase score after zombie is killed")]
    int pointsCounter = 0;
    [SerializeField] Text pointText;
    [SerializeField] AudioSource collectionSound;
    private float timeDelay = 0f;

    public Text level1ScoreText;

    [Header("Rifle effects")]
    public ParticleSystem muzzleSpark;
    public GameObject woodEffect;
    public GameObject goreEffect;

    private void Update()
    {
        //if (Input.GetButtonDown("Fire1"))
        if (Input.GetKey(KeyCode.P) && Time.time >= nextTimeToShoot)
        {
            animator.SetBool("Fire", true);
            animator.SetBool("Idle", false);
            nextTimeToShoot = Time.time + 1f / fireCharge;
            shoot();
        }else if (Input.GetButton("Fire1") && Input.GetKey(KeyCode.W) || Input.GetKey(KeyCode.UpArrow))
        {
            animator.SetBool("Idle", false);
            animator.SetBool("FireWalk", true);
        }else if (Input.GetButton("Fire2") && Input.GetButton("Fire1"))
        {
            animator.SetBool("Idle", false);
            animator.SetBool("IdleAim", true);
            animator.SetBool("FireWalk", true);
            animator.SetBool("Walk", true);
            animator.SetBool("Reloading", false);
        }
        else
        {
            animator.SetBool("Fire", false);
            animator.SetBool("Idle", true);
            animator.SetBool("FireWalk", false);
        }
    }

    private void shoot()
    {
        muzzleSpark.Play();
        RaycastHit hitInfo;

        if (Physics.Raycast(cam.transform.position, cam.transform.forward, out hitInfo, shootingRange))
        {
            Debug.Log(hitInfo.transform.name);

            ObjectToHit objectToHit = hitInfo.transform.GetComponent<ObjectToHit>();
            Zombie1 zombie1 = hitInfo.transform.GetComponent<Zombie1>();
            Zombie2 zombie2 = hitInfo.transform.GetComponent<Zombie2>();

            if (objectToHit != null)
            {
                objectToHit.ObjectHitDamage(giveDamgeOf);
                GameObject woodGo = Instantiate(woodEffect, hitInfo.point, Quaternion.LookRotation(hitInfo.normal));
                Destroy(woodGo, 1f);
            }else if (zombie1 != null)
            {
                zombie1.zombieHitDamage(giveDamgeOf);
                GameObject goreEffectGo = Instantiate(goreEffect, hitInfo.point, Quaternion.LookRotation(hitInfo.normal));
                Destroy(goreEffectGo, 1f);

                //increase score
                //timeDelay += Time.time + 1f;
                if (zombie1.isZombieDead == true)
                {
                    pointsCounter++;
                    pointText.text = "Points: " + pointsCounter;
                    collectionSound.Play();
                    level1ScoreText.text = pointsCounter + "";
                }

            }
            else if (zombie2 != null) 
            {
                zombie2.zombieHitDamage(giveDamgeOf);
                GameObject goreEffectGo = Instantiate(goreEffect, hitInfo.point, Quaternion.LookRotation(hitInfo.normal));
                Destroy(goreEffectGo, 1f);
            }
        }
    }

    /*IEnumerator Reload()
    {
       
        animator.SetBool("Reloading", true);
        yield return new WaitForSeconds(relodingTimes);
    }*/
}
