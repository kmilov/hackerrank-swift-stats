//: Playground - noun: a place where people can play
// Rad from input:
// let length = Int(readLine()!)!
// let nums = readLine()!.characters.split(separator: " ").map({Double(String.init($0))!})

// Sample input
let nums: [Double] = [5 , 4, 3, 1, 2, 100, 90, 10, 10]

func bubbleSort(_ nums: [Double]) -> [Double] {
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
func mean(nums: [Double]) -> Double {
    var sum: Double = 0
    for n in nums {
        sum += n
    }
    return sum / Double(nums.count)
}

func median(nums: [Double]) -> Double {
    if nums.count % 2 == 0 {
        let lMedian = nums[nums.count/2]
        let fMedian = nums[(nums.count/2)-1]
        return ( (fMedian+lMedian) / 2)
    }
    else {
        return nums[abs(nums.count/2)]
    }
}

func moda(nums: [Double]) -> Double {
    var previous = nums[0]
    var popular = nums[0]
    var count = 1
    var maxCount = 1
    
    for i in 1..<nums.count {
        if nums[i] == previous {
            count += 1
        }
        else {
            if count > maxCount {
                popular = nums[i-1]
                maxCount = count
            }
            previous = nums[i]
            count = 1
        }
    }
    
    return count > maxCount  ? nums[nums.count-1] : popular
}

func calculate(_ nums: [Double], _ calcFunc: ([Double]) -> Double ) -> Double {
    return calcFunc(nums)
}

let sorted = bubbleSort(nums)
print(calculate(sorted, mean))
print(calculate(sorted,  median))
print(Int(calculate(sorted, moda)))

