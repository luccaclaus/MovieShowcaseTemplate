//
//  Mock.swift
//  SwiftUIBasics2
//
//  Created by Lucca Claus on 29/03/23.
//

import Foundation
import SwiftUI

struct Mock {
    static let movie: Movie = Movie(imageName: "breaking", title: "Breaking Bad", score: "9.0", description: "Ao saber que tem câncer, um professor passa a fabricar metanfetamina pelo futuro da família, mudando o destino de todos.", tags: "drama, action, adventure")
    
    static let movies: [Movie] = [
        Movie(imageName: "breaking", title: "Breaking Bad", score: "9.0", description: "Ao saber que tem câncer, um professor passa a fabricar metanfetamina pelo futuro da família, mudando o destino de todos.", tags: "Drama, Action, Crime"),
        Movie(imageName: "avatar", title: "Avatar: O Caminho da Água", score: "7.9", description: "12 anos depois de explorar Pandora e se juntar aos Na'vi, Jake Sully formou uma família com Neytiri e se estabeleceu entre os clãs do novo mundo. Porém, a paz não durará para sempre.", tags: "SciFi, Action, Adventure"),
        Movie(imageName: "chefao", title: "O Poderoso Chefão", score: "8.9", description: "Em 1945, Don Corleone é o chefe de uma mafiosa família italiana de Nova York. Ele costuma apadrinhar várias pessoas, realizando importantes favores para elas, em troca de favores futuros. Com a chegada das drogas, as famílias começam uma disputa pelo promissor mercado. Quando Corleone se recusa a facilitar a entrada dos narcóticos na cidade, não oferecendo ajuda política e policial, sua família começa a sofrer atentados para que mudem de posição. É nessa complicada época que Michael, um herói de guerra nunca envolvido nos negócios da família, vê a necessidade de proteger o seu pai e tudo o que ele construiu ao longo dos anos.", tags: "Drama, Crime"),
        Movie(imageName: "johnwick", title: "John Wick 4", score: "6.5", description: "Com o preço por sua cabeça cada vez maior, John Wick leva sua luta contra a alta mesa global enquanto procura os jogadores mais poderosos do submundo, de Nova York a Paris, de Osaka a Berlim.", tags: "Crime, Action, Thriller"),
        Movie(imageName: "tlou", title: "The Last of Us", score: "7,8", description: "Situado duas décadas após a implosão de nossa sociedade, o drama seguirá Joel, um sobrevivente difícil, que é contratado para contrabandear uma garota de 14 anos chamada Ellie para fora de uma zona de quarentena opressiva. O que começa como um pequeno trabalho logo se torna uma jornada brutal e de partir o coração, já que os dois precisam atravessar os Estados Unidos e dependem um do outro para sobreviver.", tags: "Drama, Action, Adventure")
    ]
}
