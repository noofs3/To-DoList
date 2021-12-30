//
//  main.swift
//  list
//
//  Created by Nouf Saud on 26/12/2021.
//

import Foundation

//class Tasks {
//
//    var task: String
//    var taskPriority: String
//
//    init(task: String,taskPriority: String){
//        self.task = task
//        self.taskPriority = taskPriority
//    }
//
//}


//    func toDo(){
//
//        var todolist:[Tasks] = [] // i can add more list for each priority????
//        var check = true
//
//        repeat{
//            print("""
//                  Please type your task to the To-Do List,otherwise type 'quit' if you don't have any more tasks to add.
//                  """)
//            if let userTask : String = readLine(){
//                if(userTask.lowercased() == "quit"){
//                    check = false
//                    print (todolist)
//                    break
//                }
//                else{
//                    print("print priority")
//                    if let taskPriority  = readLine(){
//
//                        let task1 = Tasks(task: userTask,taskPriority: taskPriority)
//                                                        todolist.append(task1)
//                        if let priorityNumber = Int(taskPriority) {
//
//                            if priorityNumber == 1{
//                                let priorityString = String(priorityNumber)
//                                let task1 = Tasks(task: userTask,taskPriority: priorityString)
//                                todolist.append(task1)
//
//                            }// here check which case the user enters
//                            else if priorityNumber==2{
//                                let priorityString = String(priorityNumber)
//                        let task2 = Tasks(task: userTask,taskPriority: priorityString)
//                        todolist.append(task2)// here to add in each list
//                            }
//                            else if priorityNumber==3{
//                                let priorityString = String(priorityNumber)
//                                let task3 = Tasks(task: userTask,taskPriority: priorityString)
//                                todolist.append(task3)
//
//                            } else if priorityNumber==4{
//                                let priorityString = String(priorityNumber)
//                                let task4 = Tasks(task: userTask,taskPriority: priorityString)
//                                todolist.append(task4)
//                            }
//                            else{
//                                print("i cant recognize it ")
//                            }
//                        }
//                    }
//                }
//            }
//
//        }while check
//
//
//    }


//Please type your task to the To-Do List,
//otherwise type 'quit' if you don't have any more tasks to add.

//public protocol SomeEnum {
//    var rawValue: String { get }
//}
//
//enum PriorityType: SomeEnum {
//
//    case urgent
//    case high
//    case medium
//    case low
//
//   var rawValue: String{
//        var enumerate: [PriorityType] {
//        var a: [PriorityType] = []
//        var b: [PriorityType] = []
//        var c: [PriorityType] = []
//        var d: [PriorityType] = []
//
//            switch self {
//            case .urgent:
////                a.append(.urgent)
////                    return a
//                return "urgent"
//            case .high:
////                b.append(.high);
////                return b
//                return"high"
//            case .medium:
////                    c.append(.medium);
////                    return c
//                return"medium"
//            case .low:
////                d.append(.low)
////                return d
//                return "low"
//            }
//
//        }
//
//    }
//
//


func simple(){
    print("Enter your task, otherwise type 'quit' if you don't have any")
    var firstArray = [String]()
    var secondArray = [String]()
    var thirdArray = [String]()
    var forthArray = [String]()
    while let input = readLine() {
        guard input != "quit" else {
            print("\n ------------------------------------------------------------------------------")
            print("Your TO-DO LIST based on the priority contains the following :")
            
            if firstArray.isEmpty == false{
                print("* Your Important and Urgent Tasks are:")
                for item in firstArray {
                    
                    print(item)
                }
                print()
                print("-- You Have To Do It Immediately")
                print("")
            }
            if secondArray.isEmpty == false{
                print("* Your Important but Not Urgent Tasks are:")
                for item in secondArray {
                    
                    print(item)
                }
                print()
                print("Do Them As Soon As Possible Before they Become Urgent")
                print()

            }
            if thirdArray.isEmpty == false{
                print("* Your Not Important but Urgent Tasks are:")
                for item in thirdArray {
                    
                    print(item)
                }
                print()
                print("You can Reschedule or Delegate Them.")
                print()
            }
            if forthArray.isEmpty == false{
                print("* Your Not Important and Not Urgent Tasks are:")
                for item in forthArray {
                    
                    print(item)
                }
                print()
                print("You can Avoid Them Now.")
                print()
            }
            break
        }
        if !firstArray.contains(input) && !secondArray.contains(input) && !thirdArray.contains(input) && !forthArray.contains(input){
            print("""
                  Enter the priority of the task where:
                  1 means Important and Urgent
                  2 means Important but Not Urgent
                  3 means Not Important but Urgent
                  4 means Not Important and Not Urgent
""")
            if let prioirty = readLine(){
                let prioirtyNumber = Int(prioirty)
                switch prioirtyNumber{
                case 1:
                    firstArray.append(input)
//                    print("You entered: \(input)")
                case 2:
                    secondArray.append(input)
//                    print("You entered: \(input)")
                case 3:
                    thirdArray.append(input)
//                    print("You entered: \(input)")
                case 4:
                    forthArray.append(input)
//                    print("You entered: \(input)")
                    
                default:
                    print("Can't recognize the priority you have entered")
                }
            }
        } else {
            print("This task  \(input), already exits")
        }
        print()
        print("Enter another task, otherwise type 'quit' if you don't have any more tasks to add")
    }
}
print(simple())


//if let UserChoice = readLine(){
//    if let UserChoiceNums = Int(UserChoice){
//        if (UserChoiceNums == 1 ){
//            print("please enter your task to TO-DO List")
//            let UserTask = readLine()
//                let check = "Your task is " + UserTask!
//                print(check)
//
//        }
//        else if (UserChoiceNums == 0 ){
//            print ("your list is completely added")
//        }
//        else {
//            print("can't recognize your input")
//        }
//
//}}
