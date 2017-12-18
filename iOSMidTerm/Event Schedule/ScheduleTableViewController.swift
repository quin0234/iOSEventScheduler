//
//  ScheduleTableViewController.swift
//  Event Schedule
//
//  Created by Paul Quinnell on 2017-10-30.
//  Copyright © 2017 Paul Quinnell. All rights reserved.
//

import UIKit

class ScheduleTableViewController: UITableViewController, eventPassing {

    var myNewSchedule: Schedule = Schedule()
    
    @objc var FirstTableArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myNewSchedule.addNewEvent(title: "Soccer Match", description: "Big Match England vs Brazil", date: "2017/11/14 20:00")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myNewSchedule.eventArray.count
      

           }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        
        
        let events = myNewSchedule.eventArray[indexPath.row]
        cell.textLabel?.text = events.title
        
        return cell
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowEventInfo" {
            
            let eventVC = segue.destination as? EventViewController
            
            guard let cell = sender as? UITableViewCell,
                let indexPath = tableView.indexPath(for: cell) else {
                    return
            }
        eventVC?.Event = myNewSchedule.eventArray[indexPath.row]
        }
        
        if segue.identifier == "ShowNewEvent"{
            let newEventVC = segue.destination as? NewEventViewController
            newEventVC?.delegate = self
        }
    }
    
    
    func passData(myEvent: Event){
      myNewSchedule.eventArray.append(myEvent)
        self.tableView.reloadData()
    }

}
