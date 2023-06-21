//
//  DeleteAccountViewController.swift
//  AccountSettings
//
//  Created by Harsh Tiwari on 20/06/23.
//

import UIKit

class DeleteAccountViewController: UIViewController {

    @IBOutlet weak var confirmButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var bottomButtonsView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.commonSettings()
    }
    private func commonSettings() {
        bottomButtonsView.layer.shadowOpacity = 0.2
        bottomButtonsView.layer.shadowRadius = 4
        bottomButtonsView.layer.shadowColor = UIColor.gray.cgColor
    }
    
    @IBAction func confirmButtonAction(_ sender: Any) {
        let story = UIStoryboard(name: "ConfirmTickMarkViewController", bundle: nil)
        let controller = story.instantiateViewController(identifier: "ConfirmTickMarkViewController") as! ConfirmTickMarkViewController
        UIApplication.shared.windows.first?.rootViewController = controller
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
    
    @IBAction func cancelButtonAction(_ sender: Any) {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let controller = story.instantiateViewController(identifier: "AccountSettingsViewController") as! AccountSettingsViewController
        UIApplication.shared.windows.first?.rootViewController = controller
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
    

}
