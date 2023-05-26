//
//  PlayerScoreViewControllerStoryboardTests.swift
//  StoryboardCompositionTests
//
//  Created by Yevhenii Veretennikov on 26.05.2023.
//

import XCTest
@testable import StoryboardComposition

final class PlayerScoreViewControllerStoryboardTests: XCTestCase {
    
    // MARK: - Player One Storyboard
    
    func test_playerOneStoryboardInitialViewController_isPlayerScoreViewController() {
        XCTAssertTrue(makePlayerOneStoryboard().instantiateInitialViewController() is PlayerScoreViewController)
    }
    
    func test_playerOneStoryboard_nameSetter_updatesNameLabel() {
        let vc = makePlayerScoreViewController(storyboard: makePlayerOneStoryboard())
        
        vc.name = "a name"
        
        XCTAssertEqual(vc.nameLabel?.text, "a name")
        XCTAssertEqual(vc.name, "a name")
    }
    
    func test_playerOneStoryboard_scoreSetter_updatesScoreLabel() {
        let vc = makePlayerScoreViewController(storyboard: makePlayerOneStoryboard())
        
        vc.score = "a score"
        
        XCTAssertEqual(vc.scoreLabel?.text, "a score")
        XCTAssertEqual(vc.score, "a score")
    }
    
    // MARK: - Player Two Storyboard
    
    func test_playerTwoStoryboardInitialViewController_isPlayerScoreViewController() {
        XCTAssertTrue(makePlayerTwoStoryboard().instantiateInitialViewController() is PlayerScoreViewController)
    }
    
    func test_playerTwoStoryboard_nameSetter_updatesNameLabel() {
        let vc = makePlayerScoreViewController(storyboard: makePlayerTwoStoryboard())
        
        vc.name = "a name"
        
        XCTAssertEqual(vc.nameLabel?.text, "a name")
        XCTAssertEqual(vc.name, "a name")
    }
    
    func test_playerTwoStoryboard_scoreSetter_updatesScoreLabel() {
        let vc = makePlayerScoreViewController(storyboard: makePlayerTwoStoryboard())
        
        vc.score = "a score"
        
        XCTAssertEqual(vc.scoreLabel?.text, "a score")
        XCTAssertEqual(vc.score, "a score")
    }
    
    // MARK: - Helpers
    
    private func makePlayerOneStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "PlayerOne", bundle: nil)
    }
    
    private func makePlayerTwoStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "PlayerTwo", bundle: nil)
    }
    
    private func makePlayerScoreViewController(storyboard: UIStoryboard) -> PlayerScoreViewController {
        let vc = storyboard.instantiateInitialViewController() as! PlayerScoreViewController
        _ = vc.view
        return vc
    }
    
}
