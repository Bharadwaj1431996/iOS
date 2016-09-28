//
//  AppConstants.swift
//  Pitch Perfect
//
//  
//

// MARK: - AppSettings

struct AppConstants {
    
    static let DefaultAudioFileName = "recording.m4a"
    static let FinishedRecordingSegue = "finishedRecording"
    
    // MARK: Labels
    
    struct Labels {
        static let ReadyToRecord = "Tap to Record"
        static let Recording = "Recording in Progress"
        static let RecordingPaused = "Recording Paused"
    }
    
    // MARK: Alerts
    
    struct Alerts {
        static let DismissAlert = "Dismiss"
        static let RecordingDisabledTitle = "Recording Disabled"
        static let RecordingDisabledMessage = "You've disabled this app from recording your microphone. Check Settings."
        static let RecordingFailedTitle = "Recording Failed"
        static let RecordingFailedMessage = "Something went wrong with your recording."
        static let AudioRecorderError = "Audio Recorder Error"
        static let AudioSessionError = "Audio Session Error"
        static let AudioRecordingError = "Audio Recording Error"
        static let AudioFileError = "Audil File Error"
        static let AudioEngineError = "Audio Engine Error"
    }    
}
