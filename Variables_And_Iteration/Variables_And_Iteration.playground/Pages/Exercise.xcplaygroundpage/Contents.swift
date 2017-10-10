//: [Previous](@previous) / [Next](@next)
//: # Exercise
//: Say that we want to create this mountain scene on a 300x300 canvas:
//:
//: ![mountains](mountains.png "Mountains")
//:
//: At first glance this may seem like a complicated image.
//:
//: However, if we break down, or *decompose* the problem (get your whiteboard out!) it's not so bad.
//:
//: ## Required code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)

//: ## Add your code below
// Draw Circles
canvas.fillColor = Color.black
for y in stride(from: 0, through: 300, by: 30){
    for x in stride(from: 0, through: 300, by: 30){
          canvas.drawEllipse(centreX: x, centreY: y, width: 2, height: 2)
    }
}

// Draw Large Mountains
canvas.drawShapesWithBorders = false
canvas.fillColor = Color.init(hue: 30 , saturation: 0, brightness: 80, alpha: 100)
canvas.drawRectangle(centreX: 150, centreY: 90, width: 300, height: 180)
canvas.lineColor = Color.init(hue: 30, saturation: 0, brightness: 80, alpha: 100)
for x in stride(from: 0, through: 150, by: 1){
    canvas.drawLine(fromX: 0, fromY: x, toX: 150, toY: x)
}
// Draw Small Mountains
canvas.fillColor = Color.init(hue: 30 , saturation: 0, brightness: 60, alpha: 100)
canvas.drawRectangle(centreX: 150, centreY: 45, width: 300, height: 90)



/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
