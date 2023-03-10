//
//  TodoListViewController.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/02/28.
//
import UIKit

class TodoListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    
    let viewModel = TodoListViewModel()
    let cellReuseIdentifier = "cell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        title = "Todo List"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapAdd))
        WeatherRepositoryImplementation().getWeather { m in
            print(m)
        }
    }
    
    @objc func didTapAdd() {
        let alertController = UIAlertController(title: "Add New Task", message: "", preferredStyle: UIAlertController.Style.alert)
        alertController.addTextField { (textField : UITextField!) -> Void in
                textField.placeholder = "Name"
            }
        let saveAction = UIAlertAction(title: "Save", style: UIAlertAction.Style.default, handler: { alert -> Void in
                let firstTextField = alertController.textFields![0] as UITextField
                let secondTextField = alertController.textFields![1] as UITextField
            let task = Task(id: 8, name: firstTextField.text ?? "", description: secondTextField.text ?? "")
            self.viewModel.addTask(task: task)
            self.tableView.reloadData()
            })
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: {
                (action : UIAlertAction!) -> Void in })
        alertController.addTextField { (textField : UITextField!) -> Void in
                textField.placeholder = "Enter duration"
            }
            
            alertController.addAction(saveAction)
            alertController.addAction(cancelAction)
            
            self.present(alertController, animated: true, completion: nil)
        }
    
    
    @objc func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.fetchTasks().count
    }
    
    @objc(tableView:cellForRowAtIndexPath:) func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:CustomTaskTableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! CustomTaskTableViewCell
        let list = self.viewModel.fetchTasks()
        cell.name.text = list[indexPath.row].name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let destination = storyboard.instantiateViewController(withIdentifier: "TaskDetailsViewController") as! TaskDetailsViewController
        let list = self.viewModel.fetchTasks()
        destination.taskName = list[indexPath.row].name
        destination.taskDescription = list[indexPath.row].description
        navigationController?.pushViewController(destination, animated: true)

    }
}
