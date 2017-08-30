//
//  ViewController1.swift
//  pro3
//
//  Created by Intern on 15/06/17.
//  Copyright © 2017 Intern. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var lab: UILabel!
    @IBOutlet weak var imge: UIImageView!
    var passedValue: String = ""
    var passedValue1: UIImage? = UIImage(named: "")
    override func viewDidLoad() {
        super.viewDidLoad()
         lab.text = passedValue
        imge.image = passedValue1
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
