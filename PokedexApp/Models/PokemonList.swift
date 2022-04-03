//
//  Pokemon.swift
//  PokedexApp
//
//  Created by Piotr Tyl on 01/04/2022.
//

import Foundation

struct PokemonList: Codable {
    
    let results: [PokemonBase]
    
}

struct PokemonBase: Codable {
    let name: String?
    let url: String?
}
