//
//  TimedMultiplayerViewControllerTests.swift
//  StoryboardCompositionTests
//
//  Created by Yevhenii Veretennikov on 26.05.2023.
//

import XCTest
@testable import StoryboardComposition

final class TimedMultiplayerViewControllerTests: XCTestCase {

    let storyboard = UIStoryboard(name: "TimedMultiplayerGame", bundle: nil)
    
    func test_timedMultiplayerGameStoryboardInitialViewController_isTimedMultiplayerViewController() {
        XCTAssertTrue(storyboard.instantiateInitialViewController() is TimedMultiplayerViewController)
    }
    
    func test_timedMultiplierGameStoryboard_setsUpTimeBar_isNotNil() {
        let vc = storyboard.instantiateInitialViewController() as? TimedMultiplayerViewController
        _ = vc?.view
        
        XCTAssertNotNil(vc?.timeBar)
    }
    
    func test_timedMultiplierGameStoryboard_setsUpPlayers_isNotNil() {
        let vc = storyboard.instantiateInitialViewController() as? TimedMultiplayerViewController
        _ = vc?.view
        
        XCTAssertNotNil(vc?.players)
    }

}
