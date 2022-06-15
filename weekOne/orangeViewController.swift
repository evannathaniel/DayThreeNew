//
//  orangeViewController.swift
//  weekOne
//
//  Created by Evan N on 13/06/22.
//

import UIKit

class orangeViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func nextPage(_ sender: Any) {
        let redVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "redViewController")
        self.navigationController?.pushViewController(redVC, animated: true)
    }
    @IBAction func send(_ sender: Any) {
        NotificationCenter.default.post(name: Notification.Name("text"), object: textField?.text ?? "kosong" )
        print("a")
        _ = navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Orange Page"
        // Do any additional setup after loading the view.
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
