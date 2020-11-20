//
//  File.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/28.
//  Copyright © 2020 方昱恒. All rights reserved.
//

class Fizz_Buzz {
    
    func fizzBuzz(_ n: Int) -> [String] {
        var result = [String]()
        
        for i in 1 ... n {
            if i % 15 == 0 {
                result.append("FizzBuzz")
            } else if i % 3 == 0 {
                result.append("Fizz")
            } else if i % 5 == 0 {
                result.append("Buzz")
            } else {
                result.append("\(i)")
            }
        }
        
        return result
    }
    
}
