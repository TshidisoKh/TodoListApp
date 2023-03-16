//
//  TaskDetailsViewController.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/03/10.
//

import Foundation
import UIKit

class TaskDetailsViewController: UIViewController {
    @Injected internal var properties: Properties
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
    
    @IBAction func getWeather(sender: UIButton) {
        self.openDialog(sender: sender)
    }
    
    @IBAction func getStocks(sender: UIButton) {
        self.openDialog(sender: sender)
    }
    
    func makeLoadingView(withFrame frame: CGRect, loadingText text: String?) -> UIView? {
        let loadingView = UIView(frame: frame)
        loadingView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        let activityIndicator = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        activityIndicator.layer.cornerRadius = 6
        activityIndicator.center = loadingView.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.style = .large
        activityIndicator.startAnimating()

        loadingView.addSubview(activityIndicator)
        if !text!.isEmpty {
            let lbl = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 30))
            let cpoint = CGPoint(x: activityIndicator.frame.origin.x + activityIndicator.frame.size.width / 2, y: activityIndicator.frame.origin.y + 80)
            lbl.center = cpoint
            lbl.textColor = UIColor.white
            lbl.textAlignment = .center
            lbl.text = text
            loadingView.addSubview(lbl)
        }
        return loadingView
    }
    
    func openDialog(sender: UIButton) {
        print("uuuuuuuuuuuu\(String(describing: sender.titleLabel?.text!))")
        let alertController = UIAlertController(title: "Please add key to access data", message: "", preferredStyle: UIAlertController.Style.alert)
        alertController.addTextField { (textField : UITextField!) -> Void in
                textField.placeholder = "Name"
            }
        let saveAction = UIAlertAction(title: "Save", style: UIAlertAction.Style.default, handler: { alert -> Void in
            let firstTextField = alertController.textFields![0] as UITextField
            
            if sender.titleLabel?.text! == "Stock" {
                self.properties.setStockKey(key: firstTextField.text ?? "")
                self.getStock()
            }
            
            if sender.titleLabel?.text! == "Weather" {
                self.properties.setWeatherKey(key: firstTextField.text ?? "")
                self.getWeather()
            }
            
            })
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: {
                (action : UIAlertAction!) -> Void in })
            alertController.addAction(saveAction)
            alertController.addAction(cancelAction)
            
            self.present(alertController, animated: true, completion: nil)
    }
    
    func getStock() {
        let loadingIndicator = self.makeLoadingView(withFrame: UIScreen.main.bounds, loadingText: "Loading data")
        view.addSubview(loadingIndicator!)
        viewModel.getStock {  [weak self] (stock, error) in
            if let stock = stock {

                loadingIndicator!.removeFromSuperview()
                self?.stockLabel.text = "Apple stock $\(stock.data.first(where: {$0.name == "Apple Inc"})?.price ?? 0)"
            }
            else {
                loadingIndicator!.removeFromSuperview()
                self!.showToast(error)
            }
        }
    }
    
    func getWeather() {
        let loadingIndicator = makeLoadingView(withFrame: UIScreen.main.bounds, loadingText: "Loading data")
        view.addSubview(loadingIndicator!)
        viewModel.getWeather {  [weak self] weather, error in
            if let weather = weather {
                loadingIndicator?.removeFromSuperview()
                self?.weatherLabel.text = "Weather is \(weather.main.temp)"
            }
            else {
                loadingIndicator?.removeFromSuperview()
                self!.showToast(error)
            }
        }
    }
}

