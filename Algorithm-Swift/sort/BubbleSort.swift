//
//  BubbleSort.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/9/22.
//  Copyright © 2020 方昱恒. All rights reserved.
//

import Foundation

struct BubbleSort<T: Comparable>: FYHSort {
    
    
    typealias Element = T

    var array: [T]
    
    var time: TimeInterval = 0
    
    var compared: Int = 0
    
    var exchanged: Int = 0
    
    
    mutating func someSort() -> [T] {
        
        for i in 0 ..< array.count - 1 {
            for j in 0 ..< array.count - i - 1 {
                if compare(array[j], array[j + 1]) > 0 as! T {
                    exchangeAtIndex(j, j + 1)
                }
                print("\(i)" + "    \(j)")
            }
        }
        
        return array
    }
    
    
}
