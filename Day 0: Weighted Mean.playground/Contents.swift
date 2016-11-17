// Enter your code here
import Foundation

// let length = Int(readLine()!)!
// var x = readLine()!.characters.split(" ").map({Double(String.init($0))!})
// var w = readLine()!.characters.split(" ").map({Double(String.init($0))!})

// Sample data
let x: [Double] = [10,40,30,50,20,10,40,30,50,20,1,2,3,4,5,6,7,8,9,10,20,10,40,30,50,20,10,40,30,50]
let w: [Double] = [1,2,3,4,5,6,7,8,9,10,1,2,3,4,5,6,7,8,9,10,10,40,30,50,20,10,40,30,50,20]

func weightedMean(_ x: [Double], _ w: [Double]) -> Double {
    var xwMult = 0.0
    var wSum = 0.0
    
    for i in 0..<x.count {
        xwMult += x[i] * w[i]
        wSum += w[i]
    }
    return (xwMult / wSum)
}

print(String(format:"%.1f", weightedMean(x, w)))

