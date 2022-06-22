//
//  ViewBillsHistoryViewController.swift
//  Splito
//
//  Created by Shahid Latif on 22/06/2022.
//

import UIKit

class ViewBillsHistoryViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewBillsHistoryViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "billHistoryCell", for: indexPath)
        return cell
    }
}
