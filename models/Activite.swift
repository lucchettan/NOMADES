import UIKit
// class n'a aucun initializer donc on lui cree son initializer && une variable de struct est IMMUTABLE contrairement a des valeurs de classe
class Activite {
    var titre: String
    var logo: UIImage?
    var type: String
    var nomContinent: String
    var duree: String
    var date: String
    var prix: String
    var contenu: String
    var contact: [String]
    var drapeau: String
    var image: UIImage?
    var favori: Bool
    
    init(titre: String, logo: UIImage?, type: String, nomContinent: String, duree: String, date: String, prix: String, contenu: String, contact: [String], drapeau: String, image: UIImage?, favori: Bool) {
        self.titre = titre
        self.logo = logo
        self.type = type
        self.nomContinent = nomContinent
        self.duree = duree
        self.date = date
        self.prix = prix
        self.contenu = contenu
        self.contact = contact
        self.drapeau = drapeau
        self.image = image
        self.favori = favori
    }
}

let allDemoActivities = [cookingRamen, restaurantAjia, expositionToutankamon, topCouscous, ikebana, coursLangueItalien, atelierMozzarella, restaurantAsuka, restaurantNaritake, danceDavina]

var cookingRamen = Activite(titre: "Cooking Ramen", logo: UIImage(named: "iconAtelier"), type: "Atelier", nomContinent: "Asie", duree: "De 9H - 14H", date: "Du Mardi au jeudi", prix: "Prix : 45 €", contenu: "Une matinée dediée a la confection de nouilles traditionelles japonnaises appelées 'soba', celebre element des fameux ramen. Animé par Mariko Yamaki, insatallée depuis 2ans en france et authentique chef au japon, elle partage daurénavant son savoir faire avec vous", contact: ["YamohiM@GMAIL.com","Mariko cuisine paris","MarikoCuisine"], drapeau: "🇯🇵", image: UIImage(named: "ramenPhoto"), favori: true)

var restaurantAjia = Activite(titre: "Chez Ajia", logo: UIImage(named: "iconRestaurant"), type: "Restaurants", nomContinent: "Asie", duree: "de 12h à 23h", date: "Du Mardi au Dimanche", prix: "Prix : 25 €", contenu: "Une cantine taiwanaise au plein coeur du Marais !", contact: ["ChezAjia.com"], drapeau: "🇼🇸", image: UIImage(named: "restaurantajia"), favori: false)

var expositionToutankamon = Activite(titre: "Toutankamon Expo", logo: UIImage(named: "iconMusee"), type: "Musee", nomContinent: "Afrique", duree: "De 9h à 19h", date: "Du Lundi au Dimanche", prix: "Prix : 20 €", contenu: "Toutânkhamon, le trésor du Pharaon, célébrera le centenaire de la découverte du tombeau royal en présentant une collection de chefs-d'oeuvre d'exception.", contact: ["La villette.com"], drapeau: "🇪🇬", image: UIImage(named: "toutankhamon"), favori: false)

var topCouscous = Activite(titre: "Top Couscous", logo: UIImage(named: "iconRestaurant"), type: "Restaurants", nomContinent: "Afrique", duree: "De 11h à 00h", date: "Du Lundi au Dimanche", prix: "Prix : 23 €", contenu: "Le meilleur couscous Marocain de Paris", contact: ["topcouscous@gmail.com"], drapeau: "🇲🇦", image: UIImage(named: "couscousimage"), favori: true)

var ikebana = Activite(titre: "Atelier Ikebana Tanaka", logo: UIImage(named: "iconAtelier"), type: "Atelier", nomContinent: "Asie", duree: "3h", date: "Tout les Samedi", prix: "Prix : 55 €", contenu: "L'Ikebana connu également connu sous le nom de Kadö, le 'voie des fleurs'", contact: ["Tanaka@blabla.com"], drapeau: "🇯🇵", image: UIImage(named: "ikebana"), favori: false)

var coursLangueItalien = Activite(titre: "Language exchange Italian", logo: UIImage(named: "iconMeeting"), type: "Langues", nomContinent: "Europe", duree: "2h", date: "Mardi soir à partir de 20h", prix: "Prix : 10 €", contenu: "Soirée Language exchange animée par Carola", contact: ["Carola@italia.com"], drapeau: "🇮🇹", image: UIImage(named: "languageitalia"), favori: false)

var atelierMozzarella = Activite(titre: "Atelier Mozzarella Pinoccio", logo: UIImage(named: "iconAtelier"), type: "Atelier", nomContinent: "Europe", duree: "4h", date: "Tout les samedi après-midi", prix: "55 €", contenu: "Préparé la plus succulente des mozzarella avec le maitre fromager Pinoccio", contact: ["PinoccioLeMito@gmail.it"], drapeau: "🇮🇹", image: UIImage(named: "atelierMozza"), favori: true)

var restaurantAsuka = Activite(titre: "Restaurant Asuka", logo: UIImage(named: "iconRestaurant"), type: "Restaurants", nomContinent: "Asie", duree: "De 11h à 14h et de 18h à 23h", date: "Du Mardi au Samedi", prix: "45 €", contenu: "Dégustez une authentique cuisine japonaise composé de sushi et d'autres mets délicieux dans une ambiance atypique et convivial", contact: ["AsukaSushi@blablabla.com"], drapeau: "🇯🇵", image: UIImage(named: "asukaRestaurant"), favori: true)

var restaurantNaritake = Activite(titre: "Naritake", logo: UIImage(named: "iconRestaurant"), type: "Restaurants", nomContinent: "Asie", duree: "De 11h à 00h", date: "Du Mercredi au Lundi", prix: "20 €", contenu: "Le meilleur Ramen de Paris, un bouillon excellent, le roti qui fond dans la bouche, Naritake deviendra votre cantine favorite", contact: ["naritake@pouet.fr"], drapeau: "🇯🇵", image: UIImage(named: "ramenNaritake"), favori: true)

var danceDavina = Activite(titre: "Cours de dance brésilienne", logo: UIImage(named: "Dance"), type: "Dance", nomContinent: "Amerique du sud", duree: "2h", date: "Samedi matin", prix: "55 €", contenu: "Cours de samba brésilienne à paris carnaval Tous niveaux debutant intermédiaire confirmé", contact: ["davinaBresil@balblabla.fr"], drapeau: "🇧🇷", image: UIImage(named: "danceSamba"), favori: false)
