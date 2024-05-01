//
//  NewItemViewController.swift
//  SwiftPM
//
//  Created by user on 2024/04/26.
//

import UIKit
import RealmSwift

//新しい買い物データの入力
//Realmへの保存
class NewItemViewController: UIViewController {
    
    let realm = try! Realm()
    
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var priceTextFiewld: UITextField!
    @IBOutlet var markSwitch: UISwitch!


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveButton(){
        //オプショナル型
        let item = ShoppingItem()
        item.title = titleTextField.text ?? ""
        item.price = Int(priceTextFiewld.text ?? "") ?? 0
        item.isMarked = markSwitch.isOn
        
        createItem(item: item)
        
        self.dismiss(animated: true)
        
    }
    
    func createItem(item: ShoppingItem){
        try! realm.write{
            realm.add(item)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
