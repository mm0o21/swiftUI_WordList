//
//  ContentView.swift
//  WordList
//
//  Created by maoko furuya on 2025/06/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack(spacing: 32){
                Text("My単語帳")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                NavigationLink {
                    QuizView()
                }label: {
                    Text("Quiz Start!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .padding(.vertical, 12)
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                        .clipShape(.capsule)
                }
                
                NavigationLink{
                    WordListView()
                }label: {
                    Text("単語一覧")
                        .font(.title)
                        .foregroundStyle(.white)
                        .fontWeight(.bold)
                        .padding(.vertical, 12)
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                        .clipShape(.capsule)
                }
            }
            .padding(.horizontal, 60)
        }
    }
}

#Preview {
    ContentView()
}
