//
//  ViewController.swift
//  AvitoList-ForIntership
//
//  Created by Kirill Kornakov on 08.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var avitoObjects: AvitoData?
    var networkManager = NetworkManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        networkManager.fetchData()
        networkManager.delegate = self
    }
}

//MARK: - UITableViewDataSource, UITableViewDelegate

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return avitoObjects?.company.employees.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        guard let list = avitoObjects?.company.employees else { return cell }
        let sortedList = list.sorted { $0.name < $1.name }
        
        cell.nameLabel.text = "Name: \(sortedList[indexPath.row].name)"
        cell.phoneNumberLabel.text = "Phone number: \(sortedList[indexPath.row].phoneNumber)"
        cell.skillsLabel.text = "Skills: \(sortedList[indexPath.row].skills.joined(separator: ", "))"
        //cell.imageOfMan.image = UIImage(systemName: "person.crop.square.fill")
        
        return cell
    }
}

//MARK: - NetworkDataManagerDelegate

extension ViewController: NetworkDataManagerDelegate {
    func updateInterface(_: NetworkManager, with currentData: CurrentData) {
        avitoObjects = currentData.avitoInfo
        tableView.tableFooterView = UIView()
        tableView.reloadData()
    }
}
