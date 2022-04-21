//
//  PostTableViewCell.swift
//  Navigation
//
//  Created by solkent on 09.04.2022.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    lazy var backView: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    lazy var mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    lazy var likesViewsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    lazy var postAuthorLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var postImageView: UIImageView = {
        let imageView = UIImageView()
        //imageView.layer.cornerRadius = 35
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .black
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    lazy var postDescriptionLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray
        label.font = UIFont.systemFont(ofSize: 14)
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var postLikesLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var postViewsLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupView()
        self.activateConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        self.postAuthorLabel.text = nil
        self.postDescriptionLabel.text = nil
        self.postLikesLabel.text = nil
        self.postViewsLabel.text = nil
    }

    private func setupView() {

        self.contentView.addSubview(self.backView)
        self.backView.addSubview(self.mainStackView)
        self.mainStackView.addArrangedSubview(self.postAuthorLabel)
        self.mainStackView.addArrangedSubview(self.postImageView)
        self.mainStackView.addArrangedSubview(self.postDescriptionLabel)
        self.mainStackView.addArrangedSubview(self.likesViewsStackView)
        self.likesViewsStackView.addArrangedSubview(self.postLikesLabel)
        self.likesViewsStackView.addArrangedSubview(self.postViewsLabel)
    }

    private func activateConstraints() {
        let constraints = [

            self.backView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            self.backView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            self.backView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            self.backView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),

            self.mainStackView.topAnchor.constraint(equalTo: self.backView.topAnchor),
            self.mainStackView.leadingAnchor.constraint(equalTo: self.backView.leadingAnchor),
            self.mainStackView.bottomAnchor.constraint(equalTo: self.backView.bottomAnchor),
            self.mainStackView.trailingAnchor.constraint(equalTo: self.backView.trailingAnchor),

            self.postAuthorLabel.topAnchor.constraint(equalTo: mainStackView.topAnchor, constant: 16),
            self.postAuthorLabel.leadingAnchor.constraint(equalTo: mainStackView.leadingAnchor, constant: 16),
            self.postAuthorLabel.trailingAnchor.constraint(equalTo: mainStackView.trailingAnchor, constant: -16),

            self.postImageView.topAnchor.constraint(equalTo: postAuthorLabel.bottomAnchor, constant: 16),
            self.postImageView.leadingAnchor.constraint(equalTo: mainStackView.leadingAnchor),
            self.postImageView.trailingAnchor.constraint(equalTo: mainStackView.trailingAnchor),

            self.postDescriptionLabel.topAnchor.constraint(equalTo: postImageView.bottomAnchor, constant: 16),
            self.postDescriptionLabel.leadingAnchor.constraint(equalTo: mainStackView.leadingAnchor, constant: 16),
            self.postDescriptionLabel.trailingAnchor.constraint(equalTo: mainStackView.trailingAnchor, constant: -16),

            self.likesViewsStackView.topAnchor.constraint(equalTo: postDescriptionLabel.bottomAnchor, constant: 16),
            self.likesViewsStackView.leadingAnchor.constraint(equalTo: mainStackView.leadingAnchor, constant: 16),
            self.likesViewsStackView.bottomAnchor.constraint(equalTo: mainStackView.bottomAnchor, constant: 16),
            self.likesViewsStackView.trailingAnchor.constraint(equalTo: mainStackView.trailingAnchor, constant: -16),

        ]

        NSLayoutConstraint.activate(constraints)
    }

    var post: PostModel? {
        didSet {
            guard post != nil else {return}
            if let author = post?.author {
                postImageView.image = UIImage(named: author.lowercased())
                postAuthorLabel.text = author
            }
            if let description = post?.description {
                postDescriptionLabel.text = description
            }
            if let likes = post?.likes {
                postLikesLabel.text = "Likes: \(likes)"
            }
            if let views = post?.views {
                postViewsLabel.text = "Views: \(views)"
            }
        }
    }
}
