//
//  ContentView.swift
//  WeatherApp
//
//  Created by Majkel on 30/11/2020.
//  Copyright © 2020 Majkel. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //BackgroundView
        ZStack {
            BackgroundView(topColor: .blue, bottomColor: Color("Color.Blue"))
            VStack {
                Spacer()
                
                //LabelView
                LabelView(label: "Cupertino, CA")
                
                //ImageView
                ImageView(image: "cloud.sun.fill")
              
                //TempView
                TempView(temp: "76")
                Spacer()
                //WeatherOfWeek
                HStack(spacing: 20) {
                    WeatherOfWeek(text: "TUE", imageName: "cloud.sun.fill", temp: "70")
                    WeatherOfWeek(text: "TUE", imageName: "cloud.sun.fill", temp: "70")
                    WeatherOfWeek(text: "TUE", imageName: "cloud.sun.fill", temp: "70")
                    WeatherOfWeek(text: "TUE", imageName: "cloud.sun.fill", temp: "70")
                    WeatherOfWeek(text: "TUE", imageName: "cloud.sun.fill", temp: "70")
                }
                Spacer()
                
                //AddButton
                Button(action: {
                    print("add")
                }) {
                    AddButton(text: "Change Time of Day")
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor , bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}

struct LabelView: View {
    
    var label: String
    
    var body: some View {
        Text(label)
        .foregroundColor(Color.white)
        .font(.system(size: 32, weight: .medium, design: .default))
    }
    
}

struct ImageView: View {
    
    var image: String
    
    var body: some View {
        Image(systemName: image)
        .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 180, height: 190, alignment: .center)
    }
}

struct TempView: View {
    
    var temp: String
    
    var body: some View {
        Text("\(temp)*")
        .foregroundColor(Color.white)
        .font(.system(size: 70, weight: .medium))
    }
}

struct WeatherOfWeek: View {
    
    var text: String
    var imageName: String
    var temp: String
    
    var body: some View {
        VStack {
            Text(text)
            Image(systemName: imageName)
            Text(temp)
        }
    }
}

struct AddButton: View {
    
    var text: String
    
    var body: some View {
        Text(text)
        .font(.title)
        .padding()
        .background(Color.white)
        .foregroundColor(Color.black)
        .cornerRadius(20)
    }
}
