//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class Solution {
    func reverse(_ x: Int) -> Int {
        
        print(Int32.max);
        print(Int32.min);
        
        var original = x;
        
        var reverse = 0;
        
        while original != 0 {
            let pop = original % 10;
            original /= 10;
            if ( reverse > Int32.max/10 || (reverse == Int32.max / 10 && pop > 7)){
                return 0;
            }
            if ( reverse < Int32.min/10 || (reverse == Int32.max / 10 && pop < -8)) {
                return 0
            }
            reverse = reverse * 10 + pop;
        }
        return reverse;
    }
}




let solu = Solution()
solu.reverse(1)





