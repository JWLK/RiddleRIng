//
//  ViewModifiers.swift
//  RiddleRing
//
//  Created by JWLK on 2022/05/09.
//

import Foundation
import SwiftUI

struct HiddenNavigationBar: ViewModifier {
    func body(content: Content) -> some View {
        content
        .navigationBarHidden(true)
    }
}

struct FontCheck: ViewModifier {
    func body(content:Content) -> some View {
        content
            .onAppear{
                for family: String in UIFont.familyNames {
                    print(family)
                    for names : String in UIFont.fontNames(forFamilyName: family){
                        print("=== \(names)")
                    }
                }
            }
    }
    
}

extension View {
    func hiddenNavigationBarStyle() -> some View {
        modifier( HiddenNavigationBar() )
    }
    func fontCheckView() -> some View {
        modifier(FontCheck())
    }
}


struct ScrollMain: View {
    var body: some View {
        VStack(spacing: 5){
            Text("test")
            Text("test")
            Text("test").font(.system(size: 53, weight: .medium))
        }
        .frame(maxWidth:.infinity, minHeight: 70, alignment: .center)
        .background(Color.white)
        
        
    }
}
