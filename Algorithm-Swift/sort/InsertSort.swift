//
//  File.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/9/19.
//  Copyright © 2020 方昱恒. All rights reserved.
//

import Foundation


//fileprivate var array = [3, 5, 1, 7, 0, 2, 9, 8, 4]

// 插入排序
struct InsertSort<T: Comparable>: FYHSort {
    
    typealias Element = T
    
    var array: [T]

    var time: TimeInterval = 0
    var compared: Int = 0
    var exchanged: Int = 0

    
    mutating func someSort() -> [T] {
    
        for i in 1 ..< array.count {
            for j in (0 ..< i).reversed() {
                if compare(array[j], array[j + 1]) > 0 as! T {
                    exchangeAtIndex(j, j + 1)
                } else {
                    break
                }
            }
        }
        
        return array
        
    }

}
