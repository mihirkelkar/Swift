#!/usr/bin/env xcrun swift -i
import Foundation
class Node{
	var value: NSObject?
	var next: Node?
	//Need two inits, one to define a dummy init instead of a nil
	init(){

	}
	
	init(value: NSObject){
		self.value = value
		//Just defining a dummy node here
		self.next = Node()
	}
}

class LinkedList{
	var count: Int = 0
	var head: Node = Node()
	var tail: Node = Node()

	init(){

	}
	
	func isEmpty() -> Bool{
		return self.count == 0
	}

	func addnode(value: NSObject){
		if isEmpty(){
			self.head = Node(value: value)
			self.tail = self.head
		}
		else{
			var node = Node(value: value)
			self.tail.next = node
			self.tail = self.tail.next!
		}
		self.count++
	}
	func print(){
		if isEmpty(){
			println("Nothing to print")
		}
		else{
			var cur = self.head
			while(cur.next != nil){
				println(cur.value)
				cur = cur.next!
			}
		}
	}
	
}

var Linked = LinkedList()
for ii in 0..11 {
	Linked.addnode(ii)
}
println(Linked.head.value)
println(Linked.tail.value)
