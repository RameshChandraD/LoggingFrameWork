//
//  Validations.swift
//  Seller_iOS-App
//
//  Created by Apple on 9/22/17.
//  Copyright © 2017 LetsMobility. All rights reserved.
//

import UIKit
class Validations: NSObject {
  // email validation
  class func isValidEmail(testStr: String) -> Bool {
    print("validate emilId: \(testStr)")
    let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailFormat)
    return emailPredicate.evaluate(with: testStr)
  }
  //phone number validation
  class func validatePhoneNumber(value: String) -> Bool {
    let PHONE_REGEX = "^\\d{3}-\\d{3}-\\d{4}$"
    let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
    let result =  phoneTest.evaluate(with: value)
    return result
  }
  //pincode validation with count
  func isValidPincode(value: String, count: Int) -> Bool {
    if value.count == count {
      return true
    } else {
      return false
    }
  }
  // allow numbers only with limit
  static func allowOnlyNumber(string: String) -> Bool {
    let allowedCharacters = CharacterSet.decimalDigits
    let characterSet = CharacterSet(charactersIn: string)
    return allowedCharacters.isSuperset(of: characterSet)
  }
  // confirm password validation
  class func isPasswordSame(password: String, confirmPassword: String) -> Bool {
    if password == confirmPassword {
      return true
    } else {
      return false
    }
  }
  //limited string only validation
  class func islimitedString(string: String, limit: Int) -> Bool {
    if string.count == limit {
      return true
    } else {
      return false
    }
  }
  //    Password Validation Type - 1
  //
  //    1 - Password length is 8.
  //    2 - One Alphabet in Password.
  //    3 - One Special Character in Password.
  //
  //
  
  //    Explanation:
  //
  //    ^                              - Start Anchor.
  //    (?=.*[a-z])              -Ensure string has one character.
  //    (?=.[$@$#!%?&])   -Ensure string has one special character.
  //    {8,}                            -Ensure password length is 8.
  //    $                               -End Anchor.
  
  class func isPasswordValid1(_ password: String) -> Bool {
    let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
    return passwordTest.evaluate(with: password)
  }
  //    Password Validation Type - 2
  //
  //    1 - Password length is 8.
  //    2 - 2 UpperCase letters in Password.
  //    3 - One Special Character in Password.
  //    4 - Two Number in Password.
  //    5- Three letters of lowercase in password.
  //
  //    Explanation:
  //
  //    ^                                                          -Start Anchor.
  //    (?=.*[A-Z].*[A-Z])                            -Ensure string has two uppercase letters.
  //    (?=.[$@$#!%?&])                                -Ensure string has one special character.
  //    (?=.*[0-9].*[0-9])                              -Ensure string has two digits.
  //    (?=.*[a-z].*[a-z].?*[a-z])                 -Ensure string has three lowercase letters.
  //    {8,}                                                         -Ensure password length is 8.
  //    $                                                          -End Anchor.
  //
  class func isPasswordValid2(_ password: String) -> Bool {
    let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[A-Z].*[A-Z])(?=.*[!@#$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{8}$")
    return passwordTest.evaluate(with: password)
  }
}
