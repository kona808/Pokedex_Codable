//
//  Pokemon.swift
//  Pokedex_Codable
//
//  Created by Karl Pfister on 2/7/22.
//

import Foundation

//class Pokemon {
//    enum Keys: String {
//        case name = "name"
//        case id = "id"
//        case moves = "moves"
//        case sprites = "sprites"
//        case frontShiny = "front_shiny"
//        case move = "move"
//    }
// Pokedex is TopLevelDictionary
struct Pokedex: Decodable {
    let results: [PokemonResult]
}
struct PokemonResult: Decodable {
    let name: String
    let url: String
}
    
