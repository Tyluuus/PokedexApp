//
//  MainViewController.swift
//  PokedexApp
//
//  Created by Piotr Tyl on 01/04/2022.
//

import UIKit
import SwiftUI
import Alamofire


class MainViewController: UIViewController {

//    private let tableView: UITableView = {
//        let tableView = UITableView(frame: .zero, style: .grouped)
//        tableView.backgroundColor = .systemBackground
//
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemRed
        
        APICaller.shared.getPokemonList()
        
        
        
    }
    

}
