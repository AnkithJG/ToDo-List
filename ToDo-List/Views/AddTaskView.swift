//
//  AddTaskView.swift
//  ToDo-List
//
//  Created by AG on 10/16/22.
//

import SwiftUI

struct AddTaskView: View {
    @State private var title: String = ""
    @EnvironmentObject var realmManager: RealmManager
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            Text("Create a new task")
                .font(.title2).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField("Enter your task here", text: $title)
                .textFieldStyle(.roundedBorder)
            
            Button{
                if title != "" {
                    realmManager.addTask(taskTitle: title)
                }
                dismiss()
            } label: {
                Text("Add task!")
                    .foregroundColor(Color.white)
                    .font(.headline).bold()
                    .padding()
                    .padding(.horizontal)
                    .background(Color.black)
                    .cornerRadius(30)
                
            }
            
            Spacer()
            
        }
        .padding(.top, 40)
        .padding(.horizontal)
        .background(Color(hue: 0.456, saturation: 0.41, brightness: 0.663))
    }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
            .environmentObject(RealmManager())
    }
}
