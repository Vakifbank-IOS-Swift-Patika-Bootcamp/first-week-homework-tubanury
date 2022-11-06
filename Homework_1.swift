import Foundation
import Swift


func isPalindrome(str: String) -> Bool {
    if str == String(str.reversed()) {
        return true
    }
    return false
    
    
}

func countElements<T: Hashable>(arr: Array<T>) -> Dictionary<T, Int>{
    var counts: [T: Int] = [:]
    arr.forEach { counts[$0, default: 0] += 1 }
    print(counts)
    return counts
}

func drawPyramidLeft(num: Int) {
    for i in 0...num-1 {
        for _ in 0...i{
            print("*", terminator:"")
        }
       print(" ")
    }
 //print(str)
}

func drawPyramidMid(num: Int) {
    for i in 0...(num-1){
        for _ in 0...(num-i-1){
            print(" ", terminator:"")
        }
        for _ in 0...i{
            print("*", terminator: " ")
        }
        print(" ")
    }
    
}

func sumOfMultiples() -> Int {
    var result = 0
    for i in 0...1000{
        if(i%3 == 0 || i%5 == 0){
            result += i
        }
    }
    return result
}

func evenFibonnaciSum(limit: Int = 4000000) -> Int {
    
    if limit < 2 {
        return 0
    }
    var evenFibonacci1 = 0
    var evenFibonacci2 = 2
    var evenFibonacci3 = 0

    var sum = evenFibonacci1 + evenFibonacci2
    
    while evenFibonacci2 < limit {
        evenFibonacci3 = 4 * evenFibonacci2 + evenFibonacci1
        if evenFibonacci3 > limit{
            break
        }
        evenFibonacci1 = evenFibonacci2
        evenFibonacci2 = evenFibonacci3
        sum = sum + evenFibonacci2
        
    }
    return sum
}


func findLargestPrimeFactor(num: Int = 600851475143) -> Int {
    var factors = [Int]()
    var d = 2
    var n = num
    while n > 1 {
        while n % d == 0 {
            factors.append(d)
            n /= d
        }
        d = d + 1
    }
        

    return factors.max() ?? 0
    
}



isPalindrome(str: "kazak") ? print("yes") : print("no")

print(countElements(arr: ["t","e","t"]))

drawPyramidLeft(num: 3)

drawPyramidMid(num: 3)

print(findLargestPrimeFactor())
print(evenFibonnaciSum())

