//
//  threeDimensionShape.swift
//  Thread2FinalProject
//
//  Created by David Li on 2023-02-05.
//

import Foundation
struct threeDimensionShape: Identifiable{
    let id = UUID()
    
    //MARK: Mathmatics constant
    let π = Double.pi
    
    //MARK: Sphere
    //storing
    var radius: Double?
    
    //computing
    var volumeSphere: Double?{
        return (4/3)*radius!*radius!*radius!*π
    }
    
    //MARK: Rectangular prism
    var length: Double?
    var width: Double?
    var heightOfPrism: Double?
    
    //computing
    var volumePrism: Double?{
        return length!*width!*heightOfPrism!
    }
    
    //MARK: Cylinder
    var radiusCylinder: Double?
    var heightCylinder: Double?
    
    //computing
    var volumeCylinder: Double?{
        return radiusCylinder!*radiusCylinder!*radiusCylinder!*π
    }
    
    //MARK: Determine which shape
    var nameOfShape: String{
        if (length != nil && width != nil && heightOfPrism != nil){
            return "Rectangular prism"
        }else if(radius != nil){
            return "Sphere"
        }else{
            return "Cylinder"
        }
    }
}

var sphere: threeDimensionShape = threeDimensionShape(radius: 2)
var cylinder: threeDimensionShape = threeDimensionShape(radiusCylinder: 2, heightCylinder: 2)
var prism: threeDimensionShape = threeDimensionShape(length: 2, width: 2, heightOfPrism: 2)

var threeDimensionShapes = [sphere, cylinder, prism]
