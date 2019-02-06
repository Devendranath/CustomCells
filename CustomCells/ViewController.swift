//
//  ViewController.swift
//  CustomCells
//
//  Created by apple on 06/02/19.
//  Copyright © 2019 iOSProofs. All rights reserved.
//
 
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        if let label = cell.viewWithTag(101) as? UILabel , let imageView = cell.viewWithTag(102) as? UIImageView {
            label.text = "Cell \(indexPath.row)"
        }
        if let imageView = cell.viewWithTag(102) as? UIImageView {
            imageView.backgroundColor = (indexPath.row % 2 == 0) ? UIColor.red : UIColor.green
        }
        return cell
    }
}
