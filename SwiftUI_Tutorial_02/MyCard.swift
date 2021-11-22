//
//  MyCard.swift
//  SwiftUI_Tutorial_02
//
//  Created by SeongMinK on 2021/11/22.
//

import SwiftUI

struct MyCard: View {
    let image: String
    let text: String
    let time: String
    let color: Color
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: image)
                .font(.system(size: 40))
                .foregroundColor(Color.white)
                .frame(width: 60)
            
            VStack(alignment: .leading, spacing: 0) {
                Rectangle().frame(height: 0)
                Text(text)
                    .bold()
                    .foregroundColor(Color.white)
                    .font(.system(size: 25))
                Text(time)
                    .font(.subheadline)
                    .foregroundColor(Color.white)
            }
        }
        .padding()
        .background(color)
        .cornerRadius(20)
    }
}

struct MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard(image: "video.fill", text: "유튜브 프로젝트", time: "10 AM - 11 AM", color: Color.yellow)
    }
}
