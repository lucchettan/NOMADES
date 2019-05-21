import UIKit

class SegmentedViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var segmentedCollection: UICollectionView!
    
    var origines = ["afrique","Amerique","Asie","Europe","oceanie","Amerique du sud"]
    var activites = ["Musee","Restaurants","Dance", "Atelier","Langues","Meeting"]
    var displayItems: [String] = []
    var selectedFiltre = Set<String>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayItems = activites
        segmentedCollection.dataSource = self
        segmentedCollection.delegate = self
        //        permet de selectionner plusieurs items
        segmentedCollection.allowsMultipleSelection = true
        //        fais apparaitre la barre de navigation
        self.navigationController?.navigationBar.isHidden = true
    }
    
    //    permet de switcher l'arrazy d'icones en fonction du segmented selectionne
    @IBAction func segmentedSwitch(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            displayItems = activites
        } else {
            displayItems = origines
        }
        
        for item in displayItems.enumerated() {
            if selectedFiltre.contains(item.element) {
                let indexPath = IndexPath(row: item.offset, section: 0)
                segmentedCollection.selectItem(at: indexPath, animated: false, scrollPosition: .top)
                print(">>>> sele cted \(item.element)")
            }
        }
        
        segmentedCollection.reloadData()
    }
    
    //    rends le nombre de cellmule aussi grand que le nombre d'item dans l'array
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return displayItems.count
    }
    
    //    definit les propriete voulu a la cellule
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellCollection", for: indexPath) as? CelluleCollectionViewCell
        cell?.img.image = UIImage(named: displayItems[indexPath.row])
        cell?.label.text = displayItems[indexPath.row]
        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let filter = displayItems[indexPath.row]
        selectedFiltre.insert(filter)
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let filter = displayItems[indexPath.row]
        selectedFiltre.remove(filter)
    }
    
    
    @IBAction func validatingFilter(_ sender: UIButton) {
        //       performSegue(withIdentifier: "validateFilter", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(">>> \(selectedFiltre)")
        if segue.identifier == "validateFilter", let vcDestination = segue.destination as? AccueilViewController {
            vcDestination.filters = selectedFiltre
        }
    }
}
