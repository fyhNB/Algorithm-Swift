//
//  LeetCode.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/9/27.
//  Copyright © 2020 方昱恒. All rights reserved.
//

import Foundation

public class TreeNode {
    
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init() {
        self.val = 0;
        self.left = nil;
        self.right = nil;
    }
    
    public init(_ val: Int) {
        self.val = val;
        self.left = nil;
        self.right = nil;
    }
    
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
    
    public func preOrder() {
        
        print(self.val, terminator: " ")
        self.left?.preOrder()
        self.right?.preOrder()
        
    }
    
    public func inOrder() {
        
        self.left?.preOrder()
        print(self.val, terminator: " ")
        self.right?.preOrder()
    
    }
}


class RootNodeOfSearchTree {

    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        
        var root = root
        
        while root != nil {
            if p!.val < root!.val && q!.val < root!.val {
                root = root!.left
            } else if p!.val > root!.val && q!.val > root!.val {
                root = root!.right
            } else {
                break
            }
        }
        
        return root
    }
    
}
