//
//  CustomTaskTableViewCell.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/10.
//

import UIKit

class CustomTaskTableViewCell: UITableViewCell {
    
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
        viewModel.getWeather {  [weak self] weather in
            self?.name.text = String(weather.main.temp)
        }
    }

}
