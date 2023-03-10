//
//  TaskDetailsViewController.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/10.
//

import Foundation
import UIKit

class TaskDetailsViewController: UIViewController {
    var taskName = ""
    var taskDescription = ""
    let viewModel = TodoListViewModel()
    @IBOutlet weak var stockLabel: UILabel!
    @IBOutlet weak var weatherLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var taskNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        taskNameLabel.text = taskName
        descriptionLabel.text = taskDescription
    }
    
    @IBAction func getWeather(sender: UIButton){
        viewModel.getWeather {  [weak self] weather in
            self?.weatherLabel.text = String(weather.main.temp)
        }
    }
}
