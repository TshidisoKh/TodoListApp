//
//  TodoListViewController.swift
//  TodoListApp
//
//  Created by Tshidiso Khoza on 2023/02/28.
//
import UIKit

class TodoListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, DeleteTaskCellDelegate {
    func didTap() {
        tableView.reloadData()
    }
    
    @IBOutlet var tableView: UITableView!
    
     lazy var name: String = ""
    let viewModel = TodoListViewModel()
    let cellReuseIdentifier = "cell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        title = "Todo List"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapAdd))
    }
    
    @objc func didTapAdd() {
        let alertController = UIAlertController(title: "Add New Task", message: "", preferredStyle: UIAlertController.Style.alert)
        alertController.addTextField { (textField : UITextField!) -> Void in
                textField.placeholder = "Name"
            }
        let saveAction = UIAlertAction(title: "Save", style: UIAlertAction.Style.default, handler: { alert -> Void in
                let firstTextField = alertController.textFields![0] as UITextField
                let secondTextField = alertController.textFields![1] as UITextField
            let task = Task(name: firstTextField.text ?? "", description: secondTextField.text ?? "")
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
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if viewModel.fetchTasks().count == 0 {
                self.tableView.setEmptyMessage("Click the add button to add your first task")
            } else {
                self.tableView.restore()
            }
        return viewModel.fetchTasks().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:CustomTaskTableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as! CustomTaskTableViewCell
        let list = self.viewModel.fetchTasks()
        cell.name.text = list[indexPath.row].name
        cell.nameText = list[indexPath.row].name
        cell.delegate = self
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let destination = storyboard.instantiateViewController(withIdentifier: "TaskDetailsViewController") as! TaskDetailsViewController
        let list = self.viewModel.fetchTasks()
        destination.taskName = list[indexPath.row].name
        destination.taskDescription = list[indexPath.row].description
        navigationController?.pushViewController(destination, animated: true)

    }
}

