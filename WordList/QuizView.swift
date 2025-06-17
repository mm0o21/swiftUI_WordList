//
//  QuizView.swift
//  WordList
//
//  Created by maoko furuya on 2025/06/17.
//

import SwiftUI
import SwiftData

struct QuizView: View {
    @Environment(\.modelContext) var context
    @Environment(\.dismiss) var dismiss
    @Query var words: [Word]
    @State var index = 0
    @State var showAnswer = false
    
    var isLastQuiz: Bool {
        index + 1 >= words.count
    }
    
    var body: some View {
        VStack(spacing: 24) {
            Spacer()
            if words.isEmpty{
                Text("登録されている単語がありません")
            } else {
                Text(words[index].english)
                    .font(.largeTitle)
                Text(showAnswer ? words[index].japanese : "-")
                    .font(.largeTitle)
                
                Button{
                    showAnswer.toggle()
                } label: {
                    Text(showAnswer ? "解答を非表示" : "解答を表示")
                }
                .font(.title)
                .foregroundStyle(.white)
                .padding(.vertical, 12)
                .frame(maxWidth: .infinity)
                .background(Color.orange)
                .clipShape(.capsule)
            }
            Spacer()
            
            Button{
                if isLastQuiz {
                    dismiss()
                } else {
                    index += 1
                }
                
            } label: {
                Text(isLastQuiz ? "終了！" : "次の問題へ！")
            }
            .font(.title)
            .foregroundStyle(.white)
            .padding(.vertical, 12)
            .frame(maxWidth: .infinity)
            .background(Color.orange)
            .clipShape(.capsule)
        }
        .padding(.horizontal, 60)
    }
}

#Preview {
    QuizView()
        .modelContainer(wordContainer)
}
