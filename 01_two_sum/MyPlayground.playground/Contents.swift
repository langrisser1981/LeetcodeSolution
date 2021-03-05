import UIKit

var str = "two_sum"
class Solution{
    func twoSum(_ nums:[Int], _ target:Int) -> [Int]{
        var numberIndexDict = [Int:Int]()
        
        for (index, num) in nums.enumerated(){
            guard let pairedIndex = numberIndexDict[target - num] else{
                numberIndexDict[num] = index
                continue
            }
            
            return [pairedIndex, index]
        }
        
        return [-1,-1]
    }
}

let solution = Solution()
solution.twoSum([3,2,4], 5)
