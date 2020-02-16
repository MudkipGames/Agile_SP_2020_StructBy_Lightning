//
//  EnemyTableViewController.swift
//  MapGeneratorD&D_Group2
//
//  Created by Reed Heimstead on 2/12/20.
//  Copyright © 2020 CVTC Reed Heimstead. All rights reserved.
//

import UIKit

class EnemyTableViewController: UITableViewController {
  //MARK: - Variables
  var enemies: [Enemy] = [
    Enemy(enemyName: "Bandit",
          hitPoints: "11",
          challengeRating: "1/8",
          armorClass: "12",
          speed: "30",
          strength: "11",
          dexterity: "12",
          constitution: "12",
          intelligence: "10",
          wisdom: "10",
          charisma: "10")
  ]
  
  //MARK: - Methods
  override func viewDidLoad() {
    super.viewDidLoad()
    navigationItem.leftBarButtonItem = editButtonItem
  }

  override func viewWillAppear(_ animated: Bool) {
    tableView.reloadData()
  }
  
  //MARK: - Table view data source
  override func numberOfSections(in tableView: UITableView) -> Int {
    // #warning Incomplete implementation, return the number of sections
    return 1
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // #warning Incomplete implementation, return the number of rows
    if section == 0 {
      return enemies.count
    }
    else {
      return 0
    }
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "EnemyCell", for: indexPath) as! EnemyTableViewCell
    
    let enemy = enemies[indexPath.row]
    
    cell.update(with: enemy)
    cell.showsReorderControl = true

    return cell
  }

  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let enemy = enemies[indexPath.row]
    print("\(enemy.enemyName) \(indexPath)")
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "EditEnemy" {
      let indexPath = tableView.indexPathForSelectedRow!
      let enemy = enemies[indexPath.row]
      let navController = segue.destination as! UINavigationController
      let addEditEnemyTableViewController = navController.topViewController as! AddEditEnemyViewController
      
      addEditEnemyTableViewController.enemy = enemy
    }
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
