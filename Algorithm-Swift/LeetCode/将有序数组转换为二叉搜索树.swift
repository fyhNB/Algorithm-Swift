//
//  将有序数组转换为二叉搜索树.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/18.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 将有序数组转换为二叉搜索树 {
    
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        
        return sortedArrayToBST(nums, begin: 0, end: nums.count)
    
    }
    
    private func sortedArrayToBST(_ nums: [Int], begin: Int, end: Int) -> TreeNode? {
        
        
        if begin == end {
            return nil
        }
        
        let mid = (begin + end - 1) / 2
        
        let root = TreeNode(nums[mid])
        
        root.left = sortedArrayToBST(nums, begin: begin, end: mid)
        root.right = sortedArrayToBST(nums, begin: mid + 1, end: end)
        
        return root

    }
    
}
