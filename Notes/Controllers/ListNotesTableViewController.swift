//
//  ListNotesTableViewController.swift
//  Notes
//
//  Created by Caye on 8/4/20.
//  Copyright © 2020 caye. All rights reserved.
//

import UIKit

class ListNotesTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listNotesTableViewCell", for: indexPath) as! ListNotesTableViewCell

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
            
        switch identifier {
        case "displayNote":
            print ("note call tapped")
            
        case "addNote":
            print("create note ba button item tapped")
        
        default:
            print("unexpected seque identifier")
        }
    }
    
}
