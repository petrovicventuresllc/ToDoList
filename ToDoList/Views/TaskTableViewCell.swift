//
//  TaskTableViewCell.swift
//  ToDoList
//
//  Created by Aleksandar Petrovic on 9/25/25.
//

import UIKit

protocol TaskTableViewCellDelegate: AnyObject {
    func editTask(id: String)
    func markTask(id: String, complete: Bool)
    
}

class TaskTableViewCell: UITableViewCell {
    
    static let identifier = "TaskTableViewCell"
    @IBOutlet weak var categoryContainerView: UIView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var isCompleteImageView: UIImageView!
    @IBOutlet weak var stripView: UIView!
    private weak var delegate: TaskTableViewCellDelegate?
    private var task: TaskModel!
    
    private var dateFormatter: DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        return dateFormatter
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        categoryContainerView.layer.cornerRadius = categoryContainerView.frame.height / 2
        containerView.layer.cornerRadius = 8
        containerView.clipsToBounds = true
    }
    
    func configure(withTask task: TaskModel, delegate: TaskTableViewCellDelegate?) {
        let taskCategory = Category(rawValue: task.category)!
        stripView.backgroundColor = taskCategory.color
        categoryContainerView.backgroundColor = taskCategory.secondaryColor
        categoryLabel.backgroundColor = taskCategory.color
        categoryLabel.text = taskCategory.rawValue
        categoryLabel.backgroundColor = .clear
        categoryLabel.textColor = taskCategory.color
        captionLabel.text = task.caption
        isCompleteImageView.image = task.isComplete ?
            UIImage(systemName: "checkmark.circle") :
            UIImage(systemName: "circle")
        dateLabel.text = dateFormatter.string(from: task.createdDate)
        selectionStyle = .none
        let tap = UITapGestureRecognizer(target: self, action: #selector(toggleCompletion))
        isCompleteImageView.addGestureRecognizer(tap)
        isCompleteImageView.isUserInteractionEnabled = true
        self.task = task
        self.delegate = delegate
    }
    
    @objc func toggleCompletion() {
        task.isComplete.toggle()
        //FIXME: - Toggle task with Core Data
        //delegate?.markTask(id: task.id, complete: task.isComplete)
    }
    
    @IBAction func editTaskButtonTapped(_ sender: Any) {
        //FIXME: - Edit task with Core Data
        //elegate?.editTask(id: task.id)
    }

}
