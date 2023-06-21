//
//  DeleteAccountViewController.swift
//  AccountSettings
//
//  Created by Harsh Tiwari on 20/06/23.
//

import UIKit

class DeleteAccountViewController: UIViewController {

    @IBOutlet weak var confirmButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func confirmButtonAction(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "ConfirmTickMarkViewController", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "ConfirmTickMarkViewController") as! ConfirmTickMarkViewController

        self.present(vc, animated: true, completion: nil)
    }
    

}
