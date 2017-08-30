//
//  ViewController.swift
//  pro3
//
//  Created by Intern on 14/06/17.
//  Copyright © 2017 Intern. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var name = ["AMERICANA","HIPHOP","MOTORCYCLE","PORTRAIT","STREETWEAR"]
    var image = [UIImage(named: "americana"),UIImage(named: "hiphop"),UIImage(named: "motor cycle"),UIImage(named:"portrait"),UIImage(named:"streetwear")]
    var id = ["a"]
    var valueToPass:String? = ""
    var imageToPass = UIImage(named: "")
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK -NoOfRow
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    //MARK -CellForRow
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.photo.image = image[indexPath.row]
        cell.name.text = name[indexPath.row]
        return cell
    }
    
    //MARK -Navigation
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //   let vc = id[indexPath.row]
        print("You selected cell #\(indexPath.row)!")
        // Get Cell Label
        let indexPath = tableView.indexPathForSelectedRow!
        let currentCell = tableView.cellForRow(at: indexPath)! as! TableViewCell
        valueToPass = currentCell.name.text
        print("\(valueToPass)!")
        imageToPass = currentCell.photo.image
        print("\(imageToPass)!")
        //    performSegue(withIdentifier: "Segue", sender: self)
        if let secondVC  = self.storyboard?.instantiateViewController(withIdentifier: "a") as? ViewController1{
        secondVC.passedValue = valueToPass!
       secondVC.passedValue1 = imageToPass
            self.navigationController?.pushViewController(secondVC, animated: true)}
        
    }   // override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
  //      if segue.identifier == "Segue" {
            
   //        let vw = segue.destination as? ViewController1
   //        vw?.passedValue = valueToPass!
    //        vw?.passedValue1 = imageToPass
           
   //     }
//}

}
