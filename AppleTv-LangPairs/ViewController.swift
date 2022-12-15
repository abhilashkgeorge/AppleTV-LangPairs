//
//  ViewController.swift
//  AppleTv-LangPairs
//
//  Created by Abhilash k George on 07/12/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var language: UISegmentedControl!
    @IBOutlet var words: UISegmentedControl!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? GameViewController else { return }
        vc.targetLanguage = language.titleForSegment(at: language.selectedSegmentIndex)!.lowercased()
        vc.wordType = words.titleForSegment(at: words.selectedSegmentIndex)!.lowercased()
    }
}

