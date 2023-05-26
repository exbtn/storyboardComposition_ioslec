//
//  MultiplayerViewControllerTests.swift
//  StoryboardCompositionTests
//
//  Created by Yevhenii Veretennikov on 26.05.2023.
//

import XCTest
@testable import StoryboardComposition

final class MultiplayerViewControllerTests: XCTestCase {

    let storyboard = UIStoryboard(name: "MultiplayerGame", bundle: nil)
    
    func test_multiplayerGameStoryboardInitialViewController_isSinglePlayerViewController() {
        XCTAssertTrue(storyboard.instantiateInitialViewController() is MultiplayerViewController)
    }
    
    func test_multiplayeGameStoryboard_setsUpPlayerForSinglePlayerViewController() {
        let vc = storyboard.instantiateInitialViewController() as! MultiplayerViewController
        _ = vc.view
        
        XCTAssertNotNil(vc.score)
    }

}
