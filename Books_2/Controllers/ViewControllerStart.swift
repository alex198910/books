//
//  ViewController.swift
//  Books_2
//
//  Created by admin on 27.01.2020.
//  Copyright © 2020 Alex. All rights reserved.
//

import UIKit


class ViewControllerStart: UIViewController {
    
    let booksButton: UIButton = UIButton(type: .system)
    let magazinesButton: UIButton = UIButton(type: .system)
    let stackView = UIStackView()
    let source = SourceForParse.shared
    let dataManager = DataManager.shared
    var data = [Universal]()
    var spinner = UIActivityIndicatorView()
    
    
    @objc func booksButtonAction(){
        stackView.isHidden = true
        spinner.startAnimating()
        source.makeBookLink()
        newDatagetter()
    }
    
    @objc func magazinesButtonAction(){
           stackView.isHidden = true
           spinner.startAnimating()
           source.makeMagazineLink()
           newDatagetter()
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupStackView()
        setupSpinner()
        setupMagazineButton()
        setupBooksButton()        
    }
    
    func setupStackView() {
        stackView.axis = .vertical
        stackView.spacing = 40
        view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func setupBooksButton() {
        stackView.addArrangedSubview(booksButton)
        booksButton.translatesAutoresizingMaskIntoConstraints = false
        booksButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        booksButton.setTitle("Books", for: .normal)
        booksButton.setTitle("_____", for: .highlighted)
        booksButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        booksButton.backgroundColor = UIColor(red: 0.5, green: 0.1, blue: 0.1, alpha: 0.2)
        booksButton.layer.cornerRadius = 10
        booksButton.addTarget(self, action:  Selector(("booksButtonAction")), for: .touchUpInside)
    }
    
    func setupMagazineButton() {
        stackView.addArrangedSubview(magazinesButton)
        magazinesButton.translatesAutoresizingMaskIntoConstraints = false
        magazinesButton.widthAnchor.constraint(equalToConstant: 150).isActive = true

        magazinesButton.setTitle("Magazines", for: .normal)
        magazinesButton.setTitle("_____", for: .highlighted)
        magazinesButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        magazinesButton.backgroundColor = UIColor(red: 0.2, green: 0.5, blue: 0.1, alpha: 0.2)
        magazinesButton.layer.cornerRadius = 10
        magazinesButton.addTarget(self, action:  Selector(("magazinesButtonAction")), for: .touchUpInside)
    }
    
    func setupSpinner() {
        view.addSubview(spinner)
        spinner.translatesAutoresizingMaskIntoConstraints = false
        spinner.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        spinner.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        spinner.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        spinner.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        spinner.center = self.view.center
        spinner.color = UIColor(red:0.13, green:0.56, blue:0.97, alpha:1.0)
        spinner.style = UIActivityIndicatorView.Style.large
        
    }
    
    func newDatagetter() {
        dataManager.getUniversalData { [weak self] data in
            guard let strongSelf = self, let data = data, data.count > 0 else {
                self?.spinner.stopAnimating()
                let alertUIAlertController = UIAlertController(title: "Ошибка", message: "Ошибка загрузки файлов", preferredStyle: .alert)
                let closeButtonUIAlertAction = UIAlertAction(title: "Закрыть", style: .default, handler: { action in})
                alertUIAlertController.addAction(closeButtonUIAlertAction)

                DispatchQueue.main.async(execute: {
                    self?.present(alertUIAlertController, animated: true)
                    self?.spinner.stopAnimating()
                    self?.stackView.isHidden = false
                })
                return
            }
            
            strongSelf.data = data
            DispatchQueue.main.async {
                self?.spinner.stopAnimating()
                let mainTVC = ViewControllerWithTableView()
                mainTVC.data = strongSelf.data
                self?.navigationController?.pushViewController(mainTVC, animated: true)
                self?.stackView.isHidden = false
            }
        }
        
    }
    


}

