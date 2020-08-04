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
}
