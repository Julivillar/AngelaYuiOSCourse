//
//  InfoView.swift
//  JulianCard
//
//  Created by Julian Villar on 13/8/23.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .resizable()
                        .foregroundColor(.blue)
                        .frame(width: 20, height: 20)
                    Text(text)
                        .foregroundColor(.black)
                        .font(.system(size: 25))
                })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "hola", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
