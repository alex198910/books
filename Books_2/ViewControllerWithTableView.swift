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
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(self.tableView)
        
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        // Do any additional setup after loading the view.
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
        let image = data[indexPath.row].mainPicture
        let titleName = (data[indexPath.row].nameUniversal )
        cell.info.text = titleName
        cell.bookImage.image = UIImage(named: image )
        //cell.time.text = String(data[indexPath.row].year ?? 0)
        cell.backgroundColor = UIColor(red:0.87, green:0.65, blue:0.65, alpha:0.20)
        var shortD = (data[indexPath.row].displayInfoForTableview ) + "\n\n"
        shortD = shortD + "\(data[indexPath.row].shortMoreInfo)"
        cell.short.text = shortD
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let detailView = DetailViewController()
        detailView.longD.text = self.data[indexPath.row].displayInfoForDetailview
        detailView.info.text = self.data[indexPath.row].nameUniversal
        detailView.image = self.data[indexPath.row].mainPicture
        detailView.view.backgroundColor = UIColor.white
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