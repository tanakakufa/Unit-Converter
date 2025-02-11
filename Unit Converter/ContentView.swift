//
//  ContentView.swift
//  Unit Converter
//
//  Created by Tanaka Kufa on 7/2/2025.
//



//temeperature
//weight
//height


import SwiftUI

struct ContentView: View {
    @State private var selectedOption: String = "Select the category"
    @State private var selectedUnit: String = ""
    @State private var valueEntered: String = ""
    @State private var convertTo: String = ""
var body: some View {
    
    VStack {
        //drop down menu for category
        Menu {
            Button("Temperature", action: { selectedOption = "Temperature" })
            Button("Weight", action: { selectedOption = "Weight" })
            Button("Height", action: { selectedOption = "Height" })
        } label: {
            Label(selectedOption, systemImage: "chevron.down")
                .padding()
                .background(Color.blue.opacity(0.1))
                .cornerRadius(8)
            
            
        }
        .padding()
        
        
        switch selectedOption {
        case "Temperature" :
            HStack {
                TextField("", text: $valueEntered)
                    .padding()
                    .background(Color.blue.opacity(0.1))
                    .cornerRadius(10)
                    .padding()
                
                Menu {
                    Button("Celcious", action: {
                        selectedUnit = "C"
                    })
                    Button("Kelvin",action:{
                        selectedUnit = "K"})
                    Button("Fahreinheit", action: {
                        selectedUnit = "F"
                    })

                } label: {
                    Label(selectedUnit, systemImage: "chevron.down")
                        .padding()
                        .background(Color.blue.opacity(0.1))
                        .cornerRadius(8)
                }
            }
            
        case "Weight" :
            HStack {
                TextField("", text: $valueEntered)
                    .padding()
                    .background(Color.blue.opacity(0.1))
                    .cornerRadius(10)
                    .padding()
                
                Menu {
                    Button("Milligrams", action: {
                        selectedUnit = "mg"
                    })
                    Button("Grams",action:{
                        selectedUnit = "g"})
                    Button("Kilograms", action: {
                        selectedUnit = "kg"
                    })
                    Button("Tons", action: {
                        selectedUnit = "t"
                    })

                } label: {
                    Label(selectedUnit, systemImage: "chevron.down")
                        .padding()
                        .background(Color.blue.opacity(0.1))
                        .cornerRadius(8)
                }
            }
            
        case "Height" :
            HStack {
                TextField("", text: $valueEntered)
                    .padding()
                    .background(Color.blue.opacity(0.1))
                    .cornerRadius(10)
                    .padding()
                
                Menu {
                    Button("Centimeters", action: {
                        selectedUnit = "cm"
                    })
                    Button("Meters",action:{
                        selectedUnit = "m"})
                    Button("Feet", action: {
                        selectedUnit = "f"
                    })
                    Button("Inches", action: {
                        selectedUnit = "i"
                    })
                } label: {
                    Label(selectedUnit, systemImage: "chevron.down")
                        .padding()
                        .background(Color.blue.opacity(0.1))
                        .cornerRadius(8)
                }
            }

            
        default:
            
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
        
        }
        Spacer()
        
    }
    .background(Color.pink.opacity(0.5))
    
    VStack{
        switch selectedOption {
            
        case  "Temperature":
            Menu {
                Button("celcius"){
                }
                Button("kelvin"){
                }
                Button("fahreinheit"){
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
            
        case  "Height":
            Menu {
                Button("centimeters"){
                }
                Button("meters"){
                }
                Button("feet"){
                }
                Button("inches"){
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
        
        case  "Weight":
            Menu {
                Button("milligrams"){
                }
                Button("grams"){
                }
                Button("kilograms"){
                }
                Button("tons"){
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
            
            
            
        default:
            
            
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
    }
    .background(Color.blue.opacity(0.5))
    }
}

#Preview {
    ContentView()
}
