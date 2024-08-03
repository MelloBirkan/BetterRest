//
//  ContentView.swift
//  BetterRest
//
//  Created by Marcello Gonzatto Birkan on 03/08/24.
//

import SwiftUI

struct ContentView: View {
  @State private var sleepAmount = 8.0
  
    var body: some View {
      Stepper("\(sleepAmount.formatted().description) hours", value: $sleepAmount, in: 3...16, step: 0.25)
    }
}

#Preview {
    ContentView()
}
