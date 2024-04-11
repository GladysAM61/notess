//
//  ContentView.swift
//  notes
//
//  Created by StudentAM on 3/25/24.
//

import SwiftUI

//creating
struct Note{
    var title: String
    var text : String
}

struct ContentView: View {
    @State var notes: [Note] = []
    @State var thing1: String = ""
    @State var count: Int = 0
    var body: some View {
        
        NavigationView{
            VStack {
                List{
                    //                    for each loop to print the array and made it a navigation link to make it kind of like a button
                    //the navigation link takes the user to the detailview where only the note clicked is demonstarted and it is not editable.
                    ForEach(notes.indices, id:\.self){ i in
                        NavigationLink(destination: detailView(note:notes[i]), label: {
                            VStack(alignment:.leading){
                                Text(notes[i].title)
                                //     making the title be bold
                                    .bold()
                                Text(notes[i].text)
                            }
                        })
                    }
//                    .onDelete allows you to delete the note you dont want
//                    created a function to delete
                    .onDelete(perform: deleteItem)
                }
                .padding(.top, 180)
                NavigationLink(destination:newnote(notes:$notes), label: {
                    Text("Add Task")
                        .frame(width: 500, height: 100)
                        .background(Color.pink.opacity(0.7))
                        .foregroundColor(.white)
                        .font(.system(size:30))
                        .cornerRadius(10)
                    
                })
            }
            .ignoresSafeArea()
            .navigationTitle("Notes")
            }
        }
    
//    creating a function to allow you to delete the note
    func deleteItem(offset: IndexSet){
//        used notes.remove to remove that not from the whole notes struct but just that one note
            notes.remove(atOffsets: offset)
           
        }
    }

#Preview {
    ContentView()
}
