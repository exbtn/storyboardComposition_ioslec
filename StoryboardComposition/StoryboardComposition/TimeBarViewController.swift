//
//  TimeBarViewController.swift
//  StoryboardComposition
//
//  Created by Yevhenii Veretennikov on 26.05.2023.
//

import UIKit

final class TimeBarViewController: UIViewController {
    @IBOutlet private weak var timeBar: UIView?
    
    var progress: UInt = 0 {
        didSet { /* implement progress */ }
    }
}
