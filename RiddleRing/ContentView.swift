//
//  ContentView.swift
//  RiddleRing
//
//  Created by JWLK on 2022/05/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 5) {
                Spacer()
                Image("Ring")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth:100,alignment: .center)
                    .padding(.top, 0)
                
                Spacer()
                VStack{
                    Text("Gift Tag")
                        .font(.custom("IBMPlexSansKR-Regular", size: 24))
                        .foregroundColor(Color("textDefault"))
                    
                }
                .padding(.horizontal, 20)
                .frame(maxWidth: .infinity, maxHeight: 60, alignment:.leading)
                .background(Color.gray.opacity(0.1))
                
                ScrollView(.vertical) {
                    VStack{
                        Text("Gift Info mation Text Line")
                            .font(.custom("IBMPlexSansKR-Light", size: 16))
                            .foregroundColor(Color("textDefault"))
                            .multilineTextAlignment(.leading)
                            .lineLimit(50)
                        
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 30)
                    
                }
                .frame(maxWidth: .infinity, maxHeight: 300, alignment:.leading)
                .background(Color.gray.opacity(0.1))

                
                
                    
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.light)
        ContentView().preferredColorScheme(.dark)
    }
}
