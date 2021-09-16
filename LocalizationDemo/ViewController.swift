//
//  ViewController.swift
//  LocalizationDemo
//
//  Created by Italo Boss Lima Carvalho on 08/09/21.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets

    @IBOutlet weak var iconLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!

    @IBOutlet weak var confirmButton: UIButton!
    @IBOutlet weak var denyButton: UIButton!

    // MARK: - Setup

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    func setupViews() {
        // Set text for our views
        iconLabel.text = NSLocalizedString("ViewController.Label.Icon", comment: "Fish icon")
        titleLabel.text = NSLocalizedString("ViewController.Label.Title", comment: "")
        bodyLabel.text = NSLocalizedString("ViewController.Label.Body", comment: "")

        let confirmButtonTitle = NSLocalizedString("ViewController.Button.Confirm", comment: "")
        confirmButton.setTitle(confirmButtonTitle, for: .normal)

        let denyButtonTitle = NSLocalizedString("ViewController.Button.Deny", comment: "")
        denyButton.setTitle(denyButtonTitle, for: .normal)
    }

    // MARK: - Actions

    @IBAction func didTapConfirmButton(_ sender: Any) {
        checkUsersAnswer(isConfirmed: true)
    }

    @IBAction func didTapDenyButton(_ sender: Any) {
        checkUsersAnswer(isConfirmed: false)
    }

    private func checkUsersAnswer(isConfirmed: Bool) {
        let fishCalc = FishCalc()
        let message: String

        if fishCalc.check(answer: isConfirmed) {
            // Show message that the user got it right
            message = NSLocalizedString("ViewController.Message.Correct", comment: "")
        } else {
            // Show message that the user got it wrong
            message = NSLocalizedString("ViewController.Message.Wrong", comment: "")
        }
        showResult(with: message)
    }

    private func showResult(with message: String) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

}
