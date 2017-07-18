//
//  ViewController.swift
//  Bored?
//
//  Created by Helen Cao on 7/11/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit
import CoreData
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var individualButton: UIButton!
    
    @IBOutlet weak var groupButton: UIButton!
    
    @IBOutlet weak var done: UIButton!
    
    //        var user = NSEntityDescription.insertNewObject(forEntityName: "user", into: ?) as! Preferences
    
    
    override func viewDidLoad() {
        
        done.isUserInteractionEnabled = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    
    @IBAction func individualButtonPressed(_ sender: UIButton) {
        let preference: Preferences
        if CoreDataHelper.retrieveIndividualData().count > 0{
            preference = CoreDataHelper.preferenceObj()
        }
        else{
            preference = CoreDataHelper.retrieveIndividualData().first!
        }
        if preference.group == true{
            preference.group = false
        }
        print(preference.individual)
        if preference.individual == true{
            individualButton.setImage(UIImage(named: "btn_heart_black_outline-1"), for: .normal)
            groupButton.setImage(UIImage(named: "btn_heart_red_solid"), for: .normal)
            
            preference.individual = false
            done.isUserInteractionEnabled = true
        }
        else{
            individualButton.setImage(UIImage(named: "btn_heart_red_solid"), for: .normal)
            groupButton.setImage(UIImage(named:  "btn_heart_black_outline-1"), for: .normal)
            preference.individual = true
            done.isUserInteractionEnabled = true
        }
        CoreDataHelper.saveData()
        print("1group value:\(preference.group) individual value:\(preference.individual)")
    }
    @IBAction func groupButtonPressed(_ sender: UIButton) {
        let preference: Preferences
        if CoreDataHelper.retrieveIndividualData().count > 0{
            preference = CoreDataHelper.preferenceObj()
        }
        else{
            preference = CoreDataHelper.retrieveIndividualData().first!
        }
        if preference.individual == true{
            preference.individual = false
        }
        
        if preference.group == true{
            groupButton.setImage(UIImage(named:  "btn_heart_black_outline-1"), for: .normal)
            individualButton.setImage(UIImage(named: "btn_heart_red_solid"), for: .normal)
            preference.group = false
            done.isUserInteractionEnabled = true
        }
        else{
            groupButton.setImage(UIImage(named: "btn_heart_red_solid"), for: .normal)
            individualButton.setImage(UIImage(named: "btn_heart_black_outline-1"), for: .normal)
            preference.group = true
            done.isUserInteractionEnabled = true
        }
        
        
        CoreDataHelper.saveData()
        
        print("2group value:\(preference.group) individual value:\(preference.individual)")
        
    }
    
    @IBAction func doneButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toMain", sender: self)
    }
    
    
}




// Key for Google Places: AIzaSyCgMny9yReGFxObCluh8auo7ORCTsXeReQ
