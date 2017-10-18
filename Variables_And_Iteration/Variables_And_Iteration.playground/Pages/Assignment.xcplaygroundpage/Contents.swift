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

//No fill
canvas.drawShapesWithFill = false
canvas.drawShapesWithBorders = true
canvas.borderColor = Color.purple
// Loop to set horizontal position
for x in stride(from: 50, through: 450, by: 100){
 
    // Loop to set vertical position
    for y in stride(from: 450, through: 50, by: -100){
        // Draw five squares
        for z in stride(from: 100, through: 20, by: -20){
            canvas.drawRectangle(centreX: x, centreY: y, width: z, height: z)
        }
    }
}


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
