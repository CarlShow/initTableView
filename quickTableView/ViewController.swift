//
//  ViewController.swift
//  quickTableView
//
//  Created by CARL SHOW on 10/18/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var movieAdder: UITextField!
    var quickie : [Int] = [1]
    var quickName: [String] = ["Movie A", "Movie B", "Movie C", "Movie D", "Movie E", "Movie F", "Movie G", "Movie H", "9", "Movie J", "Movie K"]
    var b = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quickName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt t: IndexPath) -> UITableViewCell
    {
        let c = table.dequeueReusableCell(withIdentifier: "selCell", for: t)
        c.textLabel?.text = "\(quickName[t.row])"
        quickie.append(quickie.count + 1)
        c.detailTextLabel!.text = "\(quickie[t.row])"
        return c
    }
    func tableView(_ r: UITableView, didSelectRowAt p: IndexPath) {
        b = p.row
        print(b)
        performSegue(withIdentifier: "toSnazz", sender: (Any).self)
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete
        {
            quickName.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let seg = segue.destination as! MovieController
        seg.inf = b
        seg.name = quickName
    }
    @IBAction func addction(_ sender: Any)
    {
        quickName.append(movieAdder.text!)
        table.reloadData()
    }
}

