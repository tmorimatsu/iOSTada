//
//  MyTodo.swift
//  Tada
//
//  Created by 森松　琢弥 on 2018/11/08.
//  Copyright © 2018年 com.tmorimatsu. All rights reserved.
//

import Foundation

class MyTodo: NSObject, NSCoding {
    
    // TODOのタイトル
    var todoTitle: String?
    let titleKey = "todoTitle"
    // TODOが完了したかどうかのフラグ
    var todoDone: Bool = false
    let doneKey = "todoDone"
    // コンストラクタ
    override init() {}
    
    // デシリアライズ
    required init?(coder aDecoder: NSCoder) {
        todoTitle = aDecoder.decodeObject(forKey: titleKey) as? String
        todoDone = aDecoder.decodeBool(forKey: doneKey)
    }
    
    // シリアライズ
    func encode(with aCoder: NSCoder) {
        aCoder.encode(todoTitle, forKey: titleKey)
        aCoder.encode(todoDone, forKey: doneKey)
    }
}
