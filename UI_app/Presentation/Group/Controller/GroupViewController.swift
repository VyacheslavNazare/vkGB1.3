//
//  GroupViewController.swift
//  UI_app
//
//  Created by Вячеслав on 18.08.2021.
//

import UIKit

class GroupViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let groups = ["Инструменты", "Барышни", "Ноты"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveToGalleryGroup" {
            let destinationVC = segue.destination
            guard
                let indexSelectCell = tableView.indexPathForSelectedRow?.row
            else { return }
            destinationVC.title = groups[indexSelectCell]
        }
    }

}

extension GroupViewController: UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        groups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: GroupTableViewCell.identifier) as! GroupTableViewCell
        cell.configure(imageName: "1", title: groups[indexPath.row])
        
        return cell
    }
    
    
}
