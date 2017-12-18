//
//  Schedule.swift
//  Event Schedule
//
//  Created by Paul Quinnell on 2017-12-18.
//  Copyright © 2017 quin0234@algonquinlive.com. All rights reserved.
//

import Foundation
class Schedule {
    
    var eventArray: [Event] = []
    
    var eventCount: Int {
        guard eventArray.isEmpty == false else { return 0 }
        return eventArray.count
    }
    
    func addNewEvent(title:String, description:String, date:String){
        eventArray.append(Event(title: title, description: description, date: date))
    }
    
    func outputAllEvents () -> String {
        var eventInfo : String = ""
        guard eventArray.isEmpty == false else {
            return ""
        }
        for event in eventArray {
            eventInfo += (event.getInfo () + "\n")
        }
        return eventInfo
    }
}
