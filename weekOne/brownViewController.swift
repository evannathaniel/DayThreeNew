//
//  brownViewController.swift
//  weekOne
//
//  Created by Evan N on 13/06/22.
//

import UIKit

class brownViewController: UIViewController {

    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var labelTitle: UILabel!
    var result: Result?
    //private let tableView: UITableView = {
        //let table = UITableView(frame: .zero, style: .grouped)
        //table.register(UITableViewCell.self, forCellReuseIdentifier: "customViewCell")
        //return table
    //}()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Brown Page"
        
        view.addSubview(tableView)
        let nib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CustomTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        parseJSON()
        // Do any additional setup after loading the view.
    }
    
    private func parseJSON() {
        guard let path = Bundle.main.path(forResource: "books", ofType: "json") else {
            return
        }
        let url = URL(fileURLWithPath: path)
        
        
        do{
            let jsonData = try Data(contentsOf: url)
            result = try JSONDecoder().decode(Result.self, from: jsonData)
           
        }catch{
            print("Error: \(error)")
        }
        
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



extension brownViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let result = result{
            return result.data.count
        }
        return 0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let title = result?.data[indexPath.row].title
        let author = result?.data[indexPath.row].author
        let year = result?.data[indexPath.row].year
        
         let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        
        cell.titleLabel.text = title
        cell.authorLabel.text = author
        cell.yearLabel.text = String(year ?? 0)
        
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you tapped me!")
    }
    
 // Do Something Here Later
}
