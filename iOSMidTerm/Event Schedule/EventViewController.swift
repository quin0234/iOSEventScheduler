//
//  EventViewController.swift
//  Event Schedule
//
//  Created by Paul Quinnell on 2017-10-30.
//  Copyright © 2017 Paul Quinnell. All rights reserved.
//

import UIKit

class EventViewController: UIViewController {
    @IBOutlet weak var myEventTextTitle: UITextView!
    @IBOutlet weak var myEventTextDesc: UITextView!
    @IBOutlet weak var myEventTextDate: UITextView!
    
    
    var Event: Event?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let events = Event{
            myEventTextTitle.text = events.title
            myEventTextDesc.text = events.description
            myEventTextDate.text = events.date?.description
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
