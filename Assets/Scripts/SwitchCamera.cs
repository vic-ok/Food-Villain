using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwitchCamera : MonoBehaviour
{
    // Start is called before the first frame update
    [Header("Camera to assign")]
    public GameObject AimCam;
    public GameObject AimCanvas;
    public GameObject ThirdPersonCam;
    public GameObject ThirdPersonCanvas;

    [Header("Camera animator")]
    public Animator animator;

    private void Update()
    {
        {
            //if (Input.GetButton("Fire2")) Note: I am using KeyCode.O for AIMING while shooting
            if (Input.GetKey(KeyCode.O) && Input.GetKey(KeyCode.UpArrow))
                    
            {
                animator.SetBool("Idle", false);
                animator.SetBool("IdleAim", true);
                animator.SetBool("RiffleWalk", true);
                animator.SetBool("Walk", true);

                ThirdPersonCam.SetActive(false);
                ThirdPersonCanvas.SetActive(false);
                AimCam.SetActive(true);
                AimCanvas.SetActive(true);

            }
            else if (Input.GetKey(KeyCode.O))
            {
                animator.SetBool("Idle", false);
                animator.SetBool("IdleAim", true);
                animator.SetBool("RiffleWalk", false);
                animator.SetBool("Walk", false);

                ThirdPersonCam.SetActive(false);
                ThirdPersonCanvas.SetActive(false);
                AimCam.SetActive(true);
                AimCanvas.SetActive(true);
            }
            else
            {
                animator.SetBool("Idle", true);
                animator.SetBool("IdleAim", false);
                animator.SetBool("RiffleWalk", false);

                ThirdPersonCam.SetActive(true);
                ThirdPersonCanvas.SetActive(true);
                AimCam.SetActive(false);
                AimCanvas.SetActive(false);
            }
        }
    }
}
