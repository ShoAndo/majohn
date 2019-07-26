//
//  ViewController.swift
//  MarjanProject
//
//  Created by 安藤奨 on 2019/07/25.
//  Copyright © 2019 安藤奨. All rights reserved.
//

import UIKit
import FontAwesome_swift

class ViewController: UIViewController {
    
    var count = 0
    
    var questions = [["majohn1","7m","9so","3so"],
                     ["majohn2","4pin","2pin","7m"],
                     ["majohn3","3m","3pin","7m"]
    ]
    
    @IBOutlet weak var imageViewQuestion: UIImageView!
    
    @IBOutlet weak var labelRight: UILabel!
    @IBOutlet weak var labelDown: UILabel!
    @IBOutlet weak var labelLeft: UILabel!
    @IBOutlet weak var imageView3rd: UIImageView!
    @IBOutlet weak var imageView2nd: UIImageView!
    @IBOutlet weak var imageView1st: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        
    
        count += 1
        
        imageViewQuestion.image = UIImage(named: questions[count-1][0])
        
        imageView1st.image = UIImage(named: questions[count-1][1])
        
        imageView2nd.image = UIImage(named: questions[count-1][2])
        
        imageView3rd.image = UIImage(named: questions[count-1][3])
        
        labelLeft.font = UIFont.fontAwesome(ofSize: 80, style: .solid)
        labelLeft.text = String.fontAwesomeIcon(name: .arrowLeft)
        
        labelDown.font = UIFont.fontAwesome(ofSize: 80, style: .solid)
        labelDown.text = String.fontAwesomeIcon(name: .arrowDown)
        
        labelRight.font = UIFont.fontAwesome(ofSize: 80, style: .solid)
        labelRight.text = String.fontAwesomeIcon(name: .arrowRight)
        
    }
    
    
    @IBAction func swipeRight(_ sender: UISwipeGestureRecognizer) {
        performSegue(withIdentifier: "toCorrect", sender: nil)
    }
    
    @IBAction func swipeLeft(_ sender: UISwipeGestureRecognizer) {
        performSegue(withIdentifier: "tofalse1", sender: nil)
    }
    

    @IBAction func swipeDown(_ sender: UISwipeGestureRecognizer) {
        performSegue(withIdentifier: "tofalse2", sender: nil)
    }
    
}

