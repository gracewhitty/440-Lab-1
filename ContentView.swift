//
//  ContentView.swift
//  SphereBoxAssignment
//
//  Created by IIT PHYS 440 on 1/13/23.
//

import SwiftUI
// gui that takes a radius and gives area and volume of a sphere and bounding box
struct ContentView: View {
    //initializing all variables that are used
    @State private var radius: Double = 1.0
    @State var sphereArea = 0.0
    @State var sphereVolume = 0.0
    @State var boundingBoxArea = 0.0
    @State var boundingBoxVolume = 0.0
    
    var body: some View {
        VStack { //vertical stack
            Text("Enter radius:") //instruction above input box
            HStack { // horizontal stack
                TextField("Radius", value: $radius, formatter: NumberFormatter())
                
                Text("un") // units
            }
            
            // outputs of area and volume
            Text("Sphere area: \(sphereArea, specifier: "%.2f") un²")
            Text("Sphere volume: \(sphereVolume, specifier: "%.2f") un³")
            Text("Bounding Box area: \(boundingBoxArea, specifier: "%.2f") un²")
            Text("Bounding Box volume: \(boundingBoxVolume, specifier: "%.2f") un³")
            
            
            Button("Calculate", action: {self.calculate()})
                           .padding(.bottom)
                           .padding()
                           // controls when calculation is done
                       
                       
        }
    }

    
    func calculate(){ //this is what calculates area and volume
    
        var sphereParameters = SphereParameters()
        var boundingBoxParameters = BoundingBoxParameters() //shows where to get the functions used
        
        sphereParameters.radiusOfSphere = radius //puts radius into variable used for function
        
        sphereArea = sphereParameters.sphereArea()
        sphereVolume = sphereParameters.sphereVolume()
        //takes area and volume from inputed radius
        
        boundingBoxParameters.radiusOfBoundingBox = radius //puts radius into variable used for function
        
        boundingBoxArea = boundingBoxParameters.boundingBoxArea()
        boundingBoxVolume = boundingBoxParameters.boundingBoxVolume()
        //takes area and volume from inputed radius
    }
    
 
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

func testSurfaceAreaSphere() throws {
    
}
