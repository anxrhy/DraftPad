//
//  ContentView.swift
//  DraftPad
//
//  Created by anxrhy on 03.11.2026.
//

import SwiftUI
import SwiftMarkdownEditor

struct ContentView: View {
    @State private var note = ""
    @State private var mode: MarkdownEditorMode = .split
    var body: some View {

        MarkdownEditor(text: $note, mode: $mode)
            
            .font(.system(size: 18))
        .toolbar {
            ToolbarItem(placement: .secondaryAction) {
                Picker("Editor Mode", selection: $mode) {
                    Text("Edit").tag(MarkdownEditorMode.edit)
                    Text("Split").tag(MarkdownEditorMode.split)
                    Text("Preview").tag(MarkdownEditorMode.preview)
                }
                .pickerStyle(.segmented)
                .labelsHidden()
            }
            ToolbarSpacer(.flexible)
            
            ToolbarItem() {
                Button() {
                    note = ""
                } label: {
                    Label("Clear", systemImage: "trash")
        
                }
               
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}
