//
//  ViewController.swift
//  test
//
//  Created by Mdo on 06/07/2020.
//  Copyright © 2020 Mdo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    
    @IBOutlet weak var competitionTableView: UITableView!
    
    //vars
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        competitionTableView.register(CompetitionTableViewCell.self, forCellReuseIdentifier: "cellMainId")
        competitionTableView.delegate = self
        competitionTableView.dataSource = self
        
        Network.getCompetitionData { (DictionaryResponse, error) in
            self.competitionTableView.reloadData()
        }

    }


}

extension ViewController{
    
    //MARK: -  tableView Delegates
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  mainCompetitionData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = competitionTableView.dequeueReusableCell(withIdentifier: "cellMainId", for: indexPath)
        cell.textLabel?.text = mainCompetitionData[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let DetailsController =  DetailsViewController(nibName: "DetailsViewController", bundle: nil)
        //Details
        DetailsController.screenTitle = "Details"
        self.show(DetailsController, sender: self)
        
        
    }
}

