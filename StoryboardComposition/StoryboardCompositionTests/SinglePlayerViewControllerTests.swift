//
//  SinglePlayerViewControllerTests.swift
//  StoryboardCompositionTests
//
//  Created by Yevhenii Veretennikov on 26.05.2023.
//

import XCTest
@testable import StoryboardComposition

class SinglePlayerViewControllerTests: XCTestCase {
    
    let storyboard = UIStoryboard(name: "SingleplayerGame", bundle: nil)
    
    func test_singleplayerGameStoryboardInitialViewController_isSinglePlayerViewController() {
        XCTAssertTrue(storyboard.instantiateInitialViewController() is SinglePlayerViewController)
    }
    
    func test_singleplayerGameStoryboard_setsUpPlayerForSinglePlayerViewController() {
        let vc = storyboard.instantiateInitialViewController() as! SinglePlayerViewController
        _ = vc.view
        
        XCTAssertNotNil(vc.player)
    }
    
}
