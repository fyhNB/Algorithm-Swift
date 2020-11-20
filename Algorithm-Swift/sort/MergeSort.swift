//
//  MergeSort.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/9/21.
//  Copyright © 2020 方昱恒. All rights reserved.
//

import Foundation

struct MergeSort<T: Comparable>: FYHSort {
    
    typealias Element = T
    
    var array: [T]
    
    var time: TimeInterval = 0
    var compared: Int = 0
    var exchanged: Int = 0

    var start: Int?
    var end: Int?
    
    mutating func someSort() -> [T] {
        if let start = self.start, let end = self.end {
            mergeSort(start: start, end: end)
        }
        
        return array
    }
    
    
    // 递归算法，将数组逐渐分小，直到不可再分（数组元素个数为1）
    // 然后逐渐将分小的数组合并起来，合并的时候按大小顺序合并（merge方法）
    // 先拆分数组左半边，再拆分数组右半边，最后全部合并起来
    private mutating func mergeSort(start: Int, end: Int) {
        if end - start < 2 {
            return
        }
        
        let mid = (start + end) / 2
        
        mergeSort(start: start, end: mid)
        mergeSort(start: mid, end: end)
        
        merge(start: start, mid: mid, end: end)
    }
        
    // 合并。将拆分成两半的数组合并起来。
    // li: left index
    // le: left end
    // ri: right index
    // re: right end
    // ai: array index
    // 将需要合并的数组的左半边备份（leftArray）
    // 用li和ri分别索引左右两边的数组，比较大小，较小的放入原数组，然后索引后移。
    // 如果左边的数组先索引完，则合并结束。右边的先索引完，则将左边剩下的依次放入原数组即可。
    // 注意，虽然是把他们看成一个个的小数组，其实仍然是在原数组中进行操作，并没有被真正拆分出来，只是索引的方式使得它看起来像是被拆分了。
    private mutating func merge(start: Int, mid: Int, end: Int) {
        
        var li = 0
        let le = mid - start
        
        var ri = mid
        let re = end
        
        var ai = start
        
        var leftArray: [T] = []
        
        for i in li ..< le {
            leftArray.append(array[start + i])
        }
        
        while li < le {
            if ri < re && compare(array[ri], leftArray[li]) < 0 as! T {
                array[ai] = array[ri]
                ai += 1
                ri += 1
            } else {
                array[ai] = leftArray[li]
                ai += 1
                li += 1
            }
        }
        
    }
}

