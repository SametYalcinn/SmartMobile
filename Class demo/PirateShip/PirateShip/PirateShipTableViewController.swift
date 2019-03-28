//
//  PirateShipTableViewController.swift
//  PirateShip
//
//  Created by Fontys on 21/02/2019.
//  Copyright © 2019 Fontys. All rights reserved.
//

import UIKit

class PirateShipTableViewController: UITableViewController {
    
    var pirates = [Pirate]()

    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "https://i886625.venus.fhict.nl/pirates.json")
        
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            if error != nil {
                print("\(error!.localizedDescription)")
            }
            
            
            guard let retrievedData = data else {
                return
            }
            
            do {
                let pirateData = try JSONDecoder().decode([Pirate].self, from: retrievedData)
                
                
                DispatchQueue.main.async {
                    self.pirates = pirateData
                    self.tableView.reloadData()
                }
                
                
            } catch let err {
                print("\(err)")
            }
            
            
        }.resume()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.pirates.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PirateCell", for: indexPath)

        cell.textLabel?.text = self.pirates[indexPath.row].name!
        cell.detailTextLabel?.text = self.pirates[indexPath.row].country_of_origin
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
