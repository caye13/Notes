//
//  DisplayNoteViewController.swift
//  Notes
//
//  Created by Caye on 8/4/20.
//  Copyright © 2020 caye. All rights reserved.
//

import UIKit

class DisplayNoteViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleTextField.text = ""
        contentTextView.text = ""
        
    }
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentTextView: UITextView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }

        switch identifier {
        case "save":
            let note = Note()
            
            note.title = titleTextField.text ?? ""
            note.content = contentTextView.text ?? ""
            note.modificationTime = Date()
            
            let destination = segue.destination as! ListNotesTableViewController
            destination.notes.append(note)

        case "cancel":
            print("cancel bar button item tapped")

        default:
            print("unexpected segue identifier")
        }
    }
    
}
