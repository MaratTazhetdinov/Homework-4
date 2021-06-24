//
//  ViewController.swift
//  Homework 4
//
//  Created by Marat Tazhetdinov on 24.06.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        //Task 1
        print("------------------------------------------")
        print("Task 1")
        var employee1: (name: String, age: Int, salary: Float) = ("Ivan", 42, 75000.00)
        var employee2: (name: String, age: Int, salary: Float) = ("Oleg", 28, 56000.00)
        var employee3: (name: String, age: Int, salary: Float) = ("Olga", 35, 62000.00)
        
        func printEmployeeInfo(employee: (name: String, age: Int, salary: Float)){
            print("Name: \(employee.name), age: \(employee.age), salary: \(employee.salary)")
        }
        
        print ()
        print("Before:")
        printEmployeeInfo(employee: employee1)
        printEmployeeInfo(employee: employee2)
        printEmployeeInfo(employee: employee3)
        print()
        
        func salaryIncrease(name: String, age: Int, salary: inout Float){
            switch age{
            case 18...30:
                salary *= 1.5
            case 31...40:
                salary *= 2
            default:
                salary *= 3
            }
        }
        
        salaryIncrease(name: employee1.name, age: employee1.age, salary: &employee1.salary)
        salaryIncrease(name: employee2.name, age: employee2.age, salary: &employee2.salary)
        salaryIncrease(name: employee3.name, age: employee3.age, salary: &employee3.salary)
        print("After salary increase:")
        printEmployeeInfo(employee: employee1)
        printEmployeeInfo(employee: employee2)
        printEmployeeInfo(employee: employee3)
        print()
        
        //Task 2
        print("------------------------------------------")
        print("Task 2")
        print()
        
        let a: Double = 32
        print("a = \(a)")
        let b: Double = 47
        print("b = \(b)")
        let c: Double = 89
        print("c = \(c)")
        
        print()
        
        func avgOfThreeNumbs(x: Double, y: Double, z: Double){
            let avg: Double = (x+y+z)/3
            print("Average value: \(avg)")
        }
        
        avgOfThreeNumbs(x: a, y: b, z: c)
        print()
        
        //Task 3
        print("------------------------------------------")
        print("Task 3")
        print()
        
        func calculationCredit(sum: Double, period: Double, percent: Double){
            //Monthly payment
            let m: Double = (sum * (percent / 100) * pow(1+percent/100, period)) / (12 * ((pow(1+percent/100, period))-1))
            //Total payment
            let s: Double = (m*12) * period
            
            print ("Credit amount: \(Int(sum)) RUB")
            print ("Period: \(Int(period)) years")
            print ("Percent: \(Int(percent)) %")
            print ("Monthly payment: \(round(100*m)/100) RUB")
            print ("Total payment: \(round(100*s)/100) RUB")
        }
        
        calculationCredit(sum: 5000000, period: 20, percent: 15)
    }


}

