//
//  ViewController.swift
//  EssentialTableViewSample
//
//  Created by Hansub Yoo on 2020/09/27.
//

import UIKit

class ViewController: UIViewController {
    
    let list = ["iPhone", "iPad", "Apple watch", "iMac Pro", "iMac 5K", "Macbook Pro", "Apple TV"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("#1", #function)
        return 100
    }
    
    // 최대 16ms 이하에서 처리해야함
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("#2", #function, indexPath.row)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "switchCell", for: indexPath)
        
        cell.textLabel?.text = "\(indexPath.section) - \(indexPath.row)"
        
        return cell
    }
}
