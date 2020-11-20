//
//  QuickSort.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/9/22.
//  Copyright © 2020 方昱恒. All rights reserved.
//

import Foundation


struct QuickSort<T: Comparable>: FYHSort {
    
    typealias Element = T

    var array: [T]

    var time: TimeInterval = 0

    var compared: Int = 0

    var exchanged: Int = 0


    mutating func someSort() -> [T] {

        quickSort(begin: 0, end: array.count)

        return array
    }


    mutating func quickSort(begin: Int, end: Int) {
        if end - begin < 2 {
            return
        }

        let pivot = getPivotIndex(begin: begin, end: end)

        quickSort(begin: begin, end: pivot)

        quickSort(begin: pivot + 1, end: end)

    }
    
    
    mutating func getPivotIndex(begin: Int, end: Int) -> Int {

        let randomIndex = (Int(arc4random()) % (end - begin)) + begin

        exchangeAtIndex(begin, randomIndex)

        let tmpPivot = array[begin]

        var tmpBegin = begin
        var tmpEnd = end - 1

        while tmpBegin < tmpEnd {

            while tmpBegin < tmpEnd {
                if compare(tmpPivot, array[tmpEnd]) < 0 as! T {
                    tmpEnd -= 1
                } else {
                    array[tmpBegin] = array[tmpEnd]
                    tmpBegin += 1
                    break
                }
            }

            while tmpBegin < tmpEnd {
                if compare(array[tmpBegin], tmpPivot) < 0 as! T {
                    tmpBegin += 1
                } else {
                    array[tmpEnd] = array[tmpBegin]
                    tmpEnd -= 1
                    break
                }
            }

        }

        array[tmpBegin] = tmpPivot

        return tmpBegin
    }

}
