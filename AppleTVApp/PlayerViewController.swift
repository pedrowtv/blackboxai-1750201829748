import UIKit
import AVKit
import AVFoundation

class PlayerViewController: UIViewController {

    private var playerViewController: AVPlayerViewController!
    private var player: AVPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black

        // Setup AVPlayer with the provided stream URL
        guard let url = URL(string: "https://stream-36723.castr.net/5d714f6a0bd97874e36f14e4/live_057ee4605c1711efbd4135c4457c726c/index.m3u8") else {
            print("Invalid stream URL")
            return
        }

        player = AVPlayer(url: url)
        playerViewController = AVPlayerViewController()
        playerViewController.player = player
        playerViewController.view.frame = view.bounds
        playerViewController.showsPlaybackControls = true

        addChild(playerViewController)
        view.addSubview(playerViewController.view)
        playerViewController.didMove(toParent: self)

        // Start playback
        player.play()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        playerViewController.view.frame = view.bounds
    }
}
