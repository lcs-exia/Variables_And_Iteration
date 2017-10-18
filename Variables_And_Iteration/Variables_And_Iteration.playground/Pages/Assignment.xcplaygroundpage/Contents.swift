//: [Previous](@previous)
//: # Assignment
//: Return to the plans you made at the start of this course for an image that used elements of repetition.
//:
//: Mr. Gordon will be emailing this to you.
//:
//: Reproduce that image in code, below.
//:
//: Remember to commit and push your work often.
//:
//: ![commit_menu](commit_menu.png "Commit")
//:
//: ## Required code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

//: ## Add your code below

// Create canvas
let canvas = Canvas(width: 500, height: 500)

// Draw Lines
for x in stride(from: 50, through: 450, by: 100){
    canvas.drawLine(fromX: x, fromY: 0, toX: x, toY: 500)
}
for y in stride(from: 50, through: 450, by: 100){
    canvas.drawLine(fromX: 0, fromY: y, toX: 500, toY: y)
}
for x in stride(from: 0, through: 500, by: 100){
    for y in stride(from: 0, through: 500, by: 100){
        canvas.drawLine(fromX: x, fromY: y, toX: y, toY:x )
        canvas.drawLine(fromX: x, fromY: y, toX: -y, toY: -x)
        canvas.drawLine(fromX: x, fromY: y, toX: y, toY: y)
        canvas.drawLine(fromX: y, fromY: x, toX: x, toY: x)
    }
}

// Draw Squares
for x in stride(from: <#T##Strideable#>, through: <#T##Strideable#>, by: <#T##Comparable & SignedNumeric#>)

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
