//
//  GymRutinesTests.swift
//  GymRutinesTests
//
//  Created by manuel.moreno.local on 27/1/23.
//

import XCTest
@testable import GymRutines

final class GymRutinesTests: XCTestCase {

    var sut: LoginViewModel!

    override func setUpWithError() throws {
        sut = LoginViewModel(coordinator: MainCoordinator())
        sut.email = "manuelmor00051@gmail.com"
        sut.password = "77367290M"
        sut.confirmPassword = "77367290M"
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_CheckLogin() throws {
        sut.logIn()
        XCTAssertTrue(sut.showLoginAlert == false)
    }
}
