//
//  Choise View Controller.swift
//  App.Aia
//
//  Created by Ainagul Doskazhanova on 02.11.2023.
//

import UIKit

class Choise_View_Controller: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
//    var choise = 1
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PlayWithAI" {
            let destination = segue.destination as! ViewController
            destination.game.PlayWithAI = true
            //            if choise == 0 {
            //                destination.view.backgroundColor = .black
            //                for i in destination.arrayButton {
            //                    i.backgroundColor = .white
            //                }
            //                destination.winLabel.textColor = .white
//        }
            }
         }
    }



//func collectionView(_collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//    let cell = ThemeCollectionView.cellForItem(at: indexPath) as? ThemeCollectionViewCell
//    cell?.contentView.backgroundColor = .blue
//    choise = indexPath.row
//}
//func collectionView(_collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//    let cell = ThemeCollectionView.cellForItem(at: indexPath) as? ThemeCollectionViewCell
//    cell?.contentView.backgroundColor = .clear
//}

