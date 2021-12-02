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
    
    var randomName=Int.random(in: 0...6)
    var randomNumber=Int.random(in: 1...5)
    
    
   
    @IBAction func OnCallPressed(_ sender: UIButton) {
        //  if(randomNumber = 1 || randomNumber = 2){
         
        if (randomName<list.count-1){
            randomName+=1
        }else{
            randomName=Int.random(in: 0...5)
        }
      nameLabel.text=list[randomName]
        ChanedColor()
        
       
    }
    
         
       
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //nameLabel.text="Ready?"
    }
    
    func ChanedColor(){
        if (randomNumber<6){
        if (randomNumber == 1 || randomNumber == 2){
            numberLabel.textColor = UIColor.red
            numberLabel.text = String(randomNumber)
           
        } else if (randomNumber == 3 || randomNumber == 4){
            numberLabel.textColor = UIColor.orange
            numberLabel.text = String(randomNumber)
            
           
        } else if (randomNumber == 5 ){
            numberLabel.textColor = UIColor.green
            numberLabel.text = String(randomNumber)
            
        }
            randomNumber += 1
        
        }
        else{
            randomNumber=Int.random(in: 1...6)
        }
    }
    
    


}
