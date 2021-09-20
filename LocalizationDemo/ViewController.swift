//
//  ViewController.swift
//  LocalizationDemo
//
//  Created by Italo Boss Lima Carvalho on 08/09/21.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets

    @IBOutlet weak var titleStackView: UIStackView!
    @IBOutlet weak var iconLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!

    @IBOutlet weak var confirmButton: UIButton!
    @IBOutlet weak var denyButton: UIButton!

    // MARK: - Setup

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        configureAccessibilityCategory()
    }

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        configureAccessibilityCategory()
    }

    func setupViews() {
        // Set text for our views
        iconLabel.text = LocalizableStrings.viewControllerLabelIcon.localized(comment: "Fish icon")
        titleLabel.text = LocalizableStrings.viewControllerLabelTitle.localized()
        bodyLabel.text = LocalizableStrings.viewControllerLabelBody.localized()

        let confirmButtonTitle = LocalizableStrings.viewControllerButtonConfirm.localized()
        confirmButton.setTitle(confirmButtonTitle, for: .normal)

        let denyButtonTitle = LocalizableStrings.viewControllerButtonDeny.localized()
        denyButton.setTitle(denyButtonTitle, for: .normal)
    }

    func configureAccessibilityCategory() {
        if traitCollection.preferredContentSizeCategory.isAccessibilityCategory {
            titleStackView.axis = .vertical
        } else {
            titleStackView.axis = .horizontal
        }
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
            message = LocalizableStrings.viewControllerMessageCorrect.localized()
        } else {
            // Show message that the user got it wrong
            message = LocalizableStrings.viewControllerMessageWrong.localized()
        }
        showResult(with: message)
    }

    private func showResult(with message: String) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

}
