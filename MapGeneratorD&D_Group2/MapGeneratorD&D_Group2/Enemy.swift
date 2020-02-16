//
//  Enemy.swift
//  MapGeneratorD&D_Group2
//
//  Created by Reed Heimstead on 2/12/20.
//  Copyright © 2020 CVTC Reed Heimstead. All rights reserved.
//

import Foundation

struct Enemy {
  var enemyName: String
  var hitPoints: String
  var challengeRating: String
  var armorClass: String
  var speed: String
  
  var strength: String
  var dexterity: String
  var constitution: String
  var intelligence: String
  var wisdom: String
  var charisma: String
  
  init(enemyName: String, hitPoints: String, challengeRating: String, armorClass: String, speed: String, strength: String, dexterity: String, constitution: String, intelligence: String, wisdom: String, charisma: String) {
    self.enemyName = enemyName
    self.hitPoints = hitPoints
    self.challengeRating = challengeRating
    self.armorClass = armorClass
    self.speed = speed
    self.strength = strength
    self.dexterity = dexterity
    self.constitution = constitution
    self.intelligence = intelligence
    self.wisdom = wisdom
    self.charisma = charisma
  }
}
