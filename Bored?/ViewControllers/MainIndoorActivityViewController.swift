//
//  MainIndoorActivityViewController.swift
//  
//
//  Created by Helen Cao on 7/14/17.
//
//

import UIKit

class MainIndoorActivityViewController: UIViewController {
   
    @IBOutlet weak var gamesRow: GamesCellView!
    
    @IBOutlet weak var craftsRow: GamesCellView!
    
    let activities = ["Games", "Movies", "Crafts"]
    
    @IBOutlet weak var moviesRow: GamesCellView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
extension MainIndoorActivityViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return  3
        
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
      
        let cell = tableView.dequeueReusableCell(withIdentifier: "Games", for: indexPath) as! GamesCellView
        let activity = activities[indexPath.row]
        cell.gamesLabel.text = activity
        return cell
    }
    
}
extension MainIndoorActivityViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 201
        
    }

}

extension MainIndoorActivityViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sampleGame", for: indexPath) as! GamesCollectionViewCell
       
        
        return cell
    }
}
