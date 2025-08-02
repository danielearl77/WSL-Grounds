//
//  TableViewController.swift
//  WSL Grounds
//
//  Created by Daniel Earl on 04/08/2022.
//

import UIKit

class TableViewController: UITableViewController {
    
    var Teams: [String] = ["Arsenal","Aston Villa","Brighton & Hove Albion","Chelsea","Everton","Leicester City","Liverpool","London City Lionesses","Manchester City","Manchester United","Tottenham Hotspur","West Ham United"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Teams.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "TeamCell", for: indexPath)
     // Configure the cell...
     cell.textLabel?.text = Teams[indexPath.row]
     let teamIcon: UIImage=UIImage(named: cell.textLabel!.text!)!
     cell.imageView!.image=teamIcon
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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

     // MARK: - Navigation

     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         super.prepare(for: segue, sender: sender)
         switch(segue.identifier ?? "") {
         case "showHelp":
             NSLog("Loading Help Page")
         case "showDetail":
             let indexPath = tableView.indexPathForSelectedRow!
             let selected = indexPath.row
             let teamDetailViewController = segue.destination as? TeamViewController
             let team = Teams[selected]
             teamDetailViewController?.teamName = team
         default:
             fatalError("Unexpected Segue Identifier: \(String(describing: segue.identifier))")
         }
     }

}
