//: # Gig Poster - Practice Task 2
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![subhumans-no-grid](subhumans-no-grid.png "Subhumans")
 ![subhumans-with-grid](subhumans-with-grid.png "Subhumans")

 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 * arrays (a list of related objects or values)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */
// COLORS
let yellow = Color(hue: 45, saturation: 99, brightness: 100, alpha: 100)
let purple = Color(hue: 304, saturation: 40, brightness: 64, alpha: 100)
let brown = Color(hue: 38, saturation: 99, brightness: 38, alpha: 100)
let lightRed = Color(hue: 10, saturation: 80, brightness: 80, alpha: 75)

// Create a new canvas and fill the background with yellow
let canvas = Canvas(width: 400, height: 600)
canvas.fillColor = Color(hue: 45, saturation: 99, brightness: 100, alpha: 100)
canvas.drawRectangle(at: Point(x:0, y:0), width: 400, height: 600)

// no borders
canvas.drawShapesWithBorders = false

// loop for first line of parallelograms
for position in stride (from: -120, to: 430, by: 150) {
    
    switch position {
    case -120:
        canvas.fillColor = Color(hue: 38, saturation: 99, brightness: 38, alpha: 100)
    case 30:
        canvas.fillColor = Color(hue: 304, saturation: 40, brightness: 64, alpha: 100)
        
    case 180:
        canvas.fillColor = Color(hue: 38, saturation: 99, brightness: 38, alpha: 100)

    case 330:
        canvas.fillColor = Color(hue: 304, saturation: 40, brightness: 64, alpha: 100)

    default:
        canvas.fillColor = Color(hue: 304, saturation: 40, brightness: 64, alpha: 100)

    }
    var vertices: [Point] = []
    vertices.append(Point(x:position, y:50))
    vertices.append(Point(x:position+140, y:50))
    vertices.append(Point(x:position+190, y:150))
    vertices.append(Point(x:position+50, y:150))
    
    canvas.drawCustomShape(with: vertices)
    
    var verticesTop: [Point] = []
    verticesTop.append(Point(x:position, y:225))
    verticesTop.append(Point(x:position+140, y:225))
    verticesTop.append(Point(x:position+190, y:325))
    verticesTop.append(Point(x:position+50, y:325))
    
    canvas.drawCustomShape(with: verticesTop)
        
}

for red in stride (from: -120, to: 480, by: 150) {
canvas.fillColor = Color(hue: 10, saturation: 80, brightness: 80, alpha: 75)
var verticesMid: [Point] = []
verticesMid.append(Point(x:red-10, y:140))
verticesMid.append(Point(x:red+125, y:140))
verticesMid.append(Point(x:red+175, y:240))
verticesMid.append(Point(x:red+40, y:240))

canvas.drawCustomShape(with: verticesMid)

}

// text
canvas.textColor =  Color(hue: 100, saturation: 100, brightness: 0, alpha: 100)
canvas.drawText(message: "subhumans", at: Point(x:10, y:325), size: 45)
/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multiple times as you make progress on completing this task.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

