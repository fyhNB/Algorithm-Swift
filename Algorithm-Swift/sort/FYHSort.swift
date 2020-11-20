//
//  FYHSort.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/9/21.
//  Copyright © 2020 方昱恒. All rights reserved.
//

import Foundation


protocol FYHSort {
    
    associatedtype Element: Comparable
    
    var array: [Element] { get set }
    
    var time: TimeInterval { get set }
    
    var compared: Int { get set }
    
    var exchanged: Int { get set }

    
    mutating func someSort() -> [Element]
    
    static func testSort(sorts: Self ...) -> Void

}

extension FYHSort {
    
    static func testSort(sorts: Self ...) -> Void {
        for var sort in sorts {
            sort.sort()
        }
    }
    
    @discardableResult
    mutating func sort() -> [Element] {
        
        let start = Date.init()
        
        let sorted = self.someSort()
        
        time = DateInterval(start: start, end: Date.init()).duration
        
        var timeStr: String
        var comparedStr: String
        var exchangeStr: String
        
        if time * 1000 > 1000 {
            timeStr = String(format: "%.2f", time) + " 秒"
        } else {
            timeStr = String(format: "%.2f", time * 1000) + " 毫秒"
        }
        
        if compared > 10000 {
            comparedStr = "\(compared / 10000) 万"
        } else {
            comparedStr = "\(compared) "
        }
        
        
        if exchanged > 10000 {
            exchangeStr = "\(exchanged / 1000) 万"
        } else {
            exchangeStr = "\(exchanged) "
        }
        
        print("\(Self.self)：\n 耗时 \(timeStr) \n 比较 \(comparedStr)次 \n 交换 \(exchangeStr)次 \n------------------------------------------")
        
        return sorted
        
    }
    
    
    mutating func compare(_ var1: Element, _ var2: Element) -> Element {
        
        compared += 1
        
        if var1 < var2 {
            return -1 as! Self.Element
        }
        else if var1 == var2 {
            return 0 as! Self.Element
        }
        else {
            return 1 as! Self.Element
        }
        
    }
    
    
    mutating func exchangeAtIndex(_ indexA: Int, _ indexB: Int) -> Void {
        exchanged += 1
        let tmp = array[indexA]
        array[indexA] = array[indexB]
        array[indexB] = tmp
    }
    
}
