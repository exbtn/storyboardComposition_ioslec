//
//  SinglePlayerViewControllerTests.swift
//  StoryboardCompositionTests
//
//  Created by Yevhenii Veretennikov on 26.05.2023.
//

import XCTest
@testable import StoryboardComposition

class SinglePlayerViewControllerTests: XCTestCase {
    
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    
    func test_mainStoryboard_initialViewControllerIsNotNil() {
        let vc = storyboard.instantiateInitialViewController()
        
        XCTAssertNotNil(vc)
    }
    
    func test_mainStoryboard_initialViewControllerIsSinglePlayerViewController() {
        let vc = storyboard.instantiateInitialViewController() as? SinglePlayerViewController
        
        XCTAssertNotNil(vc)
    }
    
    func test_SinglePlayerViewController_name_isSettable() {
        let vc = storyboard.instantiateInitialViewController() as! SinglePlayerViewController
        _ = vc.view
        
        vc.name = "a name"
        
        XCTAssertEqual(vc.name, "a name")
    }
    
    func test_SinglePlayerViewController_score_isSettable() {
        let vc = storyboard.instantiateInitialViewController() as! SinglePlayerViewController
        _ = vc.view
        
        vc.score = "a score"
        
        XCTAssertEqual(vc.score, "a score")
    }
}
