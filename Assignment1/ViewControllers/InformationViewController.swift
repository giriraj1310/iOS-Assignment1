//
//  AboutUsViewController.swift
//  Assignment1
//
//  Created by Giriraj Bhagat on 2019-01-27.
//  Copyright © 2019 Giriraj Bhagat. All rights reserved.
//

import UIKit

class InformationViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet var tfName: UITextField!
    @IBOutlet var tfEmail: UITextField!
    @IBOutlet var tfPhone: UITextField!
    @IBOutlet var tfAddress: UITextField!
    
    @IBOutlet var slAge: UISlider!
    
    @IBOutlet var lblAge: UILabel!
    @IBOutlet var lbGender: UILabel!
    @IBOutlet weak var lbMonth: UILabel!
    @IBOutlet weak var lbDate: UILabel!
    @IBOutlet weak var lbYear: UILabel!
    
    @IBOutlet var dtBirth: UIDatePicker!
    
    @IBOutlet  var swGender: UISwitch!
    
    @IBAction func updateAge(sender:UISlider){
        updateLabel()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
    
    func updateLabel(){
        
        let age = slAge.value;
        let strAge = Int32(age);
        lblAge.text = String(strAge);
        
    }
    
    // when the state of the switch is changed, it will change the label to male or female accordingly
    @IBAction func stateChanged(switchState: UISwitch){
        if swGender.isOn {
            lbGender.text = "Male"
        } else {
            lbGender.text = "Female"
        }
    }
    
    
    
    @IBAction func submitDetails(sender: UIButton) {
        
        let name:String! = tfName.text;
        let email:String! = tfEmail.text;
    
        // 4 steps to get the alert box popped up
        let alert = UIAlertController(title: "Thank you", message: "Thank you for submitting the information, \(name) your email is \(email)", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // sets the maxium date to today so that the user cannot choose any future date as the birth date
        dtBirth.maximumDate = Date();
        if swGender.isOn {
            lbGender.text = "Male"
        } else {
            lbGender.text = "Female"
        }
        
        
        

      
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
