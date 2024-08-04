//
//  ContentView.swift
//  BetterRest
//
//  Created by Marcello Gonzatto Birkan on 03/08/24.
//

import SwiftUI

struct ContentView: View {
  @State private var sleepAmount = 8.0
  @State private var wakeUp = Date.now
  @State private var coffeeAmount = 0
  let tomorrow = Date.now.addingTimeInterval(86400)
  
    var body: some View {
      NavigationStack {
        VStack {
          Text("When do you want to wake up?")
            .font(.headline)
          
          DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
            .labelsHidden()
          
          Text("Desired amount of sleep")
            .font(.headline)
          
          Stepper("\(sleepAmount.formatted().description) hours", value: $sleepAmount, in: 3...14, step: 0.25)
          
          Text("Daily coffee intake")
            .font(.headline)
          
          Stepper("\(coffeeAmount.description) cup(s)", value: $coffeeAmount, in: 0...20)
        }
        .navigationTitle("BetterRest")
        .toolbar {
          Button("Calculate", action: calculateBedtime)
        }
      }
    }
  func calculateBedtime() {
    
  }
}

#Preview {
    ContentView()
}

