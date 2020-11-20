//
//  密钥格式化.swift
//  Algorithm-Swift
//
//  Created by 方昱恒 on 2020/11/18.
//  Copyright © 2020 方昱恒. All rights reserved.
//


class 密钥格式化 {
    func licenseKeyFormatting(_ S: String, _ K: Int) -> String {
        let strArray = Array(S.replacingOccurrences(of: "-", with: ""))
        var groupCount = 0
        var res = [Character]()
        
        for i in (0 ..< strArray.count).reversed() {
            res.append(strArray[i])
            groupCount += 1
            if groupCount == K {
                groupCount = 0
                res.append(Character("-"))
            }
        }
        
        if res.count == 0 {
            return ""
        }
        
        if res.reversed()[0] == Character("-") {
            res.remove(at: res.count - 1)
        }
        
        return String(res.reversed()).uppercased()
    }
}
