//
//  AnswerViewController.swift
//  MarjanProject
//
//  Created by 安藤奨 on 2019/07/26.
//  Copyright © 2019 安藤奨. All rights reserved.
//

import UIKit
import FontAwesome_swift

class AnswerViewController: UIViewController {
    
    var count = 0
    
    var images = ["majohn1answer","majohn2answer","majohn3answer"]

    @IBOutlet weak var imageViewAnswer: UIImageView!
    @IBOutlet weak var labelAnswer: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        count += 1
        
        imageViewAnswer.image = UIImage(named: images[count-1])
        
        labelAnswer.font = UIFont.fontAwesome(ofSize: 80, style: .regular)
        labelAnswer.text = String.fontAwesomeIcon(name: .circle)
        

    }
    
    
    
    
    @IBAction func didClickButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toNext", sender: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
