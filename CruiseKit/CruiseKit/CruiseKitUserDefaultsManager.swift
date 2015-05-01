//
//  CruiseKitUserDefaultsManager.swift
//  CruiseKit
//
//  Created by Bruce McLeod on 14/04/2015.
//  Copyright (c) 2015 ThoughtWorks. All rights reserved.
//

import Foundation

// This class handles the reading and writing of user defaults for CruiseKit.
// User defaults are also used to share data between iOS and the Apple Watch

public class UserDefaultsManager {
    
    public var pollInterval:Int?
    var userDefaults = NSUserDefaults(suiteName: "group.cruisekit")
    
    public func addProject(projectName: String, onServerWithURL: String) {
        
    }
    
    public func projectListContainsProject(withName :String,onServerWithURL: String) ->Bool {
        return false;
    }
    
}
