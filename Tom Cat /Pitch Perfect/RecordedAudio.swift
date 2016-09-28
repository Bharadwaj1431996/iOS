//
//  RecordedAudio.swift
//  Pitch Perfect
//
//
//

import Foundation

// MARK: - RecordedAudio: NSObject

class RecordedAudio: NSObject {
    
    // MARK: Properties
    
    var filePathURL: NSURL!
    var title: String! {
        get {
            return filePathURL.lastPathComponent
        }
    }

    // MARK: Initializers
    
    init(filePathURL: NSURL) {
        self.filePathURL = filePathURL
    }
}