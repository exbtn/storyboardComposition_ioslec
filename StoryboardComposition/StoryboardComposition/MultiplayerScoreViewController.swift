//
//  MultiplayerScoreViewController.swift
//  StoryboardComposition
//
//  Created by Yevhenii Veretennikov on 26.05.2023.
//

import UIKit

final class MultiplayerScoreViewController: UIViewController {
    var playerOne: PlayerScoreViewController?
    var playerTwo: PlayerScoreViewController?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "playerOne" {
            playerOne = segue.destination as? PlayerScoreViewController
        } else if segue.identifier == "playerTwo" {
            playerTwo = segue.destination as? PlayerScoreViewController
        }
    }
}
