//
//  TaskRow.swift
//  ToDo-List
//
//  Created by AG on 10/16/22.
//

import SwiftUI

struct TaskRow: View {
    var task: String
    var completed: Bool
    //@EnvironmentObject var realmManager: RealmManager
    @State private var strike = false
    
    var body: some View {
        HStack(spacing: 20){
            Image(systemName: completed ? "checkmark.circle" : "circle")
            
            
//            ForEach(realmManager.tasks, id: \.id){
//                t in
//                TaskRow(task: t.title, completed: t.completed)
//                    .onTapGesture {
//                        strike.toggle()
//                    }
//            }
            
            if(completed){
                Text(task).strikethrough(true)
            } else {
                Text(task).strikethrough(false)
            }
        }
        
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(task: "Do laundry", completed: true)
            //.environmentObject(RealmManager())
    }
}
