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
    @State private var convertedValue: String = "Answer"
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
                            selectedUnit = "Celcious"
                        })
                        Button("Fahrenheit", action: {
                            selectedUnit = "Fahrenheit"
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
                            selectedUnit = "Milligrams"
                        })
                        Button("Grams",action:{
                            selectedUnit = "Grams"})
                        Button("Kilograms", action: {
                            selectedUnit = "Kilograms"
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
                            selectedUnit = "Centimeters"
                        })
                        Button("Meters",action:{
                            selectedUnit = "Meters"})
                        
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
                    Button( "Celcious",action:{
                        convertTo = "Celcious"})
                    
                    
                    Button("Fahrenheit", action:{ convertTo = "Fahrenheit"})
                    
                } label: {
                    Label("convert to:", systemImage: "chevron.down")
                }
                .padding()
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Text("\(convertedValue)")
                        .foregroundColor(Color.black)
                        .font(.custom("Georgia", size: 65))
                        .padding()
                  
                    Spacer()
                    
                }
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                
                
            case  "Height":
                Menu {
                    Button("Centimeters", action:{convertTo = "Centimeters"})
                    
                    Button("Meters", action:{convertTo = "Meters"})
                    
                    
                }label: {
                    Label("convert to:", systemImage: "chevron.down")
                }
                .padding()
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Text("\(convertedValue)")
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
                    Button("Milligrams", action:{convertTo = "Miligrams"})
                    
                    Button("Grams", action:{convertTo = "Grams"})
                    
                    Button("Kilograms", action:{convertTo = "Kilograms"
                        })
                   
                    
                    
                } label: {
                    Label("convert to:", systemImage: "chevron.down")
                }
                .padding()
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Text("\(convertedValue)")
                        .foregroundColor(Color.black)
                        .font(.custom("Georgia", size: 65))
                        .padding()
                    Spacer()
                   
                    
                }
                Spacer()
                Spacer()
                Spacer()
                
                
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
                    
                    Text("\(convertedValue)")
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
  
        Button("Convert") {
        
            convert(numberEntered: valueEntered)
        }
    }
    
    func convert(numberEntered: String) -> String {
        if let number = Double(numberEntered) {
            
            switch selectedOption {
            case "Height":
                if selectedUnit == "Meters" && convertTo == "Centimeters"{
                    convertedValue = String(number * 100)
                    
                    return convertedValue
                    
                }else if selectedUnit == "Centimeters" && convertTo == "Meters"{
                    convertedValue = String(number / 100)
                    
                    return convertedValue
                    
                }
            case "Temperature":
                
                if selectedUnit == "Celcious" && convertTo == "Fahrenheit"{
                    convertedValue = String((number * 9/5) + 32)
                    
                  return convertedValue
                    
                }else if selectedUnit == "Fahrenheit" && convertTo == "Celcious"{
                    convertedValue = String((number - 32) * 5/9)
                    
                    return convertedValue
                    
        
                }
            case "Weight":
                if selectedUnit == "Kilograms" && convertTo == "Grams"{
                    convertedValue = String(number * 1000)
                    
                    return convertedValue
                    
                }else if selectedUnit == "Grams" && convertTo == "Kilograms"{
                    convertedValue = String(number / 1000)
                    
                    return convertedValue
                    
                }else if selectedUnit == "Kilograms" && convertTo == "Milligrams"{
                    convertedValue = String(number * 1000000)
                    return convertedValue
                    
                }else if selectedUnit == "Milligrams" && convertTo == "Kilograms"{
                    convertedValue = String(number / 1000000)
                    return convertedValue
                    
                }else if selectedUnit == "Milligrams" && convertTo == "Grams"{
                    convertedValue = String(number / 1000)
                    return convertedValue
                    
                }else if selectedUnit == "Grams" && convertTo == "Milligrams"{
                    convertedValue = String(number * 1000)
                    return convertedValue
                }else{
                    
                    convertedValue = String(number)
                    
                    return convertedValue
                }
                
            default:
                print("")
            }
            
        }
        return convertedValue
    }
}
enum conversionError: Error{
    case conversionFailed
}

#Preview {
    ContentView()
}
