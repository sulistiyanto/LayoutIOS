//
//  ViewController.swift
//  Coba
//
//  Created by User on 03/04/18.
//  Copyright © 2018 User. All rights reserved.
//

import UIKit

struct cellTextField {
    let cell : Int!
    let text1 : String!
    let text2 : String!
}

class TableViewController: UITableViewController {

    var arrayOfDataCell = [cellTextField]()
    
    override func viewDidLoad() {
        arrayOfDataCell = [cellTextField(cell : 1, text1 : "", text2 : "Sulistiyanto"),
                           cellTextField(cell : 2, text1 : "+62", text2 : "85330049555"),
                           cellTextField(cell : 1, text1 : "", text2 : "sulistiyanto404@gmail.com"),
                           cellTextField(cell : 3, text1 : "", text2 : "")]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfDataCell.count
        //l
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if arrayOfDataCell[indexPath.row].cell == 3 {
            let cell = Bundle.main.loadNibNamed("ButtonCell", owner: self, options: nil)?.first as! ButtonCell
            return cell
        } else {
            let cell = Bundle.main.loadNibNamed("TextFieldCell", owner: self, options: nil)?.first as! TextFieldCell
            if arrayOfDataCell[indexPath.row].cell == 1 {
                cell.textField1.isHidden = true
            }
            
            cell.textField1.text = arrayOfDataCell[indexPath.row].text1
            cell.textField2.text = arrayOfDataCell[indexPath.row].text2
            
            return cell
        }
    }
    
}

