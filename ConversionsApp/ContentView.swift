//
//  ContentView.swift
//  ConversionsApp
//
//  Created by Luis León on 15/7/24.
//

import SwiftUI

struct ContentView: View {
    @State private var userInput = 0
    @State private var inputUnit = 0
    @State private var outputUnit = 1
    let units = ["Celsius", "Fahrenheit", "Kelvin"]
    
    
    var body: some View {
        NavigationStack{
            Form{
                Section("Input value"){
                    TextField("Insert a value", value: $userInput, format: .number)
                    Picker("input unit", selection: $inputUnit){
                        ForEach(0..<units.count, id: \.self) {
                            Text(self.units[$0])
                        }
                    }.pickerStyle(.navigationLink)
                }
                
                Section("output value"){
                    Picker("output Value", selection: $outputUnit){
                        ForEach(0..<units.count, id: \.self){
                            Text(self.units[$0])
                        }
                    }.pickerStyle(.navigationLink
                    )
                    Text(outputUnit, format: .number)
                }
            }.navigationTitle("Unit Converter")
        }
    }
}

#Preview {
    ContentView()
}
