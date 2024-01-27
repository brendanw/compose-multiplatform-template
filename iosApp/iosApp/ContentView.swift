import UIKit
import SwiftUI
import shared
import AVKit

struct ComposeView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        Main_iosKt.MainViewController(launchAVPlayerFn: {
            let urlStr = "https://basebeta-east.s3.amazonaws.com/videos/bb-bridgePoint.mp4"
            let url = URL(string: urlStr)!
            let player = AVPlayer(url: url)
            let playerController = AVPlayerViewController()
            playerController.player = player
           Main_iosKt.rootVC!.present(playerController, animated: true) { [weak player] in
              player?.play()
           }
        })
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}

struct ContentView: View {
    var body: some View {
        ComposeView()
                .ignoresSafeArea(.keyboard) // Compose has own keyboard handler
    }
}



