//
//  ViewController.swift
//  Xylophone
//
//

import UIKit
import AVKit
import AVFoundation

var player: AVAudioPlayer?

class ViewController: UIViewController
{
    let soundArray:[String] = ["note1","note2","note3","note4","note5","note6","note7"]
    
    
    //Contextual type 'String' cannot be used with array literal

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton)
    {
           playSound(tagValue: sender.tag)
    }
    
    func playSound(tagValue:Int)
    {
        let fileName  = soundArray[tagValue-1]
        
         let url = Bundle.main.url(forResource: fileName, withExtension: "wav")!
        
        do
        {
            
            player = try AVAudioPlayer(contentsOf: url)
            
            guard let player = player else
            {
                return
            }
            
            player.prepareToPlay()
            player.play()
            
        }
        catch let error {
            print(error.localizedDescription)
        }
    }
    
  

}

