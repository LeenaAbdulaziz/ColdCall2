//
//  ViewController.swift
//  ColdCall2
//
//  Created by Linah abdulaziz on 27/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    let list: [String] = ["Uyanga", "Courtny" ,"Jay" , "Bryant", "Jimmy" , "Cody", "Ryota"]
    
    
    
   
    @IBAction func OnCallPressed(_ sender: UIButton) {
        
        nameLabel.text=list.randomElement()
        
        ChanedColor()
       
    }
    
         
       
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text="Ready?"
    }
    
    func ChanedColor(){

        var randomName = Int.random(in: 1...5)
       
        
        numberLabel.text=String(randomName)
        
        
        if (randomName<6){
                if (randomName == 1 || randomName == 2){
                    numberLabel.textColor = UIColor.red
                    numberLabel.text = String(randomName)
        
        
                } else if (randomName == 3 || randomName == 4){
                    numberLabel.textColor = UIColor.orange
                    numberLabel.text = String(randomName)
        
        
                } else if (randomName == 5 ){
                    numberLabel.textColor = UIColor.green
                    numberLabel.text = String(randomName)
        
                }
                   
        
                }
                else{
                    randomName=Int.random(in: 1...5)
                }
       
        
        
    }
    
    


}
