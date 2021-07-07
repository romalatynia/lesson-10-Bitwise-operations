//
//  ViewController.swift
//  Bitwise operations
//
//  Created by Harbros47 on 24.12.20.
//

import UIKit

class ViewController: UIViewController {
    
    let student = Student(rawValue: 0)
    let listOfItems: [Student] = [
        .studiesArt,
        .studiesBiology,
        .studiesAnatomy,
        .studiesPhycology,
        .studiesMath,
        .studiesDevelopment,
        .studiesEngineering
    ]
    var students: [Student] = []
    var numberOfDeveloper = 0
    var humanities: [Student] = []
    var techie: [Student] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        allocation(students: studentsCreation())
        transfer()
    }
    
    private func studentsCreation() -> [Student] {
        for _ in 1...10 {
            guard let list = listOfItems.randomElement()  else { continue }
            students.append(list)
        }
        return students
    }
    
    private func allocation(students: [Student]) {
        for var humanitiesAndTechie in students {
            if humanitiesAndTechie.contains(.studiesDevelopment) {
                numberOfDeveloper += 1
            }
            if humanitiesAndTechie.contains(.studiesDevelopment) ||
                humanitiesAndTechie.contains(.studiesPhycology) ||
                humanitiesAndTechie.contains(.studiesEngineering) ||
                humanitiesAndTechie.contains(.studiesMath) {
                techie.append(humanitiesAndTechie)
            } else {
                humanities.append(humanitiesAndTechie)
            }
            if humanitiesAndTechie.contains(.studiesBiology) {
                humanitiesAndTechie.remove(.studiesBiology)
                print("Предмет Биология отменён! \(humanitiesAndTechie.contains(.studiesBiology))")
            }
        }
        print("Колличество человек,которые изучают программирование \(numberOfDeveloper)")
    }
    
    private func transfer() {
        let maxInt = Int.random(in: 0...Int.max)
        print(maxInt)
        let binaryNumber = String(maxInt, radix: 2)
        print(binaryNumber)
    }
}
