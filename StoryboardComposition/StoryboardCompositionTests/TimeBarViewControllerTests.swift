//
//  TimeBarViewControllerTests.swift
//  StoryboardCompositionTests
//
//  Created by Yevhenii Veretennikov on 26.05.2023.
//

import XCTest
@testable import StoryboardComposition

final class TimeBarViewControllerTests: XCTestCase {

    let storyboard = UIStoryboard(name: "TimeBar", bundle: nil)
    
    func test_timeBarStoryboardInitialViewController_isTimeBarViewController() {
        XCTAssertTrue(storyboard.instantiateInitialViewController() is TimeBarViewController)
    }
    
    func test_timeBarStoryboard_setsUpProgress_isNotNil() {
        let vc = storyboard.instantiateInitialViewController() as? TimeBarViewController
        _ = vc?.view
        
        // implement progress tets
        XCTAssertNotNil(vc?.progress)
    }

}
