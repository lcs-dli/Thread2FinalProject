//
//  TwoDimensionShapeHistory.swift
//  Thread2FinalProject
//
//  Created by David Li on 2023-02-09.
//

import Foundation

struct TwoDimensionShapeHistory: Identifiable{
    let id = UUID()
    
    //Mathmatics constant
    let pi = Double.pi
    //Circle
    var radius: Double?
    var areaCircle: Double?
    var circumference: Double?
    
    //Rectangle
    var length: Double?
    var width: Double?
    var areaRectangle: Double?
    var perimeterRectangle: Double?
    
    //Triangle
    var base: Double?
    var height: Double?
    var areaTriangle: Double?
    
}

var twoDimensionhistory: [TwoDimensionShapeHistory] = []


