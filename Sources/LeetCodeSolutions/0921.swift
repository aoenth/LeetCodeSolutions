//
//  File.swift
//  
//
//  Created by Kevin Peng on 2021-05-23.
//

import Foundation

struct Q0921 {
    
    //0ms?
    class Solution {
        func minAddToMakeValid(_ s: String) -> Int {
            guard s.count > 1 else { return s.count }
            var balance = 0
            var redundants = 0
            for c in s {
                if c == "(" {
                    balance -= 1
                } else if balance < 0 {
                    balance += 1
                } else {
                    redundants += 1
                }
            }
            return abs(balance) + redundants
        }
    }
}
