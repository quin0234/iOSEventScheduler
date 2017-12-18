//
//  NewEventViewController.swift
//  Event Schedule
//
//  Created by Paul Quinnell on 2017-10-30.
//  Copyright © 2017 Paul Quinnell. All rights reserved.
//

import UIKit
import Foundation

class NewEventViewController: UIViewController, UITextViewDelegate {

    var delegate: eventPassing?
    
    @IBOutlet weak var myEventTitle: UITextField!
    @IBOutlet weak var myEventDescription: UITextView!
    @IBOutlet weak var myEventDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myEventDescription.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        myEventDescription.resignFirstResponder()
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        myEventDescription.resignFirstResponder()
        return true
    }
    @IBAction func myEventCreateButton(_ sender: Any) {
        
            let newTitle: String = myEventTitle.text!
            let newDes: String = myEventDescription.text!
            let newEvent = Event(title: "", description: "", date: "")
            
            newEvent.title = newTitle
            newEvent.description = newDes
            newEvent.date = myEventDatePicker.date
            
            delegate?.passData(myEvent: newEvent)
            
             _ = navigationController?.popViewController(animated: true)
            
            print(newEvent)
        
    }

}
