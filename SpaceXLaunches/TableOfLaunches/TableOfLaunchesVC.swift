//
//  TableOfLaunchesVC.swift
//  SpaceXLaunches
//
//  Created by Anton Voloshuk on 19.07.2021.
//

import Foundation
import UIKit
import WebKit

class TableOfLaunchesVC: UINavigationController,UITableViewDelegate,UITableViewDataSource, TableOfLaunchesListener{
    private let cellID="TableOfLaunchesCell"
    private let tableView=UITableView()
    private let model = TableOfLaunchesModel()
    private let refreshControl = UIRefreshControl()

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.model.getCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index=indexPath.item
        guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellID, for: indexPath) as? TableOfLaunchesCell
        else{
            return UITableViewCell()
        }
        if let cellData=self.model.getAt(index){
            cell.setup(imgURL: cellData.0, launchDate: cellData.1, rocketName: cellData.2, rocketType: cellData.3)
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC=DetailVC()
        guard let infoURL=self.model.getInfoAt(indexPath.item)
        else{
            return
        }
        self.present(detailVC, animated: true, completion: {
            detailVC.loadFromUrl(url: infoURL)
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate=self
        self.tableView.dataSource=self
        self.tableView.frame=self.view.frame
        self.tableView.register(TableOfLaunchesCell.self, forCellReuseIdentifier: self.cellID)
        self.tableView.rowHeight=80
        
        self.model.listener=self
        
        self.view.addSubview(self.tableView)
        tableView.frame=self.view.bounds
        
        self.refreshControl.attributedTitle = NSAttributedString(string: "Refresh")
        self.refreshControl.addTarget(self, action: #selector(self.refresh(_:)), for: .valueChanged)
        self.tableView.addSubview(refreshControl) // not required when using UITableViewController
    }
    
    @objc func refresh(_ sender: AnyObject) {
        self.model.requestData()
    }

    
    func update() {
        DispatchQueue.main.async{
            self.tableView.reloadData()
            self.refreshControl.endRefreshing()
        }
    }
}
