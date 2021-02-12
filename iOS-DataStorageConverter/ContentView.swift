//
//  ContentView.swift
//  iOS-DataStorageConverter
//
//  Created by Evan Armstrong on 2021-02-12.
//

import SwiftUI

struct ContentView: View {
    
    // Mark: stored properties
    
    @State private var input: String = ""
    
   // Mark: computed properies
    
    private var output: String {
        return "You typed in \(input)"
    }
    var body: some View {
        
        Form{
            
            TextField("e.g.: 1024", text: $input)
                .keyboardType(.numberPad)
            
            Text(output)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
