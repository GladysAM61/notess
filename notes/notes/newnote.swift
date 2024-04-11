//
//  newnote.swift
//  notes
//
//  Created by StudentAM on 3/25/24.
//

import SwiftUI


struct newnote: View {
//    newtitle string to store the new title of the new note
//    it will then be stored into the array of structs
    @State var newtitle: String = ""
    //    newtitle string to store the new text of the new note
    //    it will then be stored into the array of structs
    @State var newtext : String = ""
//    binding is used to make changes
    @Binding var notes : [Note]
    
    
    var body: some View {
        NavigationView{
            VStack{
//                placing the title in its own Hstack so it apperas at the top and could be distinguished from the other texts.
                HStack{
                    Text("New Note")
                        .bold()
                        .font(.system(size:35))
                    Spacer()
                }
//                creating a textfield and store whatever is typed into the newtitle variable
                TextField(" Title...", text: $newtitle)
                    .frame(height:60)
                    .background(Color(UIColor.systemGray6))
                    .cornerRadius(10)
                    .padding()
                    .font(.system(size:20))
//                creating a textEditor and store whatever is typed into the newtext variable
//                the texteditor is similar almost the same as the textfield 
                TextEditor(text: $newtext)
                    .frame(height:400)
                    .padding()
                    .background(Color(UIColor.systemGray6))
                    .cornerRadius(5)
                    .padding()
                
                
//                create a button to add the text and title into the struct and then append the struct into the array 
                
                
                
                Button( action:{createNote()}, label:{
                    
                    Text("Add Task")
                        .frame(width: 100, height: 60)
                        .background(Color.pink.opacity(0.7))
                        .foregroundColor(.white)
                       .font(.system(size:20))
                       .cornerRadius(10)
               })
             }
        }
    }
    
    
func createNote(){
// adding the title and text into the new struct previously created in the contentview file
//    creating a new variable for  it
    var newnote :Note = Note(title: newtitle, text: newtext)
//    adding the note variable on the array of structs
    notes.append(newnote)
    
}
    
 }

#Preview {
//    for now store an empty array in notes
    newnote(notes:.constant([]))
}

