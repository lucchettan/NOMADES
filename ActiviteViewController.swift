//
//  ActiviteViewController.swift
//  NomadesKiko
//
//  Created by Nicolas Lucchetta on 17/05/2019.
//  Copyright © 2019 Nicolas Lucchetta. All rights reserved.
//
import UIKit

class ActiviteViewController: UIViewController {

    @IBOutlet weak var ImageFavori: UIImageView!
    @IBOutlet weak var drapeauFavori: UILabel!
    @IBOutlet weak var continentFavori: UILabel!
    @IBOutlet weak var titreFavori: UILabel!
    @IBOutlet weak var dateFavori: UILabel!
    @IBOutlet weak var dureeFavori: UILabel!
    @IBOutlet weak var prixFavori: UILabel!
    @IBOutlet weak var logoFavori: UIImageView!
    @IBOutlet weak var detailFavori: UITextView!
    @IBOutlet weak var contactFavori: UIButton!
    
    
    var resultat: Activite?

        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true

        if resultat != nil {
            ImageFavori.image = resultat!.image
            drapeauFavori.text = resultat!.drapeau
            continentFavori.text = resultat!.nomContinent
            titreFavori.text = resultat!.titre
            dateFavori.text = resultat!.date
            dureeFavori.text = resultat!.duree
            prixFavori.text = resultat!.prix
            logoFavori.image = resultat!.logo
            detailFavori.text = resultat!.contenu
            

            
            if resultat?.favori == true {
                favorite.setImage(UIImage(named: "fav"), for: .normal)
                print("ca marche")
            } else {
                favorite.setImage(UIImage(named: "notfav"), for: .normal)
                print("et la so coman")
            }
        }
    }
    
    @IBOutlet weak var favorite: UIButton!
    
    
    @IBAction func favOrNot(_ sender: UIButton) {
        if resultat?.favori == true {
            resultat?.favori = false
            favorite.setImage(UIImage(named: "notfav"), for: .normal)
        } else {
            resultat?.favori = true
            favorite.setImage(UIImage(named: "fav"), for: .normal)
        }
    }
 
    @IBOutlet weak var contactLabel: UILabel!
    @IBAction func contactBtn(_ sender: Any) {
        for each in resultat!.contact {
            contactLabel.text?.append(each)
        }
    }
    
    
}
