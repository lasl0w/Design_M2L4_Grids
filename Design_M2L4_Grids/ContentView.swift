//
//  ContentView.swift
//  Design_M2L4_Grids
//
//  Created by tom montgomery on 10/9/23.
//

import SwiftUI


// LAZYGRIDS do not come with scrolling, must wrap in a scrollview

struct ContentView: View {
    
    // TODO:  isn't it adaptivColumns in a LazyHgrid?  The column grows to the size of the screen vertically, then the list grows horizontally
    // TRUE, but if you go to landscape it creates 6 rows vs 11 rows in portrait.  
    
    var body: some View {
        
        // Lazy HGrid - with more items, it grows horizontally (restricted by the count:3 per column)
        let fixedRows = Array(repeating: GridItem(.fixed(100), spacing: 5, alignment: .center), count: 3)
        
        let adaptivRows = Array(repeating: GridItem(.adaptive(minimum: 50), spacing: 5, alignment: .center), count: 3)
        
        // HORIZONTAL SCROLLVIEW !!!
        ScrollView (.horizontal, showsIndicators: false) {
            LazyHGrid(rows: adaptivRows, content: {
                
                ForEach(0..<50) { index in
                    Text("Placeholder \(index)")
                }
            })
        }
       
        
        // Lazy VGrid - grows vertically, but columns exist left to right
        // spacing - (in between columns
        //var columns = Array(repeating: GridItem(.fixed(100), spacing: 5, alignment: .center), count: 3)
        
        // FLEXIBLE - take as much space as it can.  fill the space
        /// adjusts nicely in landscape mode too
//        var flexColumns = Array(
//            repeating: GridItem(.flexible(minimum: 0), spacing: 5, alignment: .center),
//            count: 3)
//        
//        // ADAPTIVE - will add more columns to each row in landscape or on larger devices
//        var adaptivColumns = Array(
//            repeating: GridItem(.adaptive(minimum: 100), spacing: 5, alignment: .center),
//            count: 3)
//        ScrollView {
//            LazyVGrid(columns: adaptivColumns, content: {
//                
//                ForEach(0..<200){ index in
//                    Text("placeholder \(index)")
//                }
//            })
//        }
       
    }
}

#Preview {
    ContentView()
}
