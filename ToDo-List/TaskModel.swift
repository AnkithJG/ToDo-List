//
//  TaskModel.swift
//  ToDo-List
//
//  Created by AG on 10/16/22.
//

import Foundation
import RealmSwift

class TaskModel: Object, ObjectKeyIdentifiable{
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title = ""
    @Persisted var completed = false
}
