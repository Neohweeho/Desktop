//
//  ViewController.swift
//  week3
//
//  Created by labuser on 22/11/2024.
//

import UIKit
//setp 4 iMPLEMENT INTERFACE
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var nameTxt: UITableView!
    @IBOutlet weak var text1: UITextField!
    //step 5 : create array
    var array:[String] = ["lee","TIM","HAO"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //STEP 6 :tell table how many row
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    //STEP 7 :tell table view cell how to display
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = array[indexPath.row]
        return cell!
        
    }
    @IBAction func buttonclick(_ sender: Any) {
        let name:String = text1.text!.description
        array.append(name)
        nameTxt.reloadData()

    }
    
}

