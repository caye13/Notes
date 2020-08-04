//
//  ListNotesTableViewController.swift
//  Notes
//
//  Created by Caye on 8/4/20.
//  Copyright © 2020 caye. All rights reserved.
//

import UIKit

class ListNotesTableViewController: UITableViewController {
    
    var notes = [Note]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listNotesTableViewCell", for: indexPath) as! ListNotesTableViewCell

        let note = notes[indexPath.row]
        cell.noteTitleLabel.text = note.title
       
        cell.noteModificationTimeLabel.text = note.modificationTime.convertToString()

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
            
        switch identifier {
        case "save":
            print("save bar button item tapped")

        case "cancel":
            print("cancel bar button item tapped")
        
        default:
            print("unexpected seque identifier")
        }
    }
    
    @IBAction func unwindWithSegue(_ segue: UIStoryboardSegue) {

    }
    
}
