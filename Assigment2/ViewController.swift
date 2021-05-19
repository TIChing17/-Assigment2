//
//  ViewController.swift
//  Assigment2
//
//  Created by CHI on 2021/4/14.
//

import UIKit

class ViewController: UIViewController,
                      UITableViewDelegate,
                      UITableViewDataSource {
    
    
    var airports: [Airport] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
        
        // start here...
        tableView.delegate = self
        tableView.dataSource = self
        
        title = "AirportList"
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func numberOfSections(in tableView: UITableView) -> Int{
        return airports.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return airports.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AirportCell", for: indexPath) as! AirportTableViewCell
        

        let airport = airports[indexPath.row]
        cell.AirportName.text = airport.name
        cell.AirportCity.text = airport.servedCity
        cell.AirportImage.image = UIImage(named: airport.imageName)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let airport = airports[indexPath.row]
        performSegue(withIdentifier: "goToSecond", sender: airport)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "goToSecond":
            
            let airport = sender as? Airport
            

            if let airportSecond = segue.destination as? SecondViewController{
                
                airportSecond.airport = airport
            }
            
        default:
            break
        }
    }
    

    
}

extension ViewController {
    private func fetchData() {
        guard let path = Bundle.main.path(forResource: "airports", ofType: "plist"),
              let xml = FileManager.default.contents(atPath: path),
              let airports = try? PropertyListDecoder().decode([Airport].self, from: xml) else {
            return
        }
        self.airports = airports
    }
}

