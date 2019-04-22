//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class Solution {
    
    
    func romanToInt(s: String) -> Int {
        
        var dict = [String: Int]()
        
        dict["I"] = 1
        dict["V"] = 5
        dict["X"] = 10
        dict["L"] = 50
        dict["C"] = 100
        dict["D"] = 500
        dict["M"] = 1000
        
        
        var res = 0
        let chats = [Character](s.characters.reversed())
        for i in 0..<chats.count {
            
            
            if let number = dict[String(chats[i])] {
                
                if (i > 0) && (number < dict[String(chats[i-1])]!){
                    
                    res -= number
                }else {
                    res += number
                }
            }
            
        }
        
        
        
        return res
    }
}

let solution = Solution()
solution.romanToInt(s: "IV")
