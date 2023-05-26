//
//  MultiplayerViewController.swift
//  StoryboardComposition
//
//  Created by Yevhenii Veretennikov on 26.05.2023.
//

import UIKit

final class MultiplayerViewController: UIViewController {
    @IBOutlet private weak var p1NameLabel: UILabel?
    @IBOutlet private weak var p1ScoreLabel: UILabel?
    @IBOutlet private weak var p2NameLabel: UILabel?
    @IBOutlet private weak var p2ScoreLabel: UILabel?
    
    var p1Name: String? {
        get { p1NameLabel?.text }
        set { p1NameLabel?.text = newValue }
    }
    
    var p1Score: String? {
        get { p1ScoreLabel?.text }
        set { p1ScoreLabel?.text = newValue }
    }
    
    var p2Name: String? {
        get { p2NameLabel?.text }
        set { p2NameLabel?.text = newValue }
    }
    
    var p2Score: String? {
        get { p2ScoreLabel?.text }
        set { p2ScoreLabel?.text = newValue }
    }
}
