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
  
    var body: some View {
      Stepper("\(sleepAmount.formatted().description) hours", value: $sleepAmount, in: 3...16, step: 0.25)
      
      DatePicker("Please enter a date", selection: $wakeUp, in: ...Date.now, displayedComponents: .hourAndMinute)
        .labelsHidden()
    }
  
  func exampleDates() {
    let tomorrow = Date.now.addingTimeInterval(86400)
    
    let range = Date.now...tomorrow
  }
}

#Preview {
    ContentView()
}

