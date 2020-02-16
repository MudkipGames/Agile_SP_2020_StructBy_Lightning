//
//  AddEditEnemyViewController.swift
//  MapGeneratorD&D_Group2
//
//  Created by Reed Heimstead on 2/12/20.
//  Copyright © 2020 CVTC Reed Heimstead. All rights reserved.
//

import UIKit

class AddEditEnemyViewController: UIViewController {

  //MARK: - Outlets
  
  @IBOutlet weak var enemyNameTextField: UITextField!
  @IBOutlet weak var hitPointsTextField: UITextField!
  @IBOutlet weak var challengeRatingTextField: UITextField!
  @IBOutlet weak var armorClassTextField: UITextField!
  @IBOutlet weak var speedTextField: UITextField!
  
  
  @IBOutlet weak var strengthTextField: UITextField!
  @IBOutlet weak var dexterityTextField: UITextField!
  @IBOutlet weak var constitutionTextField: UITextField!
  @IBOutlet weak var intelligenceTextField: UITextField!
  @IBOutlet weak var wisdomTextField: UITextField!
  @IBOutlet weak var charismaTextField: UITextField!
  
  @IBOutlet weak var saveButton: UIButton!
  
  //MARK: - Variables
  var enemy: Enemy?
  
  //MARK: - Methods
  override func viewDidLoad() {
    super.viewDidLoad()
    
    if let enemy = enemy {
      enemyNameTextField.text = enemy.enemyName
      hitPointsTextField.text = enemy.hitPoints
      challengeRatingTextField.text = enemy.challengeRating
      armorClassTextField.text = enemy.armorClass
      speedTextField.text = enemy.speed
        
      strengthTextField.text = enemy.strength
      dexterityTextField.text = enemy.dexterity
      constitutionTextField.text = enemy.constitution
      intelligenceTextField.text = enemy.intelligence
      wisdomTextField.text = enemy.wisdom
      charismaTextField.text = enemy.charisma
    }
  }
  
  func updateSaveButtonStats() {
    let nameText = enemyNameTextField.text ?? ""
    let hitPointsText = hitPointsTextField.text ?? ""
    let challengeRatingText = challengeRatingTextField.text ?? ""
    let armorClassText = armorClassTextField.text ?? ""
    let speedText = speedTextField.text ?? ""
    let strengthText = strengthTextField.text ?? ""
    let dexterityText = dexterityTextField.text ?? ""
    let constitutionText = constitutionTextField.text ?? ""
    let intelligenceText = intelligenceTextField.text ?? ""
    let wisdomText = wisdomTextField.text ?? ""
    let charismaText = charismaTextField.text ?? ""
    
    saveButton.isEnabled = !nameText.isEmpty &&
                           !hitPointsText.isEmpty &&
                           !challengeRatingText.isEmpty &&
                           !armorClassText.isEmpty &&
                           !speedText.isEmpty &&
                           !strengthText.isEmpty &&
                           !dexterityText.isEmpty &&
                           !constitutionText.isEmpty &&
                           !intelligenceText.isEmpty &&
                           !wisdomText.isEmpty &&
                           !charismaText.isEmpty
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    super.prepare(for: segue, sender: sender)
    
    guard segue.identifier == "SaveUnwind" else {return}
    
    let enemyName = enemyNameTextField.text ?? ""
    let hitPoints = hitPointsTextField.text ?? ""
    let challengeRating = challengeRatingTextField.text ?? ""
    let armorClass = armorClassTextField.text ?? ""
    let speed = speedTextField.text ?? ""
    let strength = strengthTextField.text ?? ""
    let dexterity = dexterityTextField.text ?? ""
    let constitution = constitutionTextField.text ?? ""
    let intelligence = intelligenceTextField.text ?? ""
    let wisdom = wisdomTextField.text ?? ""
    let charisma = charismaTextField.text ?? ""
    
    enemy = Enemy(enemyName: enemyName,
                  hitPoints: hitPoints,
                  challengeRating: challengeRating,
                  armorClass: armorClass,
                  speed: speed,
                  strength: strength,
                  dexterity: dexterity,
                  constitution: constitution,
                  intelligence: intelligence,
                  wisdom: wisdom,
                  charisma: charisma)
  }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
