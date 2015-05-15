//
//  LoginScreen.swift
//  Test1
//
//  Created by E on 5/15/15.
//  Copyright (c) 2015 E. All rights reserved.
//

import UIKit

class LoginScreen: UIViewController {
    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Pressed(sender:AnyObject)
    {
     if(username.text.isEmpty == true || password.text.isEmpty == true )
     {
        var alert = UIAlertView(title: "Error", message: "Check for fields", delegate: nil, cancelButtonTitle: "Okayyy")
        alert.show()
     }
        else
     {
        var VC = storyboard?.instantiateViewControllerWithIdentifier("MainView") as MainView
        VC.UserName = username.text
        self.presentViewController(VC, animated: true, completion: { () -> Void in
            self.password.text = ""
        })
        
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
