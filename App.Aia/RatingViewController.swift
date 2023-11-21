//
//  RatingViewController.swift
//  App.Aia
//
//  Created by Ainagul Doskazhanova on 15.11.2023.
//

import UIKit

class RatingViewController: UIViewController {

    @IBOutlet var ratingTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        ratingTableView.dataSource = self
        ratingTableView.delegate = self
    }
   
    var arrayPlayer:[Player] = [Player(login: "test", score: 10), Player(login: "Test2", score: 15)]
    

}
extension RatingViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayPlayer.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ratingTableView.dequeueReusableCell(withIdentifier: "PlayerRating") as! PlayerRating
        cell.imageLabel.image = arrayPlayer[indexPath.row].image
        cell.loginLabel.text = arrayPlayer[indexPath.row].login
        cell.scoreLabel.text =
        "\(arrayPlayer[indexPath.row].score ?? 0)"
        cell.goldCup.image = arrayPlayer[indexPath.row].image2
        return cell
    }
}
