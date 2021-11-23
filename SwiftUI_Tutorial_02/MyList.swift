//
//  MyList.swift
//  SwiftUI_Tutorial_02
//
//  Created by SeongMinK on 2021/11/23.
//

import SwiftUI

struct MyList: View {
    @Binding var isNavigationBarHidden: Bool
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)) {
        _isNavigationBarHidden = isNavigationBarHidden
    }
    
    var body: some View {
        List {
            Section(
                header:
                Text("Today")
                    .font(.headline)
                    .foregroundColor(Color.black),
                footer:
                Text("Good Luck!")
                    .frame(maxWidth: .infinity, alignment: .trailing)
            ) {
                ForEach(1...3, id: \.self) { index in
                    MyCard(image: "book.fill", text: "책 읽기 \(index)", time: "1 PM - 3 PM", color: Color.green)
                }
            }
            .listRowBackground(Color.yellow)
            .listRowInsets(EdgeInsets.init(top: 5, leading: 10, bottom: 5, trailing: 10))
            
            Section(
                header:
                Text("Tomorow")
                    .font(.headline)
                    .foregroundColor(Color.black)
            ) {
                ForEach(1...10, id: \.self) { index in
                    MyCard(image: "book.fill", text: "책 읽기 \(index)", time: "1 PM - 3 PM", color: Color.blue)
                }
            }
            .listRowBackground(Color.green)
        }
        .listStyle(GroupedListStyle())
        .navigationBarTitle("My List")
        .onAppear {
            self.isNavigationBarHidden = false
        }
    }
}

struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
