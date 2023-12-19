//
//  ViewController.swift
//  TrangHoang_IOS102prework
//
//  Created by Helen Hoang on 12/18/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var numberofPetsSwitch: UISwitch!
    @IBOutlet weak var numberofPetsStepper: UIStepper!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberofPetsLabel.text = "\(Int(sender.value))"
    }
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var numberofPetsLabel: UILabel!
    
    @IBAction func introduceSelfDidTapChange(_ sender: UIButton) {
        let year = yearSegmentControl.titleForSegment(at: yearSegmentControl.selectedSegmentIndex)
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I attend \(schoolNameTextField.text!).I am currently in my \(year!) year and I own \(numberofPetsLabel.text!) dogs.It is \(numberofPetsSwitch.isOn) that I want more pets."
        print(introduction)
        
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)

        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)

        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)

        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

