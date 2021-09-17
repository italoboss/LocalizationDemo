//
//  LocalizableStrings.swift
//  LocalizationDemo
//
//  Created by Italo Boss Lima Carvalho on 17/09/21.
//

import Foundation

enum LocalizableStrings: String {
    case viewControllerLabelIcon = "ViewController.Label.Icon"
    case viewControllerLabelTitle = "ViewController.Label.Title"
    case viewControllerLabelBody = "ViewController.Label.Body"

    case viewControllerButtonConfirm = "ViewController.Button.Confirm"
    case viewControllerButtonDeny = "ViewController.Button.Deny"

    case viewControllerMessageCorrect = "ViewController.Message.Correct"
    case viewControllerMessageWrong = "ViewController.Message.Wrong"
}

extension LocalizableStrings {
    func localized(comment: String = "") -> String {
        return NSLocalizedString(self.rawValue, comment: comment)
    }
}
