//
//  JokeFeedViewController.swift
//  app
//
//  Created by mac on 22.11.2023.
//

import UIKit

class JokeFeedViewController: UIViewController {
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Jokes Feed"
        
        view.addSubview(tableView)
        tableView.frame = view.bounds

        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(JokeTableViewCell.self, forCellReuseIdentifier: "JokeTableViewCell")
        
    }
   
}

extension JokeFeedViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "JokeTableViewCell", for: indexPath)
        return cell
    }
}

extension JokeFeedViewController: UITableViewDelegate {
    
}
