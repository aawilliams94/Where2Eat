//
//  Where2EatViewController.swift
//  Where2Eat
//
//  Created by Ashanti Williams on 5/21/20.
//  Copyright © 2020 Ashanti Williams. All rights reserved.
//

import UIKit

class Where2EatViewController: UIViewController {

    var listOfRestaurants = [String]()
    var timer = Timer()

    
    @IBAction func promptForAnswer() {
        let ac = UIAlertController(title: "Enter new restaurant", message: nil, preferredStyle: .alert)
        ac.addTextField()

        let submitAction = UIAlertAction(title: "Submit", style: .default) { [unowned ac] _ in
            let answer = ac.textFields![0]
         
            self.listOfRestaurants.append(answer.text!)
        }

        ac.addAction(submitAction)

        present(ac, animated: true)
    }
    
   @IBAction func showAlert() {
    let randomNumber = Int.random(in: 0..<listOfRestaurants.count)
       
       let alertController = UIAlertController(title: nil, message: listOfRestaurants[randomNumber], preferredStyle: .alert)
       let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
       alertController.addAction(alertAction)
       
       self.present(alertController, animated: true, completion: nil)
   }
    
    

  override func viewDidLoad() {
      super.viewDidLoad()
    
      // Do any additional setup after loading the view.
  }
    

    
}
