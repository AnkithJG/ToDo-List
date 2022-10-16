//
//  SmallAddButton.swift
//  ToDo-List
//
//  Created by AG on 10/16/22.
//

import SwiftUI

struct SmallAddButton: View {
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 50)
            
            Text("+")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.white)
        }
        .frame(height: 50)
    }
}

struct SmallAddButton_Previews: PreviewProvider {
    static var previews: some View {
        SmallAddButton()
    }
}
