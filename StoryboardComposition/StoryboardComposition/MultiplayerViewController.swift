//
//  MultiplayerViewController.swift
//  StoryboardComposition
//
//  Created by Yevhenii Veretennikov on 26.05.2023.
//

import UIKit

final class MultiplayerViewController: UIViewController {
    private(set) var score: MultiplayerScoreViewController?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "multiplayerScore" {
            score = segue.destination as? MultiplayerScoreViewController
        }
    }
}
