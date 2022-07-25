//
//  TableViewController.swift
//  Hello iOS
//
//  Created by jv-lee on 2022/7/22.
//

import Foundation
import UIKit

class TableViewController : UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    lazy var table: UITableView = {
        let table = UITableView(frame: self.view.bounds,style: UITableView.Style.plain)
        // 隐藏item分割线
        table.separatorStyle = .none
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        initTableView()
    }
    
    func initTableView() {
        view.addSubview(table)
        table.delegate = self
        table.dataSource = self
    }
    
    // item count
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 60
    }
    
    // item view
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: UITableViewCell.CellStyle.default,reuseIdentifier: "naormalCell")
        let cellSelectBackground = UIView(frame: cell.frame)
        cellSelectBackground.backgroundColor = .blue
        cell.selectedBackgroundView = cellSelectBackground
        cell.backgroundColor = .blue
        cell.layer.cornerRadius = 20
        
        let titleLabel = UILabel(frame: CGRect(x: 15, y: 10, width: cell.bounds.width, height: 30))
        titleLabel.text = String(format: "行：%d",indexPath.row+1)
        cell.contentView.addSubview(titleLabel)
        
        let contentLabel = UILabel(frame: CGRect(x: 15, y: 40, width: cell.bounds.width, height: 30))
        contentLabel.text = "this is tableView item content."
        cell.contentView.addSubview(contentLabel)
        
        print(cell.contentView.bounds)
        return cell
    }
    
    // item height
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
//    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
//        return UITableViewCell.EditingStyle.delete
//    }
//
//    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
//        return true
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
}
