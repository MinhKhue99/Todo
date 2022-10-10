    //
    //  AddTodoView.swift
    //  Todo
    //
    //  Created by Phạm Minh Khuê on 09/10/2022.
    //

import SwiftUI

struct AddTodoView: View {
        // MARK: - PROPERTY
    @Environment(\.presentationMode) var prensentationMode
    @State private var name: String = ""
    @State private var priority: String = "normal"

    let priorities = ["High", "Normal", "Low"]

        // MARK: - BODY
    var body: some View {
        NavigationView {
            VStack {
                Form {
                        // MARK: - Todo Name
                    TextField("Todo", text: $name)

                        // MARK: - Priority
                    Picker("Priority", selection: $priority) {
                        ForEach(priorities, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())

                        // MARK: - Save Button

                    Button(action: {
                        print("Save item")
                    }) {
                        Text("Save")
                    }
                }

                Spacer()
            }
            .navigationBarTitle("New Todo", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                self.prensentationMode.wrappedValue.dismiss()
                }) {
                    Image(systemName: "xmark")
                }
            )
        }

    }
}

struct AddTodoView_Previews: PreviewProvider {
    static var previews: some View {
        AddTodoView()
    }
}
