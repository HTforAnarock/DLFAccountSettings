//
//  ConfirmTickMarkViewController.swift
//  AccountSettings
//
//  Created by Harsh Tiwari on 21/06/23.
//

import UIKit

class ConfirmTickMarkViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.autoNavigate()
    }
    func autoNavigate() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
            let story = UIStoryboard(name: "Main", bundle: nil)
            let controller = story.instantiateViewController(identifier: "AccountSettingsViewController") as! AccountSettingsViewController
            UIApplication.shared.windows.first?.rootViewController = controller
            UIApplication.shared.windows.first?.makeKeyAndVisible()
        })
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
