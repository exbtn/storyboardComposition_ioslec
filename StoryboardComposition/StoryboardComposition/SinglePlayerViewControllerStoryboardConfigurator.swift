//
//  SinglePlayerViewControllerStoryboardConfigurator.swift
//  StoryboardComposition
//
//  Created by Yevhenii Veretennikov on 26.05.2023.
//

import UIKit

final class SinglePlayerViewControllerStoryboardConfigurator: NSObject {
    var observation: NSKeyValueObservation?
    
    @IBOutlet private weak var player: UIViewController? {
        didSet {
            observation = player?.observe(\.parent) { vc, changes in
                if let singlePlayerController = vc.parent as? SinglePlayerViewController {
                    singlePlayerController.player = vc as? PlayerScoreViewController
                }
            }
        }
    }
}
