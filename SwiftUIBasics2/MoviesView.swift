//
//  MoviesView.swift
//  SwiftUIBasics2
//
//  Created by Lucca Claus on 29/03/23.
//

import SwiftUI

struct NowPlaying: View {
    var movie: Movie
    
    var body: some View {
        
        VStack (alignment: .leading){
            Image(movie.imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(7)
                .frame(width: 150, height: 240)
            Text(movie.title)
                .lineLimit(1)
                .font(.subheadline)
                .bold()
                .padding(.bottom, 0.5)
            HStack  {
                Image(systemName: "star")
                Text("7.8")
            }
            .font(.footnote)
            .foregroundColor(.gray)
            .padding(.bottom,2)
        }
        .frame(width: 150)
        //.padding(0.5)
        
    }
}

struct MoviesView_Previews: PreviewProvider {
    static var previews: some View {
        NowPlaying(movie: Movie(imageName: "tlou", title: "The Last of Us", score: "7,8", description: "Hello", tags: "drama, action, adventure"))
    }
}
