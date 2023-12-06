//
//  ViewController.swift
//  app
//
//  Created by mac on 17.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let button = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "First VC"
        
        self.view.backgroundColor = .systemBackground
        
        self.button.setTitle("Second VC", for: .normal)
        self.button.sizeToFit()
        self.button.center = self.view.center
        self.button.addTarget(self, action: #selector(didTupButtton), for: .touchUpInside)
        self.view.addSubview(self.button)
    }
    @objc
    func didTupButtton() {
        let secondVC = JokeFeedViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
    }

}

