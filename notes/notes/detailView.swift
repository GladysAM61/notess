//
//  detailView.swift
//  notes
//
//  Created by StudentAM on 3/26/24.
//

import SwiftUI

struct detailView: View {
//    didnt use binding because we dont need to make changes
    @State var note: Note
    
    var body: some View {
        NavigationView{
//            vstack were we basically print the text variable of the note clicked
            VStack{
                    Text(note.text)
//                       spacer to make the text be at the top
                    Spacer()
            }
            .padding()
//            note has a text and a titile pero we only want the title so we do .title
            .navigationTitle(note.title)
            .frame(width: 350 , alignment: .leading)
            .background(Color(UIColor.systemGray6))
            .cornerRadius(5)
        }

    }
}

#Preview {
//     i used rauw alejandro so it wouldn't give me errors and like so something is stored inside title and text
    detailView(note: Note(title: "rauw", text: "Alejandro"))
}
