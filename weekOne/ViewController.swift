//
//  ViewController.swift
//  weekOne
//
//  Created by Evan N on 13/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var receiver: UILabel!
    @IBOutlet weak var orangeButton: UIButton!
    @IBOutlet weak var stackView: UIStackView!
    @IBAction func segment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            stackView.isHidden = false
            orangeButton.isHidden = true
        }
        else{
            stackView.isHidden = true
            orangeButton.isHidden = false
        }
    }
    public var angka:Int = 1
    let changeNameItem = UIAction(title: "Change Name"){(_)in}
    let changeAddressItem = UIAction(title: "Change Address"){(_)in}
    let refreshItem = UIAction(title: "Refresh"){(_)in}
    
    let logOutItem = UIAction(title: "Log Out"){(_)in}
    let quitItem = UIAction(title: "Quit"){(_)in}
    @IBOutlet weak var dropButton: UIButton!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstButton: UIButton!
    @IBAction func firstAction(_ sender: Any) {
        print("button tapped " + String(angka) + " times")
        firstLabel.text = "button tapped " + String(angka) + " times"
        angka += 1
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(getData(_:)), name: Notification.Name("text"), object: nil)
        title = "Yellow Page"
        // Do any additional setup after loading the view.
        firstButton.setTitle("button", for: .normal)
        firstButton.setTitle("highlighted button", for: .highlighted)
        dropButton.setTitle("Choose", for: .normal)
        dropButton.menu = UIMenu(title: "choose",  children: [refreshItem,UIMenu(title: "Options",children: [changeNameItem,changeAddressItem]),logOutItem,quitItem])
        orangeButton.setTitle("Go To Orange Page", for: .normal)
        
    }
    @objc func getData(_ notification: Notification){
        let text = notification.object as! String?
        receiver.text = text
    }


}

