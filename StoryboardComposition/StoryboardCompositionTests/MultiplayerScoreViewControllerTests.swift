//
//  MultiplayerScoreViewControllerTests.swift
//  StoryboardCompositionTests
//
//  Created by Yevhenii Veretennikov on 26.05.2023.
//

import XCTest
@testable import StoryboardComposition

final class MultiplayerScoreViewControllerTests: XCTestCase {

    let storyboard = UIStoryboard(name: "MultiplayerScore", bundle: nil)
    
    func test_multiplayerScoreStoryboardInitialViewController_isMultiplayerScoreViewController() {
        XCTAssertTrue(storyboard.instantiateInitialViewController() is MultiplayerScoreViewController)
    }
    
    func test_multiplayeScoreStoryboard_setsUpPlayerOne_isNotNil() {
        let vc = storyboard.instantiateInitialViewController() as! MultiplayerScoreViewController
        _ = vc.view
        
        XCTAssertNotNil(vc.playerOne)
    }
    
    func test_multiplayeScoreStoryboard_setsUpPlayerTwo_isNotNil() {
        let vc = storyboard.instantiateInitialViewController() as! MultiplayerScoreViewController
        _ = vc.view
        
        XCTAssertNotNil(vc.playerTwo)
    }

}
