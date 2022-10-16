//
//  Task.swift
//  ToDo-List
//
//  Created by AG on 10/16/22.
//

import SwiftUI

struct Task: View {
    var body: some View {
        VStack{
            Text("My Tasks")
                .font(.title3).bold()
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hue: 0.456, saturation: 0.41, brightness: 0.663))
    }
}

struct Task_Previews: PreviewProvider {
    static var previews: some View {
        Task()
    }
}
