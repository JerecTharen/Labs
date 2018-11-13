
import UIKit

class EmployeeDetailTableViewController: UITableViewController, UITextFieldDelegate {

    struct PropertyKeys {
        static let unwindToListIndentifier = "UnwindToListSegue"
    }
    
    var isEditingBirthday: Bool = false {
        didSet {
            tableView.beginUpdates()
            tableView.endUpdates()
        }
    }
    
    func updateBirthdayPicker () {
        if isEditingBirthday {
            datePicker.isHidden = false
        } else {
            datePicker.isHidden = true
        }
        
    }
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var dobLabel: UILabel!
    @IBOutlet weak var employeeTypeLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var employee: Employee?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateView()
        updateBirthdayPicker()
    }
    
    func updateView() {
        if let employee = employee {
            navigationItem.title = employee.name
            nameTextField.text = employee.name
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .medium
            dobLabel.text = dateFormatter.string(from: employee.dateOfBirth)
            dobLabel.textColor = .black
            employeeTypeLabel.text = employee.employeeType.description()
            employeeTypeLabel.textColor = .black
        } else {
            navigationItem.title = "New Employee"
        }
    }
    @IBAction func dobChanged(_ sender: Any) {
        dobLabel.text = formDate(date: datePicker.date)
        dobLabel.textColor = .red
    }
    
    func formDate(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: date)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == dateOfBirthRow {
            isEditingBirthday = true
            updateBirthdayPicker()
            tableView.reloadData()
        } else {
            isEditingBirthday = false
            updateBirthdayPicker()
            tableView.reloadData()
        }
    }
    
    let nameRow = 0
    let dateOfBirthRow = 1
    let dateOfBirthPickerRow = 2
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == dateOfBirthPickerRow {
            if isEditingBirthday {
                return 162
            } else {
                return 0
            }
        } else {
            return 44.0
        }
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        if let name = nameTextField.text {
            employee = Employee(name: name, dateOfBirth: datePicker.date, employeeType: .exempt)
            performSegue(withIdentifier: PropertyKeys.unwindToListIndentifier, sender: self)
        }
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        employee = nil
        performSegue(withIdentifier: PropertyKeys.unwindToListIndentifier, sender: self)
    }
    
    // MARK: - Text Field Delegate
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return false
    }
    
}
