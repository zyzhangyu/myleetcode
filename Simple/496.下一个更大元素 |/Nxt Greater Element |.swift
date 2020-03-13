class Solution {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        
        var result = []();
        var dict = [Int:Int]();
        var stack = [Int]();

        for num in nums2 {

            //stack有值
            while !stack.isEmpty && stack.last! < num  {
                let last = stack.removeLast();
                dict[last] = num;
            }
            stack.append(num);
        }

        for num in nums1 {
            result.append(dic[num] ?? -1)
        }
        return result
    }
}
