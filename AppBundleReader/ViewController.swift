//
//  ViewController.swift
//  AppBundleReader
//
//  Created by Eliel A. Gordon on 10/26/17.
//  Copyright © 2017 Eliel Gordon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var robots = [Robot]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let path = Bundle.main.path(forResource: "robo-profiles", ofType: ".json")
        if let path = path {
            let url = URL(fileURLWithPath: path)
            let contents = try? Data(contentsOf: url, options: .alwaysMapped)
            let robots = try? JSONDecoder().decode([Robot].self, from: contents!)
            guard let Robots = robots else {return}
            self.robots = Robots
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.robots.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = indexPath.row
        let robot = self.robots[row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "robotcell", for: indexPath)
        cell.textLabel?.text = robot.name + "   '\(robot.phrase)'"
        return cell
    }
    
    
}

