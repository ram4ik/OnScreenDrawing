//
//  NSViewRepresentable.swift
//  OnScreenDrawing
//
//  Created by Ramill Ibragimov on 8/10/24.
//

import SwiftUI

struct DrawingViewRepresentable: NSViewRepresentable {
    class Coordinator {
        var parent: DrawingViewRepresentable

        init(parent: DrawingViewRepresentable) {
            self.parent = parent
        }
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }

    func makeNSView(context: Context) -> DrawingView {
        let drawingView = DrawingView(frame: .zero)
        return drawingView
    }

    func updateNSView(_ nsView: DrawingView, context: Context) {
        // Update the view if needed
    }
}

