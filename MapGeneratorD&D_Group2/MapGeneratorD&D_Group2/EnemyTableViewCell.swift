//
//  EnemyTableViewCell.swift
//  MapGeneratorD&D_Group2
//
//  Created by Reed Heimstead on 2/12/20.
//  Copyright © 2020 CVTC Reed Heimstead. All rights reserved.
//

import UIKit

class EnemyTableViewCell: UITableViewCell {
  @IBOutlet weak var enemyNameLabel: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

  func update(with enemy: Enemy) {
    enemyNameLabel.text = enemy.enemyName
  }
}
