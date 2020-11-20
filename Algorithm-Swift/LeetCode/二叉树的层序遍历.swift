//
//  二叉树的层序遍历.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/17.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 二叉树的层序遍历 {
    
    func levelOrder(_ root: TreeNode?) -> [[Int]] {

        if root == nil {
            return []
        }

        var result = [[Int]]()
        var recordQueue = [root]
        var nextQueue = [TreeNode?]()
        var continueFlag = true

        var row = 0
        while continueFlag {
            result.append([Int]())
            for node in recordQueue {
                if let node = node {
                    result[row].append(node.val)
                }
                if let left = node?.left {
                    nextQueue.append(left)
                }
                if let right = node?.right {
                    nextQueue.append(right)
                }
            }
            recordQueue = nextQueue
            nextQueue = []
            row += 1
            if recordQueue.count == 0 {
                continueFlag = false
            }
        }

        return result

    }
        
}
