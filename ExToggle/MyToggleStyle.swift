//
//  MyToggleStyle.swift
//  ExToggle
//
//  Created by 김종권 on 2022/08/08.
//

import SwiftUI

struct MyToggleStyle: ToggleStyle {
  private let width = 60.0
  
  func makeBody(configuration: Configuration) -> some View {
    HStack {
      configuration.label
      ZStack(alignment: configuration.isOn ? .trailing : .leading) {
        RoundedRectangle(cornerRadius: 12)
          .frame(width: width, height: width / 2)
          .foregroundColor(configuration.isOn ? .green : .red)
        
        RoundedRectangle(cornerRadius: 12)
          .frame(width: (width / 2) - 4, height: width / 2 - 6)
          .padding(4)
          .foregroundColor(.white)
          .onTapGesture {
            withAnimation {
              configuration.$isOn.wrappedValue.toggle()
            }
          }
      }
    }
  }
}
