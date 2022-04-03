//
//  APICaller.swift
//  PokedexApp
//
//  Created by Piotr Tyl on 03/04/2022.
//

import Foundation
import Alamofire

final class APICaller {
    static let shared = APICaller()
    
    private init() {}
    
    struct Constants {
        static let baseURL = "https://pokeapi.co/api/v2/"
    }
    
    // MARK: - Pokemon
    public func getPokemonList(generation gen: Int = 0) {
        
        
        switch gen{
        case 0:
        let parameters = ["limit": "1126"]
        
            AF.request(Constants.baseURL + "pokemon", parameters: parameters).responseDecodable(of: PokemonList.self) { response in
            debugPrint(response)
                
        }
        
        case 1...8:
            AF.request(Constants.baseURL + "generation/\(gen)").responseDecodable(of: PokemonList.self) { response in
            debugPrint(response)
               
        }
        default:
            return
        }
    }
    
    public func getPokedexList() {
        
    }
    
    public func getSinglePokemon(id: Int? = nil, name: String? = nil) {
        guard let pokemonId = id else {
            guard let pokemonName = name else {
                return
            }
            AF.request(Constants.baseURL + "pokemon/\(pokemonName)").responseDecodable(of: Pokemon.self) { response in
                debugPrint(response)
            }
            print("Error")
            return
        }
        AF.request(Constants.baseURL + "pokemon/\(pokemonId)").responseDecodable(of: Pokemon.self) { response in
            debugPrint(response)
        }
        
    }
}

