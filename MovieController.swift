//
//  MovieController.swift
//  quickTableView
//
//  Created by CARL SHOW on 10/20/21.
//

import UIKit

class MovieController: UIViewController {
    @IBOutlet weak var labell: UILabel!
    @IBOutlet weak var texxt: UITextView!
    var inf: Int = 0
    var name: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        labell.layer.cornerRadius = 8
        outtaTouch()
    }
    func outtaTouch()
    {
        switch inf
        {
        case 0:
            labell.text = "A"
            texxt.text = "A rather interesting movie about a entouraging group in a wide, wide world."
        case 1:
            labell.text = "B"
            texxt.text = "A sad movie--- that's it."
        case 2:
            labell.text = "C"
            texxt.text = "An odd movie, it makes you wonder why reality the way it is."
        case 3:
            labell.text = "D"
            texxt.text = "A boring movie with no ending."
        case 4:
            labell.text = "E"
            texxt.text = "A low budget movie that somehow is fantastic."
        case 5:
            labell.text = "F"
            texxt.text = "A high budget movie with zero character."
        case 6:
            labell.text = "G"
            texxt.text = "A sequel to 'A', it's not as good, but still great."
        case 7:
            labell.text = "H"
            texxt.text = "Unbelevable..."
        case 8:
            labell.text = "9"
            texxt.text = "Released September 9, 2009, 9 is about a puppet or something? You kinda have to watch it to understand--- it's weird..."
        case 9:
            labell.text = "J"
            texxt.text = "A sequel to 9, it's 10!"
        case 10:
            labell.text = "K"
            texxt.text = "The last movie ever produced..."
        default:
            labell.text = "\(name[inf])"
            texxt.text = "A custom movie produced by you, the user!"
        }
    }
}
