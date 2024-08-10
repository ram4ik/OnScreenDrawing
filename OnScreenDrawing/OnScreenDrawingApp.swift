//
//  OnScreenDrawingApp.swift
//  OnScreenDrawing
//
//  Created by Ramill Ibragimov on 8/10/24.
//

import SwiftUI

@main
struct OnScreenDrawingApp: App {

    var window: TransparentWindow!
    var drawingView: DrawingView!

    init() {
        let screenSize = NSScreen.main!.frame
        window = TransparentWindow(contentRect: screenSize)
        drawingView = DrawingView(frame: screenSize)
        window.contentView = drawingView

        // Set up global hotkeys
        setupGlobalHotkeys()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }

    func setupGlobalHotkeys() {
            NSEvent.addGlobalMonitorForEvents(matching: .keyDown) { (event) in
                if event.modifierFlags.contains(.command) && event.characters == "d" {
                    // Toggle drawing mode
                    toggleDrawingMode()
                } else if event.modifierFlags.contains(.command) && event.characters == "x" {
                    // Clear the screen
                    drawingView.clear()
                }
            }
        }

        func toggleDrawingMode() {
            if window.isVisible {
                window.orderOut(nil)
            } else {
                window.makeKeyAndOrderFront(nil)
            }
        }
}
