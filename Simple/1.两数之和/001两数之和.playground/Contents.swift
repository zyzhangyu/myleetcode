//: A UIKit based Playground for presenting user interface

//张宇，2019年2月21日，leetcode题号01，两数之和三种解法，完毕！

class Solution1 {

    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        let count = nums.count
        for i in 0..<count {
            for j in (i+1)..<count{
                if nums[i] + nums[j] == target {
                    return [i,j];
                }
            }
        }
        return [];
    }
}



class Solution2 {

    var nums = [2, 7, 11, 15]
    let target = 9



    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

        var dic = [Int:Int]()
        let count = nums.count;

        for i in 0..<count {
            dic[nums[i]] = i;
        }

        for i in 0..<count {
            let found = target - nums[i];
            if let j = dic[found], i != j {
                return [i,j]
            }
        }

        return []
    }
}



class Solution3 {
    
    var nums = [2, 7, 11, 15]
    let target = 9
    
    
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var dic = [Int:Int]()
        let count = nums.count;
        
        for i in 0..<count {
            let found = target - nums[i]
            if let j = dic[found] {
                return [i,j]
            }
            dic[nums[i]] = i;
        }
        
        return []
    }
}
