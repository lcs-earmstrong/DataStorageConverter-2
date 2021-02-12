//
//  ContentView.swift
//  iOS-DataStorageConverter
//
//  Created by Evan Armstrong on 2021-02-12.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name: String = ""
    
    @State private var feeling: String = ""
    
    private var greeting: String {
        return "Hello, \(name), you are \(feeling)?"
    }
    var body: some View {
        
        Form{
            
            TextField("EnterYourName", text: $name)
            
            Picker("Mood", selection: $feeling) {
                // First part is what shows
                // Second part, the tag, is what is shown
                Text("😃").tag("happy")
                Text("😐").tag("fine")
                Text("😞").tag("sad")
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Text(greeting)
                .padding()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
