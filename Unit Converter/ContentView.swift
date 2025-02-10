//
//  ContentView.swift
//  Unit Converter
//
//  Created by Tanaka Kufa on 7/2/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedOption: String = "Select the category"
    @State private var selectedUnit: String = ""
    @State private var valueEntered: String = ""
    @State private var convertTo: String = ""
var body: some View {
    
    VStack {
        Menu {
            Button("Option 1", action: { selectedOption = "Option 1" })
            Button("Option 2", action: { selectedOption = "Option 2" })
            Button("Option 3", action: { selectedOption = "Option 3" })
        } label: {
            Label(selectedOption, systemImage: "chevron.down")
                .padding()
                .background(Color.blue.opacity(0.1))
                .cornerRadius(8)
            
            
        }
        .padding()
        HStack {
            TextField("", text: $valueEntered)
                .padding()
                .background(Color.blue.opacity(0.1))
                .cornerRadius(10)
                .padding()
            
            Menu {
                Button("unit option 1", action: {
                    selectedUnit = "unit option 1"
                })
                Button("unit option 2",action:{
                    selectedUnit = "unit option 2"})
            } label: {
                Label(selectedUnit, systemImage: "chevron.down")
                    .padding()
                    .background(Color.blue.opacity(0.1))
                    .cornerRadius(8)
            }
        }

        Spacer()
        
    }
    .background(Color.pink.opacity(0.5))
    
    VStack{
        
        Menu {
            Button("option1"){
                
            }
        } label: {
            Label("convert to:", systemImage: "chevron.down")
        }
        .padding()
        Spacer()
        
        HStack {
            Spacer()
            
            Text("Answer")
                .foregroundColor(Color.black)
                .font(.custom("Georgia", size: 65))
                .padding()
            Spacer()
        }
        Spacer()
        Spacer()
        Spacer()
        Spacer()
    }
    .background(Color.blue.opacity(0.5))
    }
}

#Preview {
    ContentView()
}
