//: Playground - noun: a place where people can play

import UIKit

var str = "Week 1 - When Im 64 \nNestor (Felix) Sotres\n\nProgram (Class) takes a birthyear and calculates when the user will be 64 using the 5 step process (it was 5 steps we learned last year.\n\n1. Give the class a descriptive name. \n2. Define attributes\n3. Initialize properties and values\n4. Define functions and methods\n5. Instaniate your class"
print(str)

var userBirthYear = 1999    //birthyear used for calculating when youre 64

//1. Give the class a descriptive name
class Calculate64{
    //2. Define attributes
    var birthYear: Int = 1900       //class variable holding users age, 1900 as default
    
    //3. Initialize properties and values
    init(var birthYr: Int){
        
        //make sure user enters date in the 1900s
        guard birthYr > 1899 else {
            print("Please enter a date greater than 1899")
            return
        }
        
        birthYear = birthYr     //initialize the instance variable
        
    }
    
    //4. Define functions and methods
    //function calculates when user will turn 64 and print to terminal
    func calculate64()-> Void{
        
        let turn64in : Int = birthYear + 64
        print("\nBirth year given: \(birthYear)\nYou will turn 64 in the year: \(turn64in)")
    }
    
    
}


//5. Instaniate your class
let run = Calculate64(birthYr: userBirthYear)
//run the calculation
run.calculate64()
