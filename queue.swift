struct  queue<T>{
    var list = T[]()
    
    mutating func enqueue(value: T){
        list.append(value)
    }
    
    mutating func dequeue(){
        list.removeAtIndex(0)
    }
    
}

var temp = queue<String>()
temp.enqueue("Mihir")
temp.enqueue("Kelkar")
temp.dequeue()
temp.enqueue("Nutanix")
