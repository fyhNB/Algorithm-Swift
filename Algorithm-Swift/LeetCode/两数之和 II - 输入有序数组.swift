//
//  两数之和 II - 输入有序数组.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/19.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 两数之和II输入有序数组 {
    
    // 哈希表
//    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
//
//        var result = [Int]()
//
//        var dict = [Int : Int]()
//
//        for i in 0 ..< numbers.count {
//            let remain = target - numbers[i]
//
//            if dict.keys.contains(numbers[i]) {
//                result = [dict[numbers[i]]! + 1, i + 1]
//                break
//            }
//
//            dict[remain] = i
//        }
//
//        return result
//
//    }
    
    // 双指针
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        
        var result = [Int]()
        
        var left = 0
        var right = numbers.count - 1
        
        while left <= right {
            if numbers[left] + numbers[right] == target {
                result = [left + 1, right + 1]
                break
            } else if numbers[left] + numbers[right] > target {
                right -= 1
            } else if numbers[left] + numbers[right] < target {
                left += 1
            }
        }
        
        return result
        
    }
    
}
