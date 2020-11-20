//
//  HeapSort.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/9/20.
//  Copyright © 2020 方昱恒. All rights reserved.
//

import Foundation

struct HeapSort<T: Comparable>: FYHSort {
    
    
    typealias Element = T
    
    var array: [T]

    var time: TimeInterval = 0
    var compared: Int = 0
    var exchanged: Int = 0

    
    // [3, 5, 1, 7, 0, 2, 9, 8, 4, 6]
    /*  大顶堆：即双亲结点的值要大于两个叶子结点的值，并且左右两个子树也满足此要求。
                     9
                   /   \
                  8     3
                 / \   / \
                7   6  2  1
               / \ /
              5  4 0
     */
    
    
    
    
    // 子树大顶堆化
    private mutating func maxHeapify(index: Int) {
        let left = index << 1 + 1
        let right = index << 1 + 2
        var largest: Int
        
        if left < array.count && compare(array[index], array[left]) < 0 as! T {
            largest = left
        } else {
            largest = index
        }
        
        if right < array.count && compare(array[largest], array[right]) < 0 as! T {
            largest = right
        }
        
        if largest == index {
            return
        } else {
            exchangeAtIndex(index, largest)
            
            maxHeapify(index: largest)
        }
    }
    
    
    // 建立大顶堆
    // 从最后一个非叶子结点往前遍历，对遍历到的每一个结点进行“子树大顶堆化”
    private mutating func makeMaxHeap() {
        for i in (0...array.count / 2).reversed() {
            maxHeapify(index: i)
        }
    }
    
    
    
    // 排序：
    // 交换堆顶和堆中的最后一个元素，这样最后一个元素就是最大的了。
    // 将最后一个元素单独取出来。
    // 让堆中的第0个至第（length - 已经取出来的元素个数）个元素这个子堆再次调用maxHeapify。
    // 剩下的子堆再次变成大顶堆。以此重复。
    mutating func someSort() -> [T] {
        
        makeMaxHeap()
        
        var len = array.count
        var tmpArray : [T] = []
        
        for _ in (0 ..< array.count).reversed() {
            let tmp = array[len - 1]
            array[len - 1] = array[0]
            array[0] = tmp
            len -= 1
            
            tmpArray.insert(array.removeLast(), at: 0)
            
            maxHeapify(index: 0)
        }
        
        array = tmpArray
        
        return array
    }
    
}


