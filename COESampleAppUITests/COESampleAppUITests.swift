//
//  COESampleAppUITests.swift
//  COESampleAppUITests
//
//  Created by Irshad Ahmad on 22/11/23.
//

import XCTest

final class COESampleAppUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let elementsQuery = XCUIApplication().scrollViews.otherElements
        let scrollViewsQuery = elementsQuery.scrollViews
        scrollViewsQuery.otherElements.staticTexts["Jewelery"].tap()
        
        let popularElementsQuery = scrollViewsQuery.otherElements.containing(.staticText, identifier:"Popular")
        popularElementsQuery.children(matching: .scrollView).element(boundBy: 1).otherElements.containing(.image, identifier:"shoe").element.swipeUp()
        
        let scrollView = popularElementsQuery.children(matching: .scrollView).element(boundBy: 0)
        let shoeImage = scrollView.otherElements.children(matching: .image).matching(identifier: "shoe").element(boundBy: 0)
        shoeImage.tap()
        shoeImage.swipeDown()
        elementsQuery.textFields["Search Products"].tap()
        scrollView.otherElements.containing(.image, identifier:"shoe").element.tap()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
