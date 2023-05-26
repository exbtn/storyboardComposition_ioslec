//
//  SinglePlayerViewController.swift
//  StoryboardComposition
//
//  Created by Yevhenii Veretennikov on 26.05.2023.
//

import UIKit

final class SinglePlayerViewController: UIViewController {
    private(set) var player: PlayerScoreViewController?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "playerOne" {
            player = segue.destination as? PlayerScoreViewController
        }
    }
}
