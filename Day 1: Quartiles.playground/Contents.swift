//: Playground - noun: a place where people can play
//       0  1  2  3  4    5   6   7   8
//let nums = Int(readLine()!)!
//let data = readLine()!.characters.split(" ").map({Int(String.init($0))!})
let data = [3, 5, 7, 8, 12, 13, 14, 18, 21]

func bubbleSort(nums: [Int]) -> [Int] {
    var sorted = nums
    
    for i in 0..<sorted.count {
        for j in (i+1)..<sorted.count {
            if sorted[i] > sorted[j] {
                let aux = sorted[i]
                sorted[i] = sorted[j]
                sorted[j] = aux
            }
        }
    }
    
    return sorted
}

func getQuartile(dataset: [Int]) -> Int {
    var quartile = 0
    
    if dataset.count % 2 == 0 {
        quartile = (dataset[abs(dataset.count/2)] + dataset[ (dataset.count/2) - 1 ] ) / 2
    }
    else {
        quartile = dataset[dataset.count / 2]
    }
    
    return quartile
}


let x = bubbleSort(nums: data)

var q1set: [Int]
var q3set: [Int]

if x.count % 2 == 0 {
    q1set = Array(x[0...(x.count/2)-1])
    q3set = Array(x[(x.count/2)...(x.count-1)])
}
else {
    q1set = Array(x[0...(x.count/2)-1])
    q3set = Array(x[(x.count/2)+1...(x.count-1)])
}



print(getQuartile(dataset: q1set))
print(getQuartile(dataset: x))
print(getQuartile(dataset: q3set))
