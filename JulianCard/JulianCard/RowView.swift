//
//  RowView.swift
//  JulianCard
//
//  Created by Julian Villar on 17/10/23.
//

import SwiftUI

struct RowView: View {
  var body: some View {
    HStack{
      RoundedRectangle(cornerRadius: 25)
        .frame(height: 50)
        .foregroundColor(.white)
        .overlay(
          HStack {
            Text("number")
              .border(.red, width: 2.0)
            
            Text("score")
            Text("date")
              .foregroundColor(.black)
              .font(.system(size: 25))
          })
        .padding(.all)
      
    }
    .padding()
    
    
    
  }
}

#Preview {
  RowView()
}
