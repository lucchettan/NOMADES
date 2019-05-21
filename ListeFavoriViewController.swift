//
//  SecondViewController.swift
//  NomadesKiko
//
//  Created by Nicolas Lucchetta on 11/05/2019.
//  Copyright © 2019 Nicolas Lucchetta. All rights reserved.
//

import UIKit

import UIKit

class ListeFavoriViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let activities = allDemoActivities
    
    let favorisOnly = allDemoActivities.filter { (act) -> Bool in
        return act.favori == true
    }

    @IBOutlet weak var tableViewFavoriOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        chargement de la base de donnee du tableau
        tableViewFavoriOutlet.dataSource = self
        tableViewFavoriOutlet.delegate = self
        self.navigationController?.navigationBar.isHidden = true

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return favorisOnly.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celluleFavori = tableView.dequeueReusableCell(withIdentifier: "cellFav", for: indexPath) as? StructTableViewCell
        
        celluleFavori!.img.image = favorisOnly[indexPath.row].image
        celluleFavori!.titre.text = favorisOnly[indexPath.row].titre
        celluleFavori!.drapeau.text = favorisOnly[indexPath.row].drapeau
        celluleFavori!.logo.image = favorisOnly[indexPath.row].logo
        
        return celluleFavori!
    }
    
    
//    choix selectionne
    var selectedFavorite: Activite?
//     a partir de la selection lancer la page d'une activite
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        self.selectedFavorite = favorisOnly[indexPath.row]
        performSegue(withIdentifier: "validFavori", sender: nil)
    }
//    transmettre les donnes de la selection vers la page d'activite
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "validFavori" {
            let viewFavoriDestination = segue.destination as? ActiviteViewController
            viewFavoriDestination?.resultat = self.selectedFavorite
        }
    }
    
}

