//
//  CustomTaskTableViewCell.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/10.
//

import UIKit

protocol DeleteTaskCellDelegate: AnyObject {
    func didTap()
}


class CustomTaskTableViewCell: UITableViewCell {
    
    weak var delegate: DeleteTaskCellDelegate?
    var nameText: String = ""
    let viewModel = TodoListViewModel()
    @IBOutlet weak var name: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func getWeather(sender: UIButton){
        print("lllllllll \(nameText)")
        viewModel.deleteTask(name: nameText)
        delegate?.didTap()
    }

}
