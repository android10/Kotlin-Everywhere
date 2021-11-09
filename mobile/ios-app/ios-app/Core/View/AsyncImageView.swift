//
//  AsyncImageView.swift
//  ios-app
//
//  Created by Fernando Cejas on 07.11.21.
//  Copyright © 2021 Fernando Cejas. All rights reserved.
//

import SwiftUI

struct AsyncImageView: View {
    
    var imageUrl: String
    
    var body: some View {
        AsyncImage(url: URL(string: imageUrl)) { phase in
            switch phase {
                case .empty:
                ProgressView().frame(alignment: .center)
                case .success(let image):
                    image.resizable()
                         .scaledToFill()
                         .clipped()
                         .listRowInsets(EdgeInsets())
                         .frame(height: 250)
                case .failure:
                    Image(systemName: "photo")
                        .frame(height: 250, alignment: .center)
                @unknown default:
                    EmptyView()
                        .frame(height: 250, alignment: .center)
            }
        }
        .cornerRadius(2)
        .shadow(radius: 4)
    }
}
