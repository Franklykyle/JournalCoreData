//
//  EveryDetailViewController.swift
//  JournalCoreData
//
//  Created by Kyle Franklin on 7/26/21.
//

import UIKit

class EveryDetailViewController: UIViewController {

    @IBOutlet weak var titleText: UITextField!
    @IBOutlet weak var bodyText: UITextView!

    var entry: Entry?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        
    }
    
    @IBAction func saveActionTapped(_ sender: Any) {
        guard let title = bodyText.text, !title.isEmpty else {return}
        
        if let entry = entry {
            
        }
    }
    
    @IBAction func clearActionTapped(_ sender: Any) {
    }
    
    func updateViews() {
        guard let entry = entry else {return}
        bodyText.text = entry.title
        titleText.text = entry.bodyText
    }
}
