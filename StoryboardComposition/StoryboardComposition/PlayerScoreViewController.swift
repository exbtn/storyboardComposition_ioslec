//
//  PlayerScoreViewController.swift
//  StoryboardComposition
//
//  Created by Yevhenii Veretennikov on 26.05.2023.
//

import UIKit

final class PlayerScoreViewController: UIViewController {
    @IBOutlet private(set) weak var nameLabel: UILabel?
    @IBOutlet private(set) weak var scoreLabel: UILabel?
    
    var name: String? {
        get { nameLabel?.text }
        set { nameLabel?.text = newValue }
    }
    
    var score: String? {
        get { scoreLabel?.text }
        set { scoreLabel?.text = newValue }
    }
}
