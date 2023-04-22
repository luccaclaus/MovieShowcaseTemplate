//
//  MovieDetailsView.swift
//  SwiftUIBasics2
//
//  Created by Lucca Claus on 29/03/23.
//

import SwiftUI

struct MovieDetailsView: View {
    var movie: Movie
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading) {
                HStack {
                    Image(movie.imageName)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(7)
                        .frame(width: 150, height: 240)
                    VStack (alignment: .leading) {
                        Text(movie.title)
                            .bold()
                            .padding(.top, 90)
                            .padding(.bottom, 2)
                            .font(.title3)
                        Text(movie.tags)
                            .foregroundColor(.gray)
                            .padding(.bottom, 2)
                            
                        HStack  {
                            Image(systemName: "star")
                            Text(movie.score)
                        }
                        .foregroundColor(.gray)
                        .font(.subheadline)
                    }
                    .frame(width: 200)
                }
                
                Text("Overview")
                    .font(.body)
                    .fontWeight(.bold)
                    .padding(.vertical, 3)
                
                Text(movie.description)
                    .foregroundColor(.gray)
                
            }
            .padding(.horizontal)
            .padding(.top, 16)
        }
        .navigationTitle("Movie Details")
        .toolbarBackground(.visible, for: .navigationBar)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsView(movie: Movie(imageName: "tlou", title: "The Last of Us", score: "7,8", description: "hello", tags: "drama, action, adventure"))
    }
}
