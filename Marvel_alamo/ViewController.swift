//
//  ViewController.swift
//  Marvel_alamo
//
//  Created by JIJO G OOMMEN on 19/06/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit
import Alamofire

class Hero {
    var name : String?
    var team : String?

    init(name : String?,team :String?) {
        
        self.name = name
        self.team = team
        
    }
    
    
}

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var heroes = [Hero]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return heroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = marveltableview.dequeueReusableCell(withIdentifier: "MarvelCellid")as! MarvelCell
        
      // let hero : Hero
       //hero = heroes[indexPath.row]
        
        cell.nameoutlet.text =  heroes[indexPath.row].name as! String
        cell.teamoutlet.text = heroes[indexPath.row].team as! String
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 200
    }
    

    @IBOutlet weak var marveltableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request("https://simplifiedcoding.net/demos/marvel/").responseJSON {respons in
            
            if let json = respons.result.value {
                
                let heroesArray : NSArray  = json as! NSArray
                
               // print(heroesArray)
                
                for i in 0..<heroesArray.count{
                    
                    self.heroes.append(Hero( name: (heroesArray[i] as AnyObject).value(forKey: "name") as? String,
                        team: (heroesArray[i] as AnyObject).value(forKey: "team") as? String))
                    
                 print(self.heroes)
                    
                }
                
                self.marveltableview.reloadData()
            }
        }
    }


}

