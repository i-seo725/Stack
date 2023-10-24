//
//  main.swift
//  test
//
//  Created by 이은서 on 2023/11/01.
//

import Foundation

let n = Int(readLine()!)!
var stack: [Int] = []

for _ in 1...n {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let command = input.first!
    
    switch command {
        case 1:
        stack.append(input[1])
        case 2:
        if stack.isEmpty {
            print(-1)
        } else {
            print(stack.last!)
            stack.removeLast()
        }
        case 3:
        print(stack.count)
        case 4:
        if stack.isEmpty {
            print(1)
        } else {
            print(0)
        }
        case 5:
        if stack.isEmpty {
           print(-1)
        } else {
            print(stack.last!)
        }
        default: continue
    }
}
