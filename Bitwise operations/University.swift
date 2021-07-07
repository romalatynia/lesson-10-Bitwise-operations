//
//  University.swift
//  Bitwise operations
//
//  Created by Harbros47 on 24.12.20.
//

import Foundation
struct Student: OptionSet {

    let rawValue: Int
    
    static let studiesBiology = Student(rawValue: 1 << 0)
    static let studiesMath = Student(rawValue: 1 << 1)
    static let studiesDevelopment = Student(rawValue: 1 << 2)
    static let studiesEngineering = Student(rawValue: 1 << 3)
    static let studiesArt = Student(rawValue: 1 << 4)
    static let studiesPhycology = Student(rawValue: 1 << 5)
    static let studiesAnatomy = Student(rawValue: 1 << 6)
  
}
