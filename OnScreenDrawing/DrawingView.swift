//
//  DrawingView.swift
//  OnScreenDrawing
//
//  Created by Ramill Ibragimov on 8/10/24.
//

import Cocoa

class DrawingView: NSView {
    private var path = NSBezierPath()

    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        self.wantsLayer = true
        self.layer?.backgroundColor = NSColor.clear.cgColor
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func mouseDown(with event: NSEvent) {
        path.move(to: event.locationInWindow)
    }

    override func mouseDragged(with event: NSEvent) {
        path.line(to: event.locationInWindow)
        self.needsDisplay = true
    }

    override func draw(_ dirtyRect: NSRect) {
        NSColor.red.setStroke()
        path.stroke()
    }

    func clear() {
        path = NSBezierPath()
        self.needsDisplay = true
    }
}

