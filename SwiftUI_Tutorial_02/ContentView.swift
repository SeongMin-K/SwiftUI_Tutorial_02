//
//  ContentView.swift
//  SwiftUI_Tutorial_02
//
//  Created by SeongMinK on 2021/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack(alignment: .leading, spacing: 15) {
                HStack {
                    Image(systemName: "line.horizontal.3")
                        .font(.largeTitle)
                    Spacer()
                    Image(systemName: "person.crop.circle")
                        .font(.largeTitle)
                }
                
                Text("할 일 목록")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                
                ScrollView {
                    VStack {
                        MyCard(image: "play.rectangle", text: "유튜브 업로드", time: "10 AM - 11 AM", color: Color.red)
                        MyCard(image: "person.badge.clock", text: "점심 식사", time: "11 AM - 1 PM", color: Color.green)
                        MyCard(image: "scissors.badge.ellipsis", text: "헤어샵", time: "1 PM - 3 PM", color: Color.yellow)
                        MyCard(image: "rectangle.and.pencil.and.ellipsis", text: "Swift Study", time: "3 PM - 6 PM", color: Color.orange)
                        MyCard(image: "square.and.arrow.up", text: "GitHub Commit", time: "6 PM - 7 PM", color: Color.gray)
                        MyCard(image: "person.badge.clock", text: "저녁 식사", time: "6 PM - 7 PM", color: Color.blue)
                        MyCard(image: "car", text: "Forza Horizon 5", time: "8 PM - 10 PM", color: Color.pink)
                        MyCard(image: "rectangle.inset.filled.and.person.filled", text: "넷플릭스 시청", time: "12 AM - 2 AM ", color: Color.red)
                        MyCard(image: "bed.double", text: "꿈나라 Zzz", time: "2 AM - 9 AM", color: Color.black)
                    }
                }
            }.padding(.horizontal, 10)
            
            Image(systemName: "plus")
                .font(.system(size: 30))
                .frame(width: 60, height: 60)
                .background(Color.black)
                .foregroundColor(Color.white)
                .clipShape(Circle())
                .padding(10)
                .shadow(radius: 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
