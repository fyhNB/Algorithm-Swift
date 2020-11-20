//
//  二进制求和.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/16.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 二进制求和 {
    
    func addBinary(_ a: String, _ b: String) -> String {
        
        var forward = false       // 进位标识
        
        var longest = (a.count > b.count) ? a : b
        
        let shortest = (a.count < b.count) ? a : b
        
        for i in 0 ..< shortest.count - 1 {
            if forward {
                if (String(a[a.index(a.startIndex, offsetBy: i)]) == String(b[b.index(b.startIndex, offsetBy: i)])) && String(a[a.index(a.startIndex, offsetBy: i)]) == "1" {
                    
                    forward = true
                    
                } else if String(a[a.index(a.startIndex, offsetBy: i)]) == "1" && String(b[b.index(b.startIndex, offsetBy: i)]) != "1" || String(b[b.index(b.startIndex, offsetBy: i)]) == "1" && String(a[a.index(a.startIndex, offsetBy: i)]) != "1"{
                    
                    longest.replaceSubrange(longest.index(longest.startIndex, offsetBy: i) ... longest.index(longest.startIndex, offsetBy: i), with: "0")
                    
                    forward = true
                    
                } else {
                    longest.replaceSubrange(longest.index(longest.startIndex, offsetBy: i) ... longest.index(longest.startIndex, offsetBy: i), with: "1")
                    
                    forward = false
                }
            } else {
                if (String(a[a.index(a.startIndex, offsetBy: i)]) == String(b[b.index(b.startIndex, offsetBy: i)])) && String(a[a.index(a.startIndex, offsetBy: i)]) == "1" {
                    
                    longest.replaceSubrange(longest.index(longest.startIndex, offsetBy: i) ... longest.index(longest.startIndex, offsetBy: i), with: "0")
                    
                    forward = true
                    
                } else if String(a[a.index(a.startIndex, offsetBy: i)]) == "1" && String(b[b.index(b.startIndex, offsetBy: i)]) != "1" || String(b[b.index(b.startIndex, offsetBy: i)]) == "1" && String(a[a.index(a.startIndex, offsetBy: i)]) != "1"{
                    
                    longest.replaceSubrange(longest.index(longest.startIndex, offsetBy: i) ... longest.index(longest.startIndex, offsetBy: i), with: "1")
                    
                    forward = false
                    
                } else {
                    longest.replaceSubrange(longest.index(longest.startIndex, offsetBy: i) ... longest.index(longest.startIndex, offsetBy: i), with: "0")
                    
                    forward = false
                    
                }
            }
        }
        
        let diff = abs(a.count - b.count)
        
        if forward {
            if diff != 0 {
                longest.replaceSubrange(longest.index(longest.startIndex, offsetBy: diff - 1) ... longest.index(longest.startIndex, offsetBy: diff), with: "1")
            } else {
                longest = "1".appending(longest)
            }
        }
        
        return longest
            
    }
    
}
