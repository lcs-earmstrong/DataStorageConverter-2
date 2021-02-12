//
//  ContentView.swift
//  iOS-DataStorageConverter
//
//  Created by Evan Armstrong on 2021-02-12.
//

import SwiftUI

struct ContentView: View {
    
    private var name: String = "Evan"
    private var greeting: String {
        return "Hola, \(name) como estas"
    }
    var body: some View {
        Text(greeting)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
