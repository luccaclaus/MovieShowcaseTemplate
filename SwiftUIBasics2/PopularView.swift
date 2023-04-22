//
//  PopularView.swift
//  SwiftUIBasics2
//
//  Created by Lucca Claus on 29/03/23.
//

import SwiftUI

struct Popular: View {
    var movie: Movie
    
    var body: some View {
        
        HStack {
            Image(movie.imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(7)
                .frame(width: 90, height: 140)
            VStack (alignment: .leading) {
                Text(movie.title)
                    .bold()
                    .font(.subheadline)
                    .padding(.bottom, 8)
                Text(movie.description)
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .padding(.bottom, 8)
                    .lineLimit(3)
                    .multilineTextAlignment(.leading)
                HStack {
                    Image(systemName: "star")
                    Text(movie.score)
                }
                .font(.footnote)
                .foregroundColor(.gray)
            }
        }
        //.frame(height: 140)
    }
}

struct PopularView_Previews: PreviewProvider {
    static var previews: some View {
        Popular(movie: Movie(imageName: "breaking", title: "Breaking Bad", score: "9.0", description: "Ao saber que tem câncer, um professor passa a fabricar metanfetamina pelo futuro da família, mudando o destino de todos.", tags: "drama, action, adventure"))
    }
}
