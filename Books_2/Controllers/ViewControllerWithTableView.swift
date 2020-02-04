//
//  ViewControllerWithTableView.swift
//  Books_2
//
//  Created by admin on 27.01.2020.
//  Copyright © 2020 Alex. All rights reserved.
//

import UIKit

class ViewControllerWithTableView: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let tableView = UITableView.init(frame: .zero, style: .plain)
    var data: [Universal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.systemYellow
        self.tableView.register(UINib(nibName: "CellTableViewCell", bundle: nil), forCellReuseIdentifier: "CellTableViewCell")
        self.tableView.delegate = self
        self.tableView.dataSource = self
        setupTableViewConstraint()
        
        // Do any additional setup after loading the view.
    }
    
    func setupTableViewConstraint() {
        view.addSubview(self.tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
     }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CellTableViewCell", for: indexPath) as? CellTableViewCell else {
            return UITableViewCell()
        }
        let infoForCell = data[indexPath.row]
        cell.info.text = infoForCell.nameUniversal
        cell.bookImage.image = UIImage(named: infoForCell.mainPicture )
        cell.short.text = (infoForCell.displayInfoForTableview ) + "\n\n" + "\(infoForCell.shortMoreInfo)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let detailView = DetailViewController()
        let infoForCell = data[indexPath.row]
        detailView.longDescription.text = infoForCell.displayInfoForDetailview
        detailView.topTitle.text = infoForCell.nameUniversal
        detailView.image = infoForCell.mainPicture
        
        self.navigationController?.pushViewController(detailView, animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
