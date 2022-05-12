//
//  Splash.swift
//  BLEMonitor
//
//  Created by jwlryk on 2022/05/09.
//

import SwiftUI

struct Splash: View {
    @State private var isActive = false
    let nextPage = MainView()
    var body: some View {
        NavigationView {
            ZStack{
                Spacer().background(Color("wine400"))
                    .edgesIgnoringSafeArea(.all)
                VStack(alignment: .center) {
                    Spacer()
                    Image("SplashLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth:100,alignment: .center)
                        .padding(.top, 70)
                        
                    
                    Text("R·R")
                        .font(.custom("3270Medium", size: 21))
                        .foregroundColor(Color("white"))
                        .padding(.top, 10)
                    Spacer()
                    Text("Copyright ⓒ 2020. jwlryk All Rights Reserved.")
                        .font(.custom("3270Narrow", size: 13))
                        .foregroundColor(Color("white"))
                        .padding(.top, 150)
                        .padding(.bottom, 30)
                    
                }.onAppear(perform: {
                    self.gotoLoginScreen(time: 2.5)
                })
                
                NavigationLink(destination: nextPage.hiddenNavigationBarStyle(),
                               isActive: $isActive,
                               label: { EmptyView() })
            }
            .statusBar(hidden: true)
            .onOpenURL { url in
//                tappedUrl = url.absoluteString
                print("url", url)
            }
        }
    }

    func gotoLoginScreen(time: Double) {
        DispatchQueue.main.asyncAfter(deadline: .now() + Double(time)) {
            self.isActive = true
        }
    }
}

struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        Splash().preferredColorScheme(.light)
        Splash().preferredColorScheme(.dark)
    }
}
