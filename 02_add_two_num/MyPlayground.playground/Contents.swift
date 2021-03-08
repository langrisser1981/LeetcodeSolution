import UIKit

var str = "Hello, playground"
public class Node{
    public var val:Int
    public var next:Node?
    init(_ val:Int){
        self.val = val
        self.next = nil
    }
}

class Solution{
    func addTwoNumbers(_ n1:Node?, _ n2:Node?) -> Node?{
        if n1 == nil{
            return n2
        }
        if n2 == nil{
            return n1
        }
        
        var n1Tail:Node? = n1
        var n2Tail:Node? = n2
        
        var head:Node? = nil
        var tail:Node? = nil
        var carry:Int = 0
        
        while n1Tail != nil || n2Tail != nil{
            let sum = (n1Tail?.val ?? 0) + (n2Tail?.val ?? 0)
            carry = sum / 10
            let val = sum % 10
            
            let node = Node(val)
            if head == nil{
                head = node
            }else{
                tail?.next = node
            }
            tail = node
            
            n1Tail = n1Tail?.next
            n2Tail = n2Tail?.next
        }
        
        if carry != 0{
            tail?.next = Node(carry)
        }
        return head
    }
}

let n1 = Node(2)
let n2 = Node(4)
n1.next = n2
let n3 = Node(9)
n2.next = n3

let n4 = Node(5)
let n5 = Node(6)
n4.next = n5
let n6 = Node(4)
n5.next = n6

let solution = Solution()
let result = solution.addTwoNumbers(n1, n4)
