//
//  JokeTableViewCell.swift
//  app
//
//  Created by mac on 22.11.2023.
//

import UIKit

final class JokeTableViewCell: UITableViewCell {
    
    private let likeImageButton: UIButton = {
        let button = UIButton(type: .system)
        let likeImage = UIImage(systemName: "hand.thumbsup.fill")
        button.setBackgroundImage(likeImage, for: .normal)
        return button
    }()
    
    private let jokeTextLabel: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        contentView.addSubview(likeImageButton)
        contentView.addSubview(jokeTextLabel)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        likeImageButton.frame = .init(x: 12,
                                y: 6,
                                width: 40,
                                height: 40)
        jokeTextLabel.frame = .init(x: likeImageButton.frame.maxX + 8,
                                    y: 8,
                                    width: contentView.frame.width - likeImageButton.frame.maxX + 8,
                                    height: 30)
    }
    
    func configure(title: String) {
        jokeTextLabel.text = title
    }
}
