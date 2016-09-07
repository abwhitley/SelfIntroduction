//
//  MadLibViewerController.swift
//  SelfIntroduction
//
//  Created by Austins Work on 9/6/16.
//  Copyright © 2016 AustinsIronYard. All rights reserved.
//
import UIKit

class MadLibViewController: UIViewController {
    var adjetive : String?
    var verb : String?
    
    @IBOutlet var stringTextfield: UITextField!
    @IBAction func setStringButton(_ sender: AnyObject) {
        if let adjetive = stringTextfield.text, adjetive.characters.count > 0{
            self.adjetive = adjetive
        }else{
            print("Text field is empty")
        }
        print("My name is  \(self.adjetive)")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
}

}
extension MadLibViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return !(textField.text?.isEmpty ?? true) // ?? if stuff on left is nill return stuff on right...
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        setStringButton(self)
    }
}
