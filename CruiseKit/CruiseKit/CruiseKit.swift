//
//  CruiseKit.swift
//  CruiseKit
//
//  Created by Bruce McLeod on 13/04/2015.
//  Copyright (c) 2015 ThoughtWorks. All rights reserved.
//

import Foundation

enum Activity {
    case Sleeping, Building, CheckingModifications
}

enum LastBuildStatus {
    case Success, Failure, Exception, Unknown
}


/// This is a class that defines a CI project. 
public class Project : NSCoder {
    
    var name:String
    var serverURL:NSURL
    var statusError:String?
    var buildDuration:Float?
    var buildStartTime:NSDate?
    
    init(name:String, serverURL:NSURL) {
        self.name = name
        self.serverURL = serverURL
    }
    
    required convenience public init(coder decoder:NSCoder) {
        self.init(name: (decoder.decodeObjectForKey("name") as! String?)!,serverURL: (decoder.decodeObjectForKey("server_url") as! NSURL?)!)
        self.statusError = (decoder.decodeObjectForKey("status_error") as! String?)!
        self.buildDuration = (decoder.decodeFloatForKey("build_duration"))
        self.buildStartTime = (decoder.decodeObjectForKey("build_start_time") as! NSDate?)!
    }
    
    func encodeWithCoder(coder: NSCoder ) {
        coder.encodeObject(self.name, forKey: "name")
        coder.encodeObject(self.serverURL, forKey: "server_url")
        coder.encodeObject(self.statusError, forKey: "status_error")
        coder.encodeFloat(self.buildDuration!, forKey: "build_duration")
        coder.encodeObject(self.buildStartTime, forKey: "build_start_time")
        
    }
}

public class ProjectStatus {
    
    var name:String
    var lastBuildStatus:LastBuildStatus = LastBuildStatus.Unknown
    var lastBuildLabel:String?
    var lastBuildTime:NSDate?
    var nextBuildTime:NSDate?
    var activity:Activity = Activity.Sleeping
    var serverURL:NSURL
    
    init(name:String, serverURL:NSURL)
    {
        self.name = name
        self.serverURL = serverURL
    }
}
