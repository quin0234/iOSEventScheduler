//
//  Event.swift
//  Event Schedule
//
//  Created by Paul Quinnell on 2017-12-18.
//  Copyright © 2017 shah0150@algonquinlive.com. All rights reserved.
//

import Foundation
class Event {
    var title: String?
    var description: String?
    var date: Date?
    
    init(title:String, description:String) {
        self.title = title
        self.description = description
    }
    
    convenience init(title:String, description:String, date:String){
        self.init(title: title, description: description)
        setDate(formatedDateString: date)
    }
    
    func setDate(formatedDateString: String){
        let formatting = DateFormatter()
        formatting.dateFormat = "yyyy/MM/dd HH:mm"
        self.date = formatting.date(from: formatedDateString)
    }
    
    func getInfo() -> String {
        return "\n\(title!)\n\(date!.description)\n\(description!)"
    }
    
}
