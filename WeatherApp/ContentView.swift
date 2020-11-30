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
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Cupertino, CA")
                    .foregroundColor(Color.white)
                    .font(.system(size: 32, weight: .medium, design: .default))
                Spacer()
                Image(systemName: "cloud.sun.fill")
                .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 190, alignment: .center)
                Text("76*")
                    .foregroundColor(Color.white)
                    .font(.system(size: 70, weight: .medium))
                Spacer()
                HStack {
                    VStack {
                        Text("TUE")
                        Image(systemName: "cloud.sun.fill")
                        Text("76*")
                    }
                }
                
                Spacer()
                
                Button(action: {
                    print("add")
                }) {
                    Text("Change Time of Day")
                        .font(.title)
                        .padding()
                        .background(Color.white)
                        .foregroundColor(Color.black)
                        .cornerRadius(20)
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
