//
//  PokedexTableViewController.swift
//  Pokedex_Codable
//
//  Created by Jacob Perez on 10/11/22.
//

import UIKit

class PokedexTableViewController: UIViewController {
    var pokedexResults: [PokemonResult] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        NetworkingController.fetchPokedex { result in
            switch result {
            case.success(let pokedex):
                self.pokedexResults = pokedex.results
                self.tableView.reloadData()
            case.failure(let error):
                print("error", error.errorDescription)
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokedexResults.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokedexCell", for: indexPath)
        let pokedexResult = pokedexResults[indexPath.row].url
        cell.updateViews(pokemonURLString: pokemonURLString)
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
