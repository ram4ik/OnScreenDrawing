//
//  TransparentWindow.swift
//  OnScreenDrawing
//
//  Created by Ramill Ibragimov on 8/10/24.
//

import Cocoa

class TransparentWindow: NSWindow {
    override var canBecomeKey: Bool {
        return true
    }

    init(contentRect: NSRect) {
        super.init(contentRect: contentRect,
                  styleMask: [.borderless],
                  backing: .buffered,
                  defer: false)
        self.isOpaque = false
        self.backgroundColor = NSColor.clear
        self.level = .screenSaver
        self.makeKeyAndOrderFront(nil)
        self.ignoresMouseEvents = false
    }
}


