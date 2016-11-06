//
//  ViewController.swift
//  More Controls
//
//  Created by Richard Mallion on 30/09/2015.
//  Copyright © 2015 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func showAlert(_ sender: AnyObject) {
        
        let myAlert = UIAlertController(title: "My Alert", message: "Some Message goes here!", preferredStyle:UIAlertControllerStyle.alert)
        let ok = UIAlertAction(title: "OK", style:.default, handler: {(alert: UIAlertAction!) in
            print("OK button was pressed")
        })
        myAlert.addAction(ok)

        present(myAlert, animated: true, completion: nil)

    }
    
    
    @IBAction func promptForPassword(_ sender: AnyObject) {
        
        let myAlert = UIAlertController(title: "Login", message: "Please enter your name and password", preferredStyle:.alert)
        let ok = UIAlertAction(title: "OK", style:.default, handler: {(alert: UIAlertAction!) in
            let name = myAlert.textFields![0]
            let password = myAlert.textFields![1]
            
            print("The user's name is \(name.text) and their password is \(password.text)")

        })
        let cancel = UIAlertAction(title: "Cancel", style:.cancel, handler: {(alert: UIAlertAction!) in
            print("Cancel button was tapped")
        })
        myAlert.addAction(ok)
        myAlert.addAction(cancel)
        
        myAlert.addTextField(configurationHandler: {(textField: UITextField!) -> Void in
            textField.placeholder = "Username"
        })
        myAlert.addTextField(configurationHandler: {(textField: UITextField!) -> Void in
            textField.placeholder = "Password"
            textField.isSecureTextEntry = true
        })

        present(myAlert, animated: true, completion: nil)

    }
    
    
    @IBAction func showActionSheet(_ sender: AnyObject) {
        let actionSheet = UIAlertController(title: "My Action Sheet", message: "Please make a selection", preferredStyle:.actionSheet)
        
        let option1 = UIAlertAction(title: "Option 1", style:.destructive, handler: {
            (alert: UIAlertAction!) in
            print("Option 1 was tapped")
            //actionSheet.dismissViewControllerAnimated(true, completion: nil)
        })
        
        let option2 = UIAlertAction(title: "Option 2", style:.destructive, handler: {
            (alert: UIAlertAction!) in
            print("Option 2  was tapped")
            //actionSheet.dismissViewControllerAnimated(true, completion: nil)
        })
        
        let option3 = UIAlertAction(title: "Option 3", style:.destructive, handler: {
            (alert: UIAlertAction!) in
            print("Option 3  was tapped")
            //actionSheet.dismissViewControllerAnimated(true, completion: nil)
        })
        
        actionSheet.addAction(option1)
        actionSheet.addAction(option2)
        actionSheet.addAction(option3)
        
        present(actionSheet, animated: true, completion: nil)
    }
    
    @IBAction func stepperValueChanged(_ sender: AnyObject) {
        let myStepper = sender as! UIStepper
        let textToDisplay = "Stepper value is: \(Int(myStepper.value))"
        stepperValueLabel.text = textToDisplay
    }
    @IBOutlet weak var stepperValueLabel: UILabel!
    @IBAction func toggleBackground(_ sender: AnyObject) {
        if sender.selectedSegmentIndex == 0 {
            view.backgroundColor = UIColor.groupTableViewBackground
        }
        else {
            view.backgroundColor = UIColor.black
        }

    }
    
    
    @IBOutlet weak var switchLabel: UILabel!
    @IBAction func switchChanged(_ sender: AnyObject) {
        let mySwitch = sender as! UISwitch
        if mySwitch.isOn {
            switchLabel.text = "Switch is On"
        }
        else {
            switchLabel.text = "Switch is Off"
        }

    }
    @IBOutlet weak var sliderLabel: UILabel!
    @IBAction func sliderChanged(_ sender: AnyObject) {
        let mySlider = sender as! UISlider
        let textToDisplay = "Slider value is: \(Int(mySlider.value))"
        sliderLabel.text = textToDisplay
    }
    @IBOutlet weak var nameField: UITextField!
    
    
    @IBOutlet weak var mobileField: UITextField!
    
    
    @IBAction func textFieldDoneEditing(_ sender: AnyObject) {
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches , with:event)
    }
    
    
    
}

