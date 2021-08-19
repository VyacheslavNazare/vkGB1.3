//
//  AllFriendViewController.swift
//  UI_app
//
//  Created by Вячеслав on 16.08.2021.
//

import UIKit

final class AllFriendViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    let storage: FriendStorage = FriendStorage()
    var friends: [FriendModel] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        friends = storage.allFriends
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension AllFriendViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection selection: Int) -> Int {
        friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: AllFriendViewCell.identifier) as! AllFriendViewCell
        cell.configure(friend: friends[indexPath.row])
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}

