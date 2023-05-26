//
//  SinglePlayerViewControllerTests.swift
//  StoryboardCompositionTests
//
//  Created by Yevhenii Veretennikov on 26.05.2023.
//

import XCTest
@testable import StoryboardComposition

class SinglePlayerViewControllerTests: XCTestCase {
    
    func test_mainStoryboard_initialViewControllerIsNotNil() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateInitialViewController()
        
        XCTAssertNotNil(vc)
    }
    
    func test_mainStoryboard_initialViewControllerIsSinglePlayerViewController() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateInitialViewController() as? SinglePlayerViewController
        
        XCTAssertNotNil(vc)
    }
    
}
