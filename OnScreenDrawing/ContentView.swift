//
//  ContentView.swift
//  OnScreenDrawing
//
//  Created by Ramill Ibragimov on 8/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Drawing Overlay App")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.clear)
            .foregroundColor(.black)
    }
}

#Preview {
    ContentView()
}
