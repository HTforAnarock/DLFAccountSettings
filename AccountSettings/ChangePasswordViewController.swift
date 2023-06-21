//
//  ChangePasswordViewController.swift
//  AccountSettings
//
//  Created by Harsh Tiwari on 20/06/23.
//

import UIKit

class ChangePasswordViewController: UIViewController {

    @IBOutlet weak var seperatorView: UIView!
    @IBOutlet weak var bottomButtonsView: UIView!
    
    @IBOutlet weak var currentPasswordTextfield: UITextField!
    @IBOutlet weak var newPasswordTextfield: UITextField!
    @IBOutlet weak var confirmPasswordTextfield: UITextField!
    
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.commonSettings()

        // Do any additional setup after loading the view.
    }
    private func commonSettings() {
        bottomButtonsView.layer.shadowRadius = 4
        bottomButtonsView.layer.shadowColor = UIColor.gray.cgColor
        bottomButtonsView.layer.shadowOpacity = 0.2
    }
    
    
}

//extension ChangePasswordViewController: UITextFieldDelegate {
//    func textFieldDidEndEditing(_ textField: UITextField) {
//        let userInputCurrentPassword = currentPasswordTextfield.text
//        let userInputNewPassword = newPasswordTextfield.text
//        let userInputConfirmPassword = confirmPasswordTextfield.text
//    }
//}
