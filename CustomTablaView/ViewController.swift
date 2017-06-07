//
//  ViewController.swift
//  CustomTablaView
//
//  Created by Juan Pablo Ghelfi on 6/4/17.
//  Copyright © 2017 Juan Pablo Ghelfi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var tableView: UITableView!
    
    let labelOne = ["One", "Two", "three"]
    let labelTwo = ["Five", "Four"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        if let height = self.navigationController?.navigationBar.frame.size.height{
            
            self.tableView.contentInset = UIEdgeInsetsMake(height,0,0,0)
        }
        
        // Transparent navigation
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
//        self.navigationController?.navigationBar.shadowImage = UIImage()
//        self.navigationController?.navigationBar.isTranslucent = true
        
        navigationController?.navigationBar.barTintColor = UIColor.black

        self.title = "NETFLIX"
        let titleDict: NSDictionary = [NSForegroundColorAttributeName: UIColor.red]
        self.navigationController?.navigationBar.titleTextAttributes = titleDict as! [String : Any]
        
        
    }
    
    // MARK: - TableView
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            let sectionName = "Peliculas"
            return sectionName
        
        } else if section == 1{
            return "Series"
        }
        return nil
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

//        let row = indexPath.row
//        let section = indexPath.section
        
//        if section == 0 && row < labelOne.count{
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "cellTwo", for: indexPath)
            return cell


//            let cell = tableView.dequeueReusableCell(withIdentifier: "cellOne", for: indexPath)
//            let label = labelOne[indexPath.row]
//            
//            if let labelCell = cell as? CellOneTableViewCell{
//                labelCell.setup(aLabel: label)
//            }
//            return cell
        
//        } else if section == 1{
//            
//            let cell = tableView.dequeueReusableCell(withIdentifier: "cellTwo", for: indexPath)
//            return cell
//        }
//        return UITableViewCell()
    
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {

//        if indexPath.section == 1{
            if let cell = cell as? CellTwoTableViewCell{
                cell.collectionView.dataSource = self
                cell.collectionView.delegate = self
                cell.collectionView.reloadData()
            }
//        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
            let height: CGFloat = 150.0
            return height
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 15.0
    }
    
    // MARK: - CollectionView
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath as IndexPath)
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        
        let collectionCell = cell as? CellCollectionViewCell
        collectionCell?.setup(image: "https://images-na.ssl-images-amazon.com/images/I/413fcm26GQL.jpg")
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let newController = storyboard?.instantiateViewController(withIdentifier:"viewController"){
            
            navigationController?.pushViewController(newController, animated: true)
        }
        
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        
//        let layout = collectionViewLayout as! UICollectionViewFlowLayout
//        layout.minimumLineSpacing = 5.0
//        layout.minimumInteritemSpacing = 10
//        
//        let numberOfItemsPerRow: CGFloat = 4.0
//        let itemWidth = (collectionView.bounds.width - layout.minimumLineSpacing) / numberOfItemsPerRow
//        
//        return CGSize(width: itemWidth, height: itemWidth)
//    }
    
    
    
    
        
    
    
    
    
    
    
    
    
    
    
}
