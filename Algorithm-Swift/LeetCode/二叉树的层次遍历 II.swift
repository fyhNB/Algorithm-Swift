//
//  二叉树的层次遍历 II.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/10/18.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 二叉树的层次遍历II {
    
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {

        guard let root = root else { return [] }

        var result = [[Int]]()
        var currentTraveling = [root]

        var continueFlag = true

        while continueFlag {
            var currentRowResult = [Int]()
            var willTravel = [TreeNode]()
            for node in currentTraveling {
                currentRowResult.append(node.val)
                if node.left != nil {
                    willTravel.append(node.left!)
                }
                if node.right != nil {
                    willTravel.append(node.right!)
                }
            }
            currentTraveling = willTravel
            result.insert(currentRowResult, at: 0)
            if willTravel.count == 0 {
                continueFlag = false
            }
        }

        return result

    }
    
}
