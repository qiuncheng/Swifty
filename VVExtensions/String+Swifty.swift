//
//  String+Swifty.swift
//  Swifty
//
//  Created by vsccw on 2018/4/27.
//  Copyright © 2018年 vsccw. All rights reserved.
//

import Foundation

public extension String {
  var nsstr: NSString {
    return self as NSString
  }
}

public extension NSString {
  var str: String {
    return self as String
  }
}

// MARK: - index
public extension String {
  func lastIndexOf(_ string: String) -> Int {
    let range = self.range(of: string, options: .backwards, range: nil, locale: nil)
    return range?.lowerBound.utf16Offset(in: self) ?? -1
  }

  //TODO: - indexOf
  func indexOf(_ string: String) -> Int {
    return 1
  }

  //TODO: - indexOf
  func indexOf(_ string: String, start location: Int) -> Int {
    return 1
  }
}

// MARK: - length
public extension String {
  var length: Int {
    return unicodeScalars.count
  }
}

public extension String {
  static func randomPassword(length: Int) -> String {
    let allCharacters = ["a", "b", "c", "d", "e", "f",
                         "g", "h", "i", "j", "k", "l",
                         "m", "n", "o", "p", "q", "r",
                         "s", "t", "u", "v", "w", "x",
                         "y", "z", "1", "2", "3", "4",
                         "5", "6", "7", "8", "9", "0",
                         "A", "B", "C", "D", "E", "F",
                         "G", "H", "I", "J", "K", "L",
                         "M", "N", "O", "P", "Q", "R",
                         "S", "T", "U", "V", "W", "X",
                         "Y", "Z", "!", "@", "#", "$",
                         "%", "^", "&", "*"]
    return (0 ..< length).reduce("") { (r, _) in
      return r + allCharacters.random.or("#")
    }
  }
}
