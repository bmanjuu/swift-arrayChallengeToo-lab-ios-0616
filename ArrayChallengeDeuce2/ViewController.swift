//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Create your methods here
    func addNameToDeliLine(name: String) -> String {
        
        var greeting: String = ""
        
        if name == "Billy Crystal" {
            deliLine.insert(name, atIndex: 0)
            greeting = "Welcome Billy! You can sit wherever you like."
        }
        else if name == "Meg Ryan" {
            deliLine.insert(name, atIndex: 0)
            greeting = "Welcome Meg! You can sit wherever you like."
        }
        else {
            deliLine.append(name)
        }
        
        
        if greeting.isEmpty {
            for (index, person) in deliLine.enumerate() {
                if index == 0 {
                    greeting = "Welcome \(person), you're first in line!"
                }
                else {
                    greeting = "Welcome \(person), you're number \(index+1) in line."
                }
            }
        }
        
        return greeting
     }
    
    
    
    func nowServing() -> String {
        
        var nextInLine = ""
        
        if deliLine.count > 0 {
            nextInLine = "Now serving \(deliLine[0])!"
            deliLine.removeAtIndex(0)
        }
        else {
            nextInLine = "There is no-one to be served."
        }
        
        return nextInLine
        
    }
    
    
    
    func deliLineDescription() -> String {
        
        var lineDescription = ""
        
        if deliLine.count > 0 {
            lineDescription += "The line is:"
            for (index, person) in deliLine.enumerate() {
                lineDescription += "\n\(index+1). \(person)"
            }
        }
        else {
            lineDescription += "The line is currently empty."
        }
        
        return lineDescription
    }
}



// NOTE: the following code did not work for the addNameToDeliLine function -- it gave the wrong greeting for Billy Crystal (greeting was "Hello Amanda, youre number 4 in line" instead of the proper greeting for Billy) this could have something to do with the else statement overriding the original greeting made for Billy.

//        for (index, person) in deliLine.enumerate() {
//
//            print("index: \(index)   person:\(person)")

//            if person == "Billy Crystal" {
//                greeting = "Welcome Billy! You can sit wherever you like."
//            }
//            else if person == "Meg Ryan" {
//                greeting = "Welcome Meg! You can sit wherever you like."
//            }
//            else if person != "Billy Crystal" || person != "Meg Ryan" && index == 0 {
//                greeting = "Welcome \(person), you're first in line!"
//            }
//            else {
//                greeting = "Welcome \(person), you're number \(index+1) in line."
//            }
//
//            print("greeting: \(greeting)")

//            if index == 0 {
//                switch person {
//                case "Billy Crystal":
//                    greeting = "Welcome Billy! You can sit wherever you like."
//                case "Meg Ryan":
//                    greeting = "Welcome Meg! You can sit wherever you like."
//                default:
//                    greeting = "Welcome \(person), you're first in line!"
//                }
//            }
//            else {
//                greeting = "Welcome \(person), you're number \(index+1) in line."
//            if celebrity {
//                greeting = "Welcome \(name)! You can sit wherever you like"
//            }
//       }
