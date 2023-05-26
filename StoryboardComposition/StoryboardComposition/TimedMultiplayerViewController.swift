//
//  TimedMultiplayerViewController.swift
//  StoryboardComposition
//
//  Created by Yevhenii Veretennikov on 26.05.2023.
//

import UIKit

class TimedMultiplayerViewController: UIViewController {
    private(set) var timeBar: TimeBarViewController?
    private(set) var players: MultiplayerScoreViewController?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "timeBar" {
            timeBar = segue.destination as? TimeBarViewController
        } else if segue.identifier == "players" {
            players = segue.destination as? MultiplayerScoreViewController
        }
    }
}
