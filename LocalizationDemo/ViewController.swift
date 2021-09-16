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
    }

    // MARK: - Actions

    @IBAction func didTapConfirmButton(_ sender: Any) {
    }

    @IBAction func didTapDenyButton(_ sender: Any) {
    }

    private func checkUsersAnswer(isConfirmed: Bool) {
        let fishCalc = FishCalc()
        if fishCalc.check(answer: isConfirmed) {
            // Show message that the user got it right
        } else {
            // Show message that the user got it wrong
        }
    }

    private func showResult(with message: String) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

}
