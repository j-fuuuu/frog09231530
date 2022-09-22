//
//  EditViewController.swift
//  todo
//
//  Created by 藤井玖光 on 2022/09/23.
//

import UIKit
import RealmSwift

class EditViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    
    let realm = try! Realm()
    
//    var todosInEdit = [Memo]()
    

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var contenLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        todosInEdit = Array(realm.objects(Memo.self))
        
        let memo: Memo? = edit()
        
        titleLabel.text = memo?.title
        contenLabel.text = memo?.content
     // Do any additional setup after loading the view.
        
   }
    
    //メモの情報を読み出す
    func edit() -> Memo? {
        return realm.objects(Memo.self).first
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
