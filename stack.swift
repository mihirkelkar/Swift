#!/usr/bin/env xcrun swift -i
import Foundation

class Node{
	var value: NSObject?
	var next:Node?

	init(){

	}
	
	init(value: NSObject){
		self.value = value
		self.next = Node()
	}

}


class Stack{
	var top: Node = Node()
	var count:Int = 0
	init(){

	}
	func isEmpty() -> Bool{
		if self.count == 0{
			return true
		}
		else
		{
			return false
		}
	}
	
	func push(value: NSObject){
		if isEmpty(){
			self.top = Node(value: value)
			self.count++
		}
		else{
			var node = Node(value: value)
			node.next = self.top
			self.top = node
			self.count++
		}
	}

	func pop() -> NSObject?{
		if isEmpty(){
			println("Stack Empty. Cannot pop")
			return nil
		}
		else
		{
			var retval = self.top.value
			self.top = self.top.next!
			return retval		
		}
	}

}
var stack_one = Stack()
stack_one.push(2)
stack_one.push(3)
stack_one.push(4)
println(stack_one.top.value)
stack_one.pop()
println(stack_one.top.value)
stack_one.pop()
println(stack_one.top.value)
