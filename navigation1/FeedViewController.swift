//
//  FeedViewController.swift
//  navigation1
//
//  Created by Гегель Наталия on 30.04.2023.
//

import UIKit

class FeedViewController: UIViewController {
    private let secondPost = Post(title: "PostViewController")

    private lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Перейти к посту", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }

    private func setupViews() {
        view.addSubview(button)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)]) }

    @objc private func tapButton() {
        let postVC = PostViewController()
        postVC.post = secondPost
        navigationController?.pushViewController(postVC, animated: true)
    }
}
