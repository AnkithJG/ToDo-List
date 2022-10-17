//
//  Task.swift
//  ToDo-List
//
//  Created by AG on 10/16/22.
//

import SwiftUI

struct Task: View {
    @EnvironmentObject var realmManager: RealmManager
    var body: some View {
        VStack{
            Text("My Tasks")
                .font(.title3).bold()
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            List {
                ForEach(realmManager.tasks, id: \.id){
                    task in
                    if !task.isInvalidated {
                        TaskRow(task: task.title, completed: task.completed)
                            .onTapGesture {
                                realmManager.updateTask(id: task.id, completed: !task.completed)
                            }
                            .swipeActions(edge: .leading) {
                                Button(role: .destructive){
                                    realmManager.deleteTask(id: task.id)
                                } label: {
                                    Label("Delete", systemImage: "trash")
                                }
                            }
                    }
                    }
            
            }
            .onAppear {
                UITableView.appearance().backgroundColor = UIColor.clear
                UITableViewCell.appearance().backgroundColor = UIColor.clear
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hue: 0.456, saturation: 0.41, brightness: 0.663))
    }
}

struct Task_Previews: PreviewProvider {
    static var previews: some View {
        Task()
            .environmentObject(RealmManager())
    }
}
