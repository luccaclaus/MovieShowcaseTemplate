//
//  ContentView.swift
//  SwiftUIBasics2
//
//  Created by Lucca Claus on 29/03/23.
//

import SwiftUI

struct ContentView: View {
    @State var search = ""
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                VStack {
                    HStack {
                        Text("Now Playing")
                            .bold()
                        Spacer()
                        Button("See All") { }
                            .buttonStyle(.plain)
                            .foregroundColor(.gray)
                            .font(.subheadline)
                    }
                    .padding([.top, .leading, .trailing])
                    
                    ScrollView (.horizontal) {
                        HStack {
                            ForEach (Mock.movies, id: \.self) { movie in
                                NavigationLink {
                                    MovieDetailsView(movie: movie)
                                } label: {
                                    NowPlaying(movie: movie)
                                }
                            }
                            .padding(.leading)
                            Spacer()
                        }
                    }
                    .scrollIndicators(.hidden)
                    
                    Divider()
                    VStack ( alignment: .leading,spacing: 20){
                        Spacer()
                        Text("Popular Movies")
                            .bold()
                        
                        ForEach (Mock.movies, id: \.self) { movie in
                            NavigationLink {
                                MovieDetailsView(movie: movie)
                            } label: {
                                Popular(movie: movie)
                            }
                        }
                    }
                    .padding(.horizontal)
                }
            }
            .scrollIndicators(.hidden)
            .ignoresSafeArea(.all, edges: .bottom)
            .navigationTitle("MovieDB")
            .toolbarBackground(.visible, for: .navigationBar)
            .searchable(text: $search)
        }
        .accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
