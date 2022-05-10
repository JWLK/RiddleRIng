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
                        Text("Gift Info mation Text Line. \nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
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
