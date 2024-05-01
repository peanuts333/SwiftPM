//
//  ShoppingItemFile.swift
//  SwiftPM
//
//  Created by user on 2024/04/26.
//

import Foundation
import RealmSwift

class ShoppingItem: Object{
    //プロパティを定義
    @Persisted var title: String = ""
    @Persisted var price: Int = 0
    @Persisted var isMarked: Bool = false

}
