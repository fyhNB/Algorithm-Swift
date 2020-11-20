//
//  实现 strStr().swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/14.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 实现strStr {
    
    func strStr(_ haystack: String, _ needle: String) -> Int {
        
        let needleLength = needle.count
        
        if needleLength == 0 || haystack == needle {
            return 0
        }
        
        if haystack.count < needleLength {
            return -1
        }
        
        for i in 0 ... haystack.count - needleLength {
            let subStr = String(haystack[haystack.index(haystack.startIndex, offsetBy: i)..<haystack.index(haystack.startIndex, offsetBy: i + needleLength)])
            if subStr == needle {
                return i
            }
        }
        
        return -1
    }
    
}
