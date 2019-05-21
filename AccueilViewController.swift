//
//  AccueilViewController.swift
//  NomadesKiko
//
//  Created by Nicolas Lucchetta on 15/05/2019.
//  Copyright © 2019 Nicolas Lucchetta. All rights reserved.
//

import UIKit

class AccueilViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var accueilTableView: UITableView!
    var activites = allDemoActivities
    var filters = Set<String>()

    @IBOutlet weak var bigImage: UIImageView!
    @IBOutlet weak var bigImageLabel: UILabel!
    @IBOutlet weak var bigImageFlag: UILabel!
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return activites.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! StructTableViewCell
            cell.drapeau.text = activites[indexPath.row].drapeau
            cell.img.image = activites[indexPath.row].image
            cell.titre.text = activites[indexPath.row].titre
            cell.logo.image = activites[indexPath.row].logo
            return cell
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            bigImage.image = activites.last?.image
            bigImageLabel.text = activites.last?.titre
            bigImageFlag.text = activites.last?.drapeau
            accueilTableView.dataSource = self
            accueilTableView.delegate = self
            self.tabBarController?.tabBar.isHidden = false
        }
        
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            self.navigationController?.navigationBar.isHidden = true
            self.tabBarController?.tabBar.isHidden = false
            
            if !filters.isEmpty {
                activites = allDemoActivities.filter({ activite -> Bool in
                    if filters.count == 1 {
                        print(filters.count)
                        if filters.contains(activite.type) || filters.contains(activite.nomContinent) {
                            return true
                        } else {
                            return false
                        }
                    } else if filters.count > 1 {
                        print(filters.count)
                        if filters.contains(activite.type) && filters.contains(activite.nomContinent) {
                            return true
                            //                    } else if filters.contains(activite.type) || filters.contains(activite.nomContinent) {
                            //                       return true
                            //                 } else if filters.contains(activite.nomContinent) {
                            //                        return true
                        } else {
                            return false
                        }
                    } else { return false }
                })
                accueilTableView.reloadData()
            }
            print("view will appear")
        }
        
        
        //    var  choix selectionne
        var selected: Activite?
        //     a partir de la selection lancer la page d'une activite
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print(indexPath.row)
            self.selected = activites[indexPath.row]
            performSegue(withIdentifier: "validActivite", sender: nil)
        }
        //    transmettre les donnes de la selection vers la page d'activite
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "validActivite" {
                let viewFavoriDestination = segue.destination as? ActiviteViewController
                viewFavoriDestination?.resultat = self.selected
            }
        }
}
