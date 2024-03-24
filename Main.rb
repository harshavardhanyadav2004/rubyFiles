class Node
    attr_accessor :data , :next 
    
    def initialize(data)
        @data = data 
        @next = nil
    end 
end

class LinkedList 
    attr_accessor :head
    def initialize()
        @head = nil
    end
    def insertAtBeg(data)
        newNode = Node.new(data)
        if @head == nil
            @head = newNode 
            return 
        end 
        newNode.next = @head 
        @head = newNode
    end 
    def insertAtPos(pos,data)
        newNode = Node.new(data)
        if @head == nil   
            puts "LinkedList is empty "
            return
        end
        if pos == 0
            newNode.next = @head 
            @head = newNode 
            return 
        end 
        prev = nil
        curr = @head 
        while pos > 0 
            prev = curr 
            curr = curr.next 
            pos-=1 
        end 
        prev.next = newNode 
        newNode.next = curr 
    end 
        
    def insertAtEnd(data)
        newNode = Node.new(data)
        if @head == nil 
            @head = newNode 
            return 
        end
        temp = @head 
        while temp.next!=nil
            temp = temp.next 
        end 
        temp.next = newNode
    end 
    def traversal()
        array = []
        if @head == nil
            puts "LinkedList is empty"
            return
        end 
        temp = @head
        while temp!=nil
            array.push(temp.data)
            temp = temp.next 
        end 
        puts "The LinkedList is "
        p array
    end 
    def deleteAtbeg()
        if @head == nil 
            puts "LinkedList is empty"
            return 
        end
        @head = @head.next 
    end 
    def deleteAtPos(pos)
        if @head == nil   
            puts "LinkedList is empty"
            return 
        end 
        if pos==0 
            @head = @head.next
            return 
        end
        curr = @head 
        prev = nil 
        while pos >0 
            prev = curr 
            curr = curr.next 
            pos-=1
        end 
        prev.next = curr.next 
    end 
    def deleteAtEnd()
        if @head == nil   
            puts "LinkedList is empty"
            return 
        end 
        prev = nil
        curr = @head 
        while curr.next!=nil
            prev = curr
            curr = curr.next 
        end
        prev.next = curr.next
    end 
end
    
ll1 = LinkedList.new 
ll1.insertAtBeg(1)
ll1.insertAtBeg(2)
ll1.insertAtBeg(3)
ll1.insertAtEnd(4)
ll1.traversal()
ll1.deleteAtbeg()
ll1.traversal()
ll1.deleteAtEnd()
ll1.traversal()
ll1.deleteAtPos(0)
ll1.traversal()
ll1.insertAtEnd(2)
ll1.insertAtEnd(3)
ll1.insertAtEnd(4)
ll1.traversal()
ll1.insertAtPos(1,5)
ll1.traversal()
