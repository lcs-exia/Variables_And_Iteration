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
for y in stride(from: 0, through: 300, by: 25){
    for x in stride(from: 0, through: 300, by: 25){
          canvas.drawEllipse(centreX: x, centreY: y, width: 2, height: 2)
    }
}

// Draw Large Mountains
canvas.drawShapesWithBorders = false
canvas.fillColor = Color.init(hue: 30 , saturation: 0, brightness: 80, alpha: 100)
canvas.lineColor = Color.init(hue: 30, saturation: 0, brightness: 75, alpha: 100)
for x in stride(from: 0, through: 180, by: 1){
    canvas.drawLine(fromX: 0, fromY: x, toX: 180-x, toY: x)
    canvas.drawLine(fromX: 100, fromY: x, toX: 280-x, toY: x)
    canvas.drawLine(fromX: 200, fromY: x, toX: 380-x, toY: x)

}
for y in stride(from: 0, through: 90, by: 1){
    canvas.drawLine(fromX: 9+y, fromY: 0, toX: 9+y, toY: 90+y)
        canvas.drawLine(fromX: 109+y, fromY: 0, toX: 109+y, toY: 90+y)
        canvas.drawLine(fromX: 209+y, fromY: 0, toX: 209+y, toY: 90+y)
}
canvas.drawRectangle(centreX: 150, centreY: 64, width: 300, height: 128)
// Draw Small Mountains
canvas.fillColor = Color.init(hue: 30 , saturation: 0, brightness: 60, alpha: 100)
canvas.lineColor = Color.init(hue: 30 , saturation: 0, brightness: 55, alpha: 100)
for x in stride(from: 0, through: 90, by: 1){
    canvas.drawLine(fromX: 0, fromY: x, toX: 90-x, toY: x)
    canvas.drawLine(fromX: 60, fromY: x, toX: 150-x, toY: x)
    canvas.drawLine(fromX: 120, fromY: x, toX: 210-x, toY: x)
    canvas.drawLine(fromX: 180, fromY: x, toX: 270-x, toY: x)
    canvas.drawLine(fromX: 240, fromY: x, toX: 330-x, toY: x)
}
for y in stride(from: 0, through: 45, by: 1){
    canvas.drawLine(fromX: 14+y, fromY: 0, toX: 14+y, toY: 45+y)
    canvas.drawLine(fromX: 74+y, fromY: 0, toX: 74+y, toY: 45+y)
    canvas.drawLine(fromX: 134+y, fromY: 0, toX: 134+y, toY: 45+y)
    canvas.drawLine(fromX: 194+y, fromY: 0, toX: 194+y, toY: 45+y)
    canvas.drawLine(fromX: 254+y, fromY: 0, toX: 254+y, toY: 45+y)
}
canvas.drawRectangle(centreX: 150, centreY: 30, width: 300, height: 60)

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
