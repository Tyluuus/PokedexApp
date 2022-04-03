//
//  Pokemon.swift
//  PokedexApp
//
//  Created by Piotr Tyl on 03/04/2022.
//

import Foundation

struct Pokemon: Codable {
    let id: Int?
    let sprites: Sprites?
    let types: [Types]?
    let name: String?
}

struct Sprites: Codable {
    let front_default: String?
}

struct Types: Codable {
    let type: PokemonType?
    
}

struct PokemonType: Codable {
    let name: String?
    let url: String?
}
