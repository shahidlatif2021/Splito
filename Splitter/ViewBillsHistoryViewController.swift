//
//  ViewBillsHistoryViewController.swift
//  Splito
//
//  Created by Shahid Latif on 22/06/2022.
//

import UIKit
import CoreDataManager

class ViewBillsHistoryViewController: UIViewController {
    let bills = CoreDataManager.sharedInstance.mainContext.managerFor(Bill.self).array
    @IBOutlet weak var totalBillLabel: UILabel!
    @IBOutlet weak var numberOfPeopleInBill: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let totalPeopleInBillHistory: Int = CoreDataManager.sharedInstance.mainContext.managerFor(Bill.self).sum("numberOfPeople") as? Int ?? 0
        numberOfPeopleInBill.text = String(format: "Total People: %d ", totalPeopleInBillHistory)
        let totalBillInBillHistory = CoreDataManager.sharedInstance.mainContext.managerFor(Bill.self).sum("totalBill") as? Double ?? 0
        totalBillLabel.text =  String(format: "Total Bill: %.2f", totalBillInBillHistory)
    }
}

extension ViewBillsHistoryViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bills.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "billHistoryCell", for: indexPath) as! BillTableViewCell
        let bill  = bills[indexPath.row]
        cell.billDescription.text = String(format: "Sr. %d | Total Bill: %.2f | number OF People: %d", indexPath.row + 1, bill.totalBill, bill.numberOfPeople)
        return cell
    }
}
