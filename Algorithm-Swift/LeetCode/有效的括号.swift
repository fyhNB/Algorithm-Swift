//
//  有效的括号.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/14.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 有效的括号 {
    
    func isValid(_ s: String) -> Bool {
        
        if s.count == 0 {
            return false
        }
        
        var stack = FYHStack<String>()
        
        var flag = true
        
        for char in s {
            let char = String(char)
            if isPush(char) {
                stack.push(char)
            } else {
                if (stack.pop() != reversedBracket(char)) {
                    flag = false
                }
            }
        }
        
        if stack.top != -1 {
            flag = false
        }
        
        return flag
    }
    
    private func isPush(_ s: String) -> Bool {
        if s == "(" || s == "[" || s == "{" {
            return true
        } else {
            return false
        }
    }
    
    private func reversedBracket(_ s: String) -> String {
        let dict = [
            "]": "[",
            ")": "(",
            "}": "{"
        ]
        
        return dict[s] ?? ""
    }
    
}


struct FYHStack<T> {
    
    private var stack = [T]()
    
    private(set) var top = -1
    
    mutating func push(_ element: T) {
        stack.append(element)
        top += 1
    }
    
    mutating func pop() -> T? {
        guard top >= 0 else { return nil }
        top -= 1
        return stack.removeLast()
    }
    
    mutating func isEmpty() -> Bool {
        return top == -1
    }
    
}
