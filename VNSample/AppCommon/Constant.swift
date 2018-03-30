//
//  Constant.swift
//  Abc
//
//  Created by Vishal Nandoriya on 2/16/18.
//  Copyright © 2018 Abc. All rights reserved.
//

import Foundation

struct DATE_FORMAT {
    static var DISP_DATE = "dd MMM, yyyy"
    static var DISP_DATE_WITH_DAY = "EEEE, dd MMM"
    static var DISP_DATE_WITH_FULL_MONTH = "dd MMMM, yyyy"
    static var SERVER_DATE = "yyyy-MM-dd'T'HH:mm:ss"
}

struct TIME_FORMAT {
    static var DISP_TIME = "hh:mm a"
}

struct CONSTANT{
    static var TIME_ZONE = "Australia/Sydney"
}

//MARK: Alert Messages
public struct StatusCode {
    static let kAPILoginSuccess = 200
    static let kAPIRegisterSuccess = 201
    static let kAPIFailure = 401
}

//MARK: Alert Messages
public let kSomethingWentWrong = "Oops! Something went wrong. Plase try again"
public let kNoInternetConnection = "No Internet Connection!"
public let kVerifying = "Verifying.."

public let kEmailEmpty = "Please enter email."
public let kEmailValid = "Please enter valid email."
public let kPasswordEmpty = "Please enter password."
public let kFirstNameEmpty = "Please enter firstname."
public let kLastNameEmpty = "Please enter lastname."

//MARK: API Request parameters

//Normal Login
public struct LoginRequestKey {
    static let kLoginEmail = "email"
    static let kLoginPassword = "password"
}

//Register
public struct RegisterRequestKey {
    static let kRegisterEmail = "email"
    static let kRegisterPassword = "password"
    static let kRegisterFirstname = "firstname"
    static let kRegisterLastname = "lastname"
}

//Facebook Login
public struct FBLoginRequestKey {
    static let kAccessToken = "token"
}

