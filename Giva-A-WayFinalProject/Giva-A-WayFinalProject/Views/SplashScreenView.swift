//
//  SplashScreenView.swift
//  Giva-A-WayFinalProject
//
//  Created by ios12 on 06/08/2023.
//

import SwiftUI
import AVKit

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    let player = AVPlayer(url: Bundle.main.url(forResource: "gvavid", withExtension: "mp4")!)
    var body: some View {
        if isActive {
            ContentView()
        } else {
            ZStack {
                Color.yellow
                VStack {
                    
                    Spacer()
                    VStack {
                        VideoPlayer(player: player).frame(height: 400)
                            .onAppear{
                                player.play()
                            }

                      
                    }
                    
                    Spacer()
                    VStack {
                       Image("swi3")
                            .cornerRadius(10)
                    }
                 
                }
                
                
                
                
                
                
                
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 6.5) {
                        self.isActive = true
                    }
                }
            }
      
        }

    }
    
}



struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
