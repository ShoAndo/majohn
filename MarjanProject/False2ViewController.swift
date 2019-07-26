//
//  False2ViewController.swift
//  MarjanProject
//
//  Created by 安藤奨 on 2019/07/26.
//  Copyright © 2019 安藤奨. All rights reserved.
//

import UIKit
import FontAwesome_swift

class False2ViewController: UIViewController {
    
    var images = ["majohn1answer","majohn2answer","majohn3answer"]
    
    var count = 0
    @IBOutlet weak var imageViewFalse2: UIImageView!
    
    @IBOutlet weak var labelFalse2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        count += 1
        
        imageViewFalse2.image = UIImage(named: images[count-1])
        
        labelFalse2.font = UIFont.fontAwesome(ofSize: 80, style: .regular)
        
        labelFalse2.text = String.fontAwesomeIcon(name: .timesCircle)
        
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
