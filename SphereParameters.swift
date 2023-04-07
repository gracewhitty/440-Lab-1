//
//  sphereParameters.swift
//  SphereBoxAssignment
//
//  Created by IIT PHYS 440 on 1/13/23.
//

import SwiftUI

class SphereParameters: NSObject {
    
    var radiusOfSphere = 0.0 //initializing radius
    
    func sphereArea() -> Double { //define function to find area of sphere
        return 4 * Double.pi * pow(radiusOfSphere,2) // pow used to square the radius here
    }
    
    func sphereVolume() -> Double { // define function to find volume of sphere
        return (4/3) * Double.pi * pow(radiusOfSphere,3)
    }
}

