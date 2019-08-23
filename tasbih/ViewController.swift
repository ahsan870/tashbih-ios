//
//  ViewController.swift
//  tasbih
//
//  Created by Ahsan Ahmed on 3/27/19.
//  Copyright © 2019 Ahsan Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    // Speacial duwa
    let Speacialduwa = "বিসমিল্লাহ্‌হির রাহমানির রাহিম"
  
    // counter
    var counter = 0
    // Array for pic
    let duwaarray = ["pic1", "pic2", "pic3"]
    
    // reset function for app
    func reset (){
        if counter == 99{
            counter = 0
        }else{
            print("Continue")
        }
    }
    
    func specialDuwa (){
        
        if counter == 33{
            speacial.isHidden = false
            speacial.text = Speacialduwa
        }else if counter == 66{
            speacial.isHidden = false
            speacial.text = Speacialduwa
        }else if counter == 98{
            speacial.isHidden = false
            speacial.text = Speacialduwa
        }else{
            speacial.isHidden = true
        }
    }
    
    @IBOutlet weak var topDuwaImage: UIImageView!
 
    @IBOutlet weak var counterForTasbih: UILabel!
    
    @IBOutlet weak var speacial: UILabel!
    
    @IBAction func PressForTasbih(_ sender: Any) {
       
        
        //repeat loop start from here
        counter+=1
               counterForTasbih.text = String(counter)
        
        if ( counter <= 33 ){
           print("1")
            topDuwaImage.image = UIImage(named: duwaarray[0])

        } else if (counter > 33 && counter < 67){
            print("2")
         topDuwaImage.image = UIImage(named: duwaarray[1])
        }else
        {
             print("3")
           topDuwaImage.image = UIImage(named: duwaarray[2])
        }
            reset()
        specialDuwa()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

