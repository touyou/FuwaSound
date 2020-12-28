//
//  ContentView.swift
//  FuwaSound
//
//  Created by 藤井陽介 on 2020/12/28.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 249 / 250.0, green: 248.0 / 250.0, blue: 0.0, opacity: 1.0).edgesIgnoringSafeArea(.all)
            Image("fuwa")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            Button("あいう", action: {
                let player = try! AVAudioPlayer(data: NSDataAsset(name: "fuwaSound")!.data)
                print(player.play())
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
