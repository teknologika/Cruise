//
//  CruiseKitTests.swift
//  CruiseKitTests
//
//  Created by Bruce McLeod on 13/04/2015.
//  Copyright (c) 2015 ThoughtWorks. All rights reserved.
//

import UIKit
import XCTest
import CruiseKit

class Person:Serializable {
    var Name : String
    var Surname : String
    var Animals : Array<Animal>
    
    init(Name:String, Surname:String) {
        self.Name = Name
        self.Surname = Surname
        self.Animals = Array<Animal>()
    }
}

class Animal:Serializable {
    var Nickname : String
    var Kind : String
    
    init(Nickname : String, Kind : String) {
        self.Nickname = Nickname
        self.Kind = Kind
    }
}


class CruiseKitTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testProjectSerilisation() {
        var url = NSURL(string: "http://example.com")
        var project = Project(name: "testProjectName", serverURL: url!)

        
    }
    
    

    
}
