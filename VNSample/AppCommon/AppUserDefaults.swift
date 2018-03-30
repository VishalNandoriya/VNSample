//
//  AppUserDefaults.swift
//  
//
//  Created by Vishal on 6/2/16.
//  Copyright © 2016 Abc. All rights reserved.
//

import UIKit

//NSUserDefaults Keys
let kIsUserLoggedIn = "isUserLoggedIn"

let kAuthtoken = "Authtoken"
let kDeviceToken = "DeviceToken"

let kNotificationStatus = "kNotificationStatus"

let kId = "kId"
let kFirstName = "kFirstName"
let kLastName = "kLastName"
let kPhoneNumber = "kPhoneNumber"
let kZipCode = "kZipCode"
let kEmailID = "kEmailID"
let kGender = "kGender"
let kRoleId = "kRoleId"
let kUserImage = "kUserImage"
let kOldUserId = "kIkOldUserIdd"

private let ApplicationUserDefaults = UserDefaults.standard

class AppUserDefaults: NSObject {
    
    static func saveUserDefaults() {
        ApplicationUserDefaults.synchronize()
    }

    static func restoreDefaultValuses() {
        AuthToken = ""
    }
    
    static var AuthToken : String {
        get {
            let token = ApplicationUserDefaults.value(forKey: kAuthtoken) as? String
            
            return (token != nil) ? token! : ""
        }
        
        set {
            ApplicationUserDefaults.setValue(newValue, forKey: kAuthtoken)
            
            saveUserDefaults()
        }
    }
    
    static func isUserLoggedIn() -> Bool {
        return ApplicationUserDefaults.bool(forKey: kIsUserLoggedIn)
    }
    
    static func setUserLoggedIn(_ status:Bool) {
        
        if status == false {
            
        }
        ApplicationUserDefaults.set(status, forKey: kIsUserLoggedIn)
    }
}
