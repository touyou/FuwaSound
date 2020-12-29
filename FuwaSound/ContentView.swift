//
//  ContentView.swift
//  FuwaSound
//
//  Created by 藤井陽介 on 2020/12/28.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    let player = try! AVAudioPlayer(data: NSDataAsset(name: "haramiFuwa")!.data)

    var body: some View {
        ZStack {
            Color(red: 249 / 250.0, green: 248.0 / 250.0, blue: 0.0, opacity: 1.0).edgesIgnoringSafeArea(.all)
            Image("harami")
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            Button(action: {
                player.play()
            }) {
                Color(.sRGB, white: 0.0, opacity: 0.0)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
