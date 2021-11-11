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
                        .headerStyle()
                        .isHidden(header.isEmpty, remove: header.isEmpty)
                    Text(title)
                        .titleStyle()
                        .isHidden(title.isEmpty, remove: title.isEmpty)
                }
                .layoutPriority(100)
                Spacer()
            }
            .padding()
            .isHidden(onlyImage, remove: onlyImage)
        }
        .cornerRadius(CornerRadius.medium)
        .overlay(
            RoundedRectangle(cornerRadius: CornerRadius.small)
                .stroke(Color.lightGrey, lineWidth: LineWidth.small)
        )
        .padding([.top, .horizontal])
    }
}
