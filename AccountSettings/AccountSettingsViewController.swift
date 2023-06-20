//
//  ViewController.swift
//  AccountSettings
//
//  Created by Harsh Tiwari on 20/06/23.
//

import UIKit

class AccountSettingsViewController: UIViewController {

    @IBOutlet weak var seperatorView: UIView!
    @IBOutlet weak var changePasswordView: UIView!
    @IBOutlet weak var deleteAccountView: UIView!
    @IBOutlet weak var changePasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.commonSetting()
        
    }
    private func commonSetting() {
        changePasswordView.layer.borderWidth = 1
        changePasswordView.layer.borderColor = UIColor.lightGray.cgColor
        changePasswordView.layer.cornerRadius = 4
        
        deleteAccountView.layer.borderWidth = 1
        deleteAccountView.layer.borderColor = UIColor.lightGray.cgColor
        deleteAccountView.layer.cornerRadius = 4
        
    }
    
    @IBAction func changePasswordButtonAction(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "ChangePasswordViewController", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "ChangePasswordViewController") as! ChangePasswordViewController
        
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func deleteAccountButtonAction(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "DeleteAccountViewController", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "DeleteAccountViewController") as! DeleteAccountViewController

        self.present(vc, animated: true, completion: nil)
    }
    
    

}

