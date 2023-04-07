//
//  boundingBoxParameters.swift
//  SphereBoxAssignment
//
//  Created by IIT PHYS 440 on 1/13/23.
//

import SwiftUI
// calculates the area and volume of a box bound around a sphere with a given radius
class BoundingBoxParameters: NSObject {

    var radiusOfBoundingBox = 0.0 // intializing radius
    
    func boundingBoxArea() -> Double { //calculates area of box
        return radiusOfBoundingBox*2*6
    }
    func boundingBoxVolume() -> Double { // calculates volume of box
        return pow(radiusOfBoundingBox*2,3)
}
}

