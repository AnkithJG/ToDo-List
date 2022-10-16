//
//  ContentView.swift
//  ToDo-List
//
//  Created by AG on 10/15/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showAddTaskView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            Task()
            
            
            SmallAddButton()
                .padding()
                .onTapGesture{
                    showAddTaskView.toggle()
                }
        }
        .sheet(isPresented: $showAddTaskView){
            AddTaskView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(Color(hue: 0.456, saturation: 0.41, brightness: 0.663))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
