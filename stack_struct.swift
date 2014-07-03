
struct Stack<T>{
    var list = T[]() // This element gets initialized with the call
    mutating func push(elem: T){
        list.append(elem)
    }
    
    mutating func pop() -> T{
        return list.removeLast()
    }
    
    func peek() -> T{
        return list[list.endIndex - 1]
    }

}


var stack = Stack<Int>()

stack.push(1)
stack.push(2)
stack.push(3)
stack.pop()
