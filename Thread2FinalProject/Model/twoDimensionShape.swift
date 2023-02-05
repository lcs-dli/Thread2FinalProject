//
//  twoDimensionShape.swift
//  Thread2FinalProject
//
//  Created by David Li on 2023-02-05.
//

import Foundation

struct twoDimensionShape: Identifiable{
    
    let id = UUID()
    //MARK: Mathematics constant
    let π = Double.pi
    
    //MARK: Circle
    //storing property
    var radius: Double?
    //computing property
    var circumference: Double?{
        return 2*π*radius!
    }
    
    var circleArea: Double?{
        return π*radius!*radius!
    }
    
    //MARK: Rectangle
    //storing property
    var length: Double?
    var width: Double?
    //computing property
    var reactangleArea: Double?{
        return length!*width!
    }
    var reactanglePerimeter: Double?{
        return 2*(length!+width!)
    }
    
    //MARK: Triangle
    //storing property
    var height: Double?
    var base: Double?
    //computing property
    var triangleArea: Double?{
        return base!*height!/2
    }
    
    //MARK: Determine which shape
    var nameOfShape: String{
        if (length != nil && width != nil){
            return "Rectangle"
        }else if(radius != nil){
            return "Circle"
        }else{
            return "Triangle"
        }
    }
    
}

var rectangle: twoDimensionShape = twoDimensionShape(length: 2, width: 2)
var triangle: twoDimensionShape = twoDimensionShape(height: 2, base: 2)
var circle: twoDimensionShape = twoDimensionShape(radius: 2)

var twoDimensionShapes = [rectangle, triangle, circle]
