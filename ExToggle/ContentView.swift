//
//  ContentView.swift
//  ExToggle
//
//  Created by 김종권 on 2022/08/08.
//

import SwiftUI

struct ContentView: View {
  @State var toggle1On = false
  @State var toggle2On = false
  @State var toggle3On = false
  @State var toggle4On = false
  @State var toggle5On = false
  @State var toggle6On = false
  
  var body: some View {
    VStack {
      Toggle(isOn: self.$toggle1On) {
        Text("@State Toggle: \(String(self.toggle1On))")
      }
      
      Toggle(isOn: self.$toggle2On) {
        Text("(.automatic style) @Published Toggle: \(String(self.toggle2On))")
      }
      .toggleStyle(.automatic)

      Toggle(isOn: self.$toggle3On) {
        Text("(.button style) @Published Toggle: \(String(self.toggle3On))")
      }
      .toggleStyle(.button)

      Toggle(isOn: self.$toggle4On) {
        Text("(.switch style) @Published Toggle: \(String(self.toggle4On))")
      }
      .toggleStyle(.switch)

      Toggle(isOn: self.$toggle5On) {
        Label("Flag", systemImage: "flag.fill")
      }
      
      Toggle(isOn: self.$toggle6On) {
        Text("My Toggle")
      }
      .toggleStyle(MyToggleStyle())
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}


