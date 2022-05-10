//
//  MainView.swift
//  RiddleRing
//
//  Created by JWLK on 2022/05/10.
//

import SwiftUI

struct cardModel: Identifiable{
    var id = UUID()
    var image: String
    var type: String
    var category: String
    var heading: String
    var author: String
}
var cardData: [cardModel] = [
    cardModel(image: "RingSS", type: "SS", category: "Surgical Silver", heading: "Surgical Silver Ring", author:"Store A"),
    cardModel(image: "RingPG", type: "PG", category: "Pure Gold", heading: "Pure Gold Ring", author:"Store B"),
    cardModel(image: "RingSG", type: "SG", category: "Surgical Gold", heading: "Surgical Gold Ring", author:"Store C")
]

struct MainView: View {
    
    var body: some View {
        NavigationView() {
            VStack{
                ScrollView(.vertical, showsIndicators: true){
                    ForEach(cardData){ card in
                        NavigationLink (
                            destination: ContentView(data: card)
                        ){
                            CardView(
                                image: card.image,
                                type: card.type,
                                category: card.category,
                                heading: card.heading,
                                author: card.author)
                            .listRowInsets(EdgeInsets())
                        }.buttonStyle(PlainButtonStyle())
                    }
                    .listStyle(PlainListStyle())
                    .font(.title)
                    .navigationBarTitle(Text("Ring List"))
                }
            }
            
        }
        
    }
    
}
struct CardView: View{
    var image: String
    var type: String
    var category: String
    var heading: String
    var author: String
    
    var categoryColor: Color {
        switch type {
            case "SS":
                return Color("ringSS")
            case "SG":
                return Color("ringSG")
            case "PG":
                return Color("ringPG")
            default:
                return Color.clear
        }
    }
    
    var body: some View{
        VStack(alignment: .leading){
           Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(100)
            .background(Color("wineDynamic"))
            HStack{
                VStack(alignment: .leading, spacing: 5){
                    Text(category)
                        .font(.custom("IBMPlexSansKR-SemiBold", size: 18))
                        .foregroundColor(categoryColor)
                    
                    Text(heading)
                        .font(.custom("IBMPlexSansKR-Bold", size: 30))
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    
                    Text(author.uppercased())
                        .font(.custom("IBMPlexSansKR-Regular", size: 13))
                        .foregroundColor(.secondary)
            }
            .layoutPriority(100)
            Spacer()
                              
            }
            .padding()
        }
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB,red: 150/255, green: 150/255, blue: 150/255, opacity: 0.5), lineWidth: 1)
        )
        .padding([.top, .horizontal])
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().preferredColorScheme(.light)
        MainView().preferredColorScheme(.dark)
    }
}
