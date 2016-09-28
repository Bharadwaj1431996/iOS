//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Bharadwaj on 20/09/16.
//  Copyright © 2016 Bharadwaj. All rights reserved.
//

import UIKit
import AVFoundation

class RecordSoundsViewConstroller: UIViewController, AVAudioRecorderDelegate,AVAudioPlayerDelegate {

    var audioRecorder: AVAudioRecorder!
    
    @IBOutlet weak var recordButton: UIButton!
    
    @IBOutlet weak var stopRecording: UIButton!
    @IBOutlet weak var recordLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func RecordAudio(sender: AnyObject)
    {
        print("pressed");
        recordLabel.text = "Is recording ..."
        stopRecording.enabled = true;
        recordButton.enabled = false;
        
        let dirPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as String
        let recordingName = "recordedVoice.wav"
        let pathArray = [dirPath , recordingName]
        let filePath = NSURL.fileURLWithPathComponents(pathArray)
        print(filePath!)
        let session = AVAudioSession.sharedInstance()
        try! session.setCategory(AVAudioSessionCategoryPlayAndRecord)
        
        try! audioRecorder = AVAudioRecorder(URL: filePath!, settings: [:])
        audioRecorder.delegate = self
        audioRecorder.meteringEnabled = true
        audioRecorder.prepareToRecord();
        audioRecorder.record();
        
    }

    @IBAction func stopRecord(sender: AnyObject) {
        recordButton.enabled = true
        stopRecording.enabled = false
        recordLabel.text = "tap to record..."
        audioRecorder.stop();
        let audioSession = AVAudioSession.sharedInstance();
        try! audioSession.setActive(false)
    }
    func audioRecorderDidFinishRecording(recorder: AVAudioRecorder, successfully flag: Bool) {
        print("stoped recording")
        if(flag)
        {
            self.performSegueWithIdentifier("stopRecordin", sender: audioRecorder.url)
        }
        else{
            print("Saving of recording failed")
        }
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "stopRecordin")
        {
            let playSoundVC = segue.destinationViewController as! PlaySoundViewController
            let recordedAudioURL = sender as! NSURL
            playSoundVC.recordedAudioURL = recordedAudioURL
        }
    }
}

