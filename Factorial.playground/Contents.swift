//
//  Factorial.playground
//  Factorial
//
//  Created by Alex Carrizo on 6/24/2017.
//  Copyright © 2017 Alex Carrizo. All rights reserved.
//

import UIKit

enum AlgorithmType {
    case iteration
    case recursion
}

func measureExecutionTime(title:String, method:(() -> ()) -> ()) {
    let startTime = CFAbsoluteTimeGetCurrent()
    method() {
        let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
        print("\nTime elapsed for \(title): \(timeElapsed * 1000000) ns")
    }
}

func getFactorialByIteration(_ n: Int) -> Int {
    let sign = n < 0 ? -1 : 1
    if 0...1 ~= abs(n) { return 1 * sign }
    var total = 1
    for number in 2...abs(n) {
        total = total * number
    }
    return total * sign
}

func getFactorialByRecursion(_ n: Int) -> Int {
    func getFactorialForPositiveNByRecursion(_ n: Int) -> Int {
        if 0...1 ~= abs(n) { return 1 }
        return abs(n) * getFactorialForPositiveNByRecursion(abs(n) - 1)
    }
    return getFactorialForPositiveNByRecursion(n) * (n < 0 ? -1 : 1)
}

////////////////////////////////////////////////

let n = 20
let solveBy: AlgorithmType = .recursion

////////////////////////////////////////////////

switch solveBy {
case .recursion:
    measureExecutionTime(title: "getFactorialByRecursion(\(n))") { finish in
        print("\(n)! = \(getFactorialByRecursion(n))")
        finish()
    }
case .iteration:
    measureExecutionTime(title: "getFactorialByIteration(\(n))") { finish in
        print("\(n)! = \(getFactorialByIteration(n))")
        finish()
    }
}


