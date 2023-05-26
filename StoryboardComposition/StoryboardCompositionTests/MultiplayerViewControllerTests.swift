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
    
    func test_initialViewControllerIsNotNil() {
        let vc = storyboard.instantiateInitialViewController()
        
        XCTAssertNotNil(vc)
    }
    
    func test_initialViewControllerIsMultiplayerViewController() {
        let vc = storyboard.instantiateInitialViewController() as? MultiplayerViewController
        
        XCTAssertNotNil(vc)
    }
    
    func test_MultiplayerViewController_names_isSettable() {
        let vc = storyboard.instantiateInitialViewController() as! MultiplayerViewController
        _ = vc.view
        
        vc.p1Name = "a p1 name"
        vc.p2Name = "a p2 name"
        
        XCTAssertEqual(vc.p1Name, "a p1 name")
        XCTAssertEqual(vc.p2Name, "a p2 name")
    }
    
    func test_MultiplayerViewController_scores_isSettable() {
        let vc = storyboard.instantiateInitialViewController() as! MultiplayerViewController
        _ = vc.view
        
        vc.p1Score = "a p1 score"
        vc.p2Score = "a p2 score"
        
        XCTAssertEqual(vc.p1Score, "a p1 score")
        XCTAssertEqual(vc.p2Score, "a p2 score")
    }

}
