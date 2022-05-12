//
//  RiddleClipApp.swift
//  RiddleClip
//
//  Created by JWLK on 2022/05/12.
//

import SwiftUI

@main
struct RiddleClipApp: App {
    var body: some Scene {
        WindowGroup {
            MainView().onContinueUserActivity(NSUserActivityTypeBrowsingWeb, perform: handleUserActivity)
        }
    }
    func handleUserActivity(_ userActivity: NSUserActivity) {
            guard let incomingURL = userActivity.webpageURL,
                  let components = NSURLComponents(url: incomingURL, resolvingAgainstBaseURL: true) else {
                return
            }
            switch components.path {
            case "/":
                print("components.path \(String(describing: components.path))")
            case "/value":
                print("components.path \(String(describing: components.path))")
            default:
                break
            }
        }
}
