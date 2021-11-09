//
//  CardView.swift
//  ios-app
//
//  Created by Fernando Cejas on 09.11.21.
//  Copyright © 2021 Fernando Cejas. All rights reserved.
//

import SwiftUI

struct CardView: View {
        
    var imageUrl: String
    var header = String.empty
    var title = String.empty
    var subtitle = String.empty
    
    @Binding var onlyImage: Bool
    
    var body: some View {
        VStack {
            AsyncImageView(imageUrl: imageUrl)
            HStack {
                VStack(alignment: .leading) {
                    Text(header)
                        .font(.headline)
                        .foregroundColor(.secondary)
                        .isHidden(header.isEmpty, remove: header.isEmpty)
                    Text(title)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                        .isHidden(title.isEmpty, remove: title.isEmpty)
                    Text(subtitle.uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .isHidden(subtitle.isEmpty, remove: subtitle.isEmpty)
                }
                .layoutPriority(100)
 
                Spacer()
            }
            .padding()
            .isHidden(onlyImage, remove: onlyImage)
        }
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
        )
        .padding([.top, .horizontal])
    }
}
