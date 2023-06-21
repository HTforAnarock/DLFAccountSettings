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
        let storyBoard = UIStoryboard(name: "ConfirmTickMarkViewController", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "ConfirmTickMarkViewController") as! ConfirmTickMarkViewController

        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func cancelButtonAction(_ sender: Any) {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let controller = story.instantiateViewController(identifier: "AccountSettingsViewController") as! AccountSettingsViewController
        //self.present(controller, animated: true, completion: nil)
        UIApplication.shared.windows.first?.rootViewController = controller
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
    

}
