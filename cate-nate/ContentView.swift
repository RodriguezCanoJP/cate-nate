//
//  ContentView.swift
//  cate-nate
//
//  Created by Juan Pablo Rodriguez on 29/3/23.
//

import SwiftUI

struct ContentView: View {
    @State private var textInput: String = ""
    @State private var textInput2: String = ""
    @State private var result: String = ""
    var body: some View {
        VStack {
            Text("Escriba la primera frase: ")
                .bold()
            TextField("String 1", text: $textInput)
                .padding()
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
            Text("Escriba la segunda frase: ")
                .bold()
            TextField("String 2", text: $textInput2)
                .padding()
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
            Button {
                result += textInput + textInput2
            } label: {
                Text("Unir")
            }
            Text(result)
                .foregroundColor(.green)

        }
        .textFieldStyle(.roundedBorder)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
