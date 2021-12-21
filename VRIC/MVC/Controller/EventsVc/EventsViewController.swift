//
//  EventsViewController.swift
//  VRIC
//
//  Created by zeroit01 on 14/12/21.
//

import UIKit

class EventsViewController: UIViewController {
    
    @IBOutlet weak var BtnNotification: UIButton!
    @IBOutlet weak var BtnSearch: UIButton!
    @IBOutlet weak var BtnFilter: UIButton!
    @IBOutlet weak var BtnView: UIButton!
    @IBOutlet weak var BtnRequestEvent: UIButton!
    @IBOutlet weak var EventsTableVIew: UITableView!
    @IBOutlet weak var TodaySearchbar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.TodaySearchbar.isHidden = true
    }
    

    
    
    
    
    @IBAction func ActionSearchBar(_ sender: Any) {self.TodaySearchbar.isHidden = false}
    @IBAction func ActionNotifications(_ sender: Any){}
    @IBAction func Actionfilter(_ sender: Any) {}
    @IBAction func ActionView(_ sender: Any) {}
    @IBAction func ActionRequestEvent(_ sender: Any){}
    
    
}


extension EventsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let EventCell = tableView.dequeueReusableCell(withIdentifier: "EventsTableViewCell", for: indexPath) as! EventsTableViewCell
        
        return EventCell
    }
    
    
    
    
    
}
