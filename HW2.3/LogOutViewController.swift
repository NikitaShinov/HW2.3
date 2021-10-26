//
//  LogOutViewController.swift
//  HW2.3
//
//  Created by Никита Шинов on 26.10.2021.
//

import UIKit

class LogOutViewController: UIViewController {
    
    var login: String?

    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = self.login else { return }
        
        resultLabel.text = "Welcome, \(login)!"

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
