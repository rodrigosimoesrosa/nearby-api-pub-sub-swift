import UIKit

let cellIdentifier = "messageCell"

class ViewController: UITableViewController {
    /**
     * @property
     * The left button to use in the nav bar.
     */
    var leftBarButton: UIBarButtonItem! {
        get {
            return navigationItem.leftBarButtonItem
        }
        set(leftBarButton) {
            navigationItem.leftBarButtonItem = leftBarButton
        }
    }
    
    /**
     * @property
     * The right button to use in the nav bar.
     */
    var rightBarButton: UIBarButtonItem! {
        get {
            return navigationItem.rightBarButtonItem
        }
        set(rightBarButton) {
            navigationItem.rightBarButtonItem = rightBarButton
        }
    }
    
    var messages = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: cellIdentifier)
    }
    
    func addMessage(_ message: String!) {
        messages.append(message.copy() as! String)
        tableView.reloadData()
    }
    
    func removeMessage(_ message: String!) {
        if let index = messages.index(of: message)
        {
            messages.remove(at: index)
        }
        tableView.reloadData()
    }
    
    // MARK: - UITableViewDataSource
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = messages[indexPath.row]
        return cell
    }
    
    
    // MARK: - UItableViewDelegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
