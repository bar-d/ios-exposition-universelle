//
//  CustomTableViewCell.swift
//  Expo1900
//
//  Created by unchain, bard on 2022/06/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    static let identifier = ExpoNameSpace.cellIdentifier.name
    
    let koreaEntryImage: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    let koreaEntryTitle: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    let shortDescription: UILabel = {
        let description = UILabel()
        description.translatesAutoresizingMaskIntoConstraints = false
        description.numberOfLines = 0

        return description
    }()
    
    let verticalStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.distribution = .equalCentering
        stackView.alignment = .top
        return stackView
    }()
    
    func addSubviews() {
        self.contentView.addSubview(koreaEntryImage)
        self.contentView.addSubview(verticalStackView)
        setStackView()
    }
    
    func setConstraints() {
        self.setKoreaEntryImageConstraints()
        self.setStackViewConstraints()
    }
    
    func setStackView() {
        verticalStackView.addArrangedSubview(koreaEntryTitle)
        verticalStackView.addArrangedSubview(shortDescription)
    }
    
    func setKoreaEntryImageConstraints() {
        NSLayoutConstraint.activate([
            koreaEntryImage.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10),
            koreaEntryImage.widthAnchor.constraint(equalTo: self.contentView.widthAnchor, multiplier: 0.3),
            koreaEntryImage.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor)
        ])
    }
   
    func setStackViewConstraints() {
        NSLayoutConstraint.activate([
            verticalStackView.centerYAnchor.constraint(equalTo: koreaEntryImage.centerYAnchor),
            verticalStackView.leadingAnchor.constraint(equalTo: koreaEntryImage.trailingAnchor, constant: 10),
            verticalStackView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            verticalStackView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -10)
        ])
    }
}
