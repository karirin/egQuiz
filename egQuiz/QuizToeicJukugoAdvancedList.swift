//
//  QuizToeicJukugoAdvancedList.swift
//  egQuiz
//
//  Created by Apple on 2024/02/10.
//

import SwiftUI

struct QuizToeicJukugoAdvancedList: View {
    @Binding var isPresenting: Bool
//    let quizBeginnerList: [QuizQuestion] = [
//        QuizQuestion(
//            question: "ビジネスモデルで、顧客との長期的な関係を築くことを重視し、継続的なサービス提供を行うモデルは？あああああああああああああああああああ",
//            choices: [
//                "B2B",
//                "B2C",
//                "C2C",
//                "CRM"
//            ],
//            correctAnswerIndex: 3,
//            explanation: "ビジネスモデルで、顧客との長期的な関係を築くことを重視し、継続的なサービス提供を行うモデルは？ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ"
//        ),
//        QuizQuestion(
//            question: "ビジネスモデルで、顧客との長期的な関係を築くことを重視し、継続的なサービス提供を行うモデルは？あああああああああああああああああああ",
//            choices: [
//                "B2B",
//                "B2C",
//                "C2C",
//                "CRM"
//            ],
//            correctAnswerIndex: 3,
//            explanation: "ビジネスモデルで、顧客との長期的な関係を築くことを重視し、継続的なサービス提供を行うモデルは？ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ"
//        )
//        ]
//    let quizBeginnerList: [QuizQuestion] = [
//        QuizQuestion(
//            question: "ネットワークのアドレスで、インターネット上のコンピュータやネットワークを一意に識別するための番号は？",
//            choices: [
//                "MACアドレス",
//                "IPアドレス",
//                "URL",
//                "DNS"
//            ],
//            correctAnswerIndex: 1,
//            explanation: "インターネット上のコンピュータやネットワークを一意に識別するための番号は「IPアドレス」といいます。"
//        )
//    ]
    let quizBeginnerList: [QuizQuestion] = [
        QuizQuestion(
          question: "２つの，数個の",
          choices: ["a couple of", "take care", "get back to", "turn off"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "気を付けて，注意する",
          choices: ["take care", "get back to", "turn off", "on the top of"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "後で電話をする",
          choices: ["get back to", "call back", "take out", "go for"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜を消す，〜を止める",
          choices: ["turn off", "go through", "provide A with B", "apply to"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜の上に，〜の頂点に",
          choices: ["on the top of", "for a long time", "in the middle of", "for example"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "電話をかけなおす",
          choices: ["call back", "take out", "go for", "go through"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "持ち帰る、取り出す",
          choices: ["go for","take out",  "go through", "provide A with B"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "〜に挑戦する、〜に行く",
          choices: ["go through", "go for", "provide A with B", "apply to"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "〜を通る，〜を通過する",
          choices: [ "provide A with B", "go through","apply to", "for a long time"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "AにBを供給する",
          choices: ["apply to", "provide A with B", "for a long time", "in the middle of"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "〜に適用される",
          choices: ["for a long time", "apply to", "in the middle of", "for example"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "長い間，長時間",
          choices: ["in the middle of", "for example", "for a long time", "required for"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "〜の途中で",
          choices: ["for example", "required for","in the middle of",  "too, to"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "例えば",
          choices: ["required for", "too, to","for example",  "for sale"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "〜を要求される",
          choices: ["too, to", "for sale","required for",  "lead to"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "すぎて，できない",
          choices: ["for sale", "lead to", "too, to", "as of"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "セール中",
          choices: [ "lead to", "as of", "run out of","for sale"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "〜を導く",
          choices: [ "as of", "run out of", "happen to","lead to"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "〜の時点で",
          choices: ["run out of", "happen to", "drop off","as of"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "〜が尽きる，〜が無くなる",
          choices: ["happen to", "drop off", "plan on ～ing","run out of"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "偶然，が起こる，たまたま，する",
          choices: ["happen to", "drop off", "plan on ～ing", "turn out"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "落ちる、降りる",
          choices: ["drop off", "plan on ～ing", "turn out", "graduate from"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜を予定する",
          choices: ["plan on ～ing", "turn out", "graduate from", "even, if"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜になる、（電気）を消す",
          choices: ["turn out", "graduate from", "even, if", "look up"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜から卒業する",
          choices: [ "even, if", "graduate from","look up", "for a while"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "たとえ，でも、もし，だとしても",
          choices: [ "look up","even, if", "for a while", "full of"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "見上げる",
          choices: ["for a while", "look up", "full of", "figure out"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "少しの間",
          choices: [ "full of", "figure out", "for a while","turn down"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "〜で満たされている",
          choices: ["figure out", "turn down", "full of", "be willing to"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "〜を探し出す，理解する",
          choices: [ "turn down", "be willing to","figure out", "put up"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "断る，却下する",
          choices: ["be willing to", "put up", "turn down", "along with"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "するつもり，する意思がある",
          choices: ["put up", "along with", "leave a message","be willing to"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "上げる，掲示する",
          choices: ["along with", "leave a message", "end up","put up"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "〜と一緒に，〜と共に",
          choices: [ "leave a message", "end up", "take over","along with"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "伝言を残す",
          choices: ["end up", "take over", "at any time","leave a message"],
          correctAnswerIndex: 3
        ),

        QuizQuestion(
          question: "最後は，〜になる",
          choices: [ "take over", "at any time", "in a row","end up"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "引き継ぐ，引き取る",
          choices: ["take over", "at any time", "in a row", "after all"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "いつでも",
          choices: ["at any time", "in a row", "after all", "I wish I could"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "一列に並んだ，連続的に",
          choices: ["in a row", "after all", "I wish I could", "call for"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "結局，やはり",
          choices: ["after all", "I wish I could", "call for", "I would appreciate"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "できたらよいと望む",
          choices: ["I wish I could", "call for", "I would appreciate", "around the corner"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜を要求する，〜を呼びに行く",
          choices: ["I would appreciate", "call for", "around the corner", "at times"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "〜をありがたく思う",
          choices: ["around the corner", "I would appreciate", "at times", "keep in touch"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "間もなく，曲がり角のあたりに",
          choices: ["at times", "around the corner", "keep in touch", "make a decision"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "時々",
          choices: [ "keep in touch", "at times","make a decision", "no later than"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "連絡を取る",
          choices: ["make a decision", "no later than", "keep in touch", "out of order"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "決心する",
          choices: ["no later than", "out of order", "make a decision", "move on"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "遅くとも",
          choices: ["out of order", "move on", "I wish I could","no later than"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "故障中で，順番が乱れて",
          choices: [ "move on", "I wish I could", "call for","out of order"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "次へ進む",
          choices: ["move on", "I wish I could", "call for", "I would appreciate"],
          correctAnswerIndex: 0
        )


    ]
        
    @State private var shuffledQuizList: [QuizQuestion]
    private var authManager = AuthManager()
    private var audioManager = AudioManager.shared

    init(isPresenting: Binding<Bool>) {
        _isPresenting = isPresenting
        _shuffledQuizList = State(initialValue: quizBeginnerList.shuffled())
    }
    @StateObject var sharedInterstitial = Interstitial()
    var body: some View {
        QuizView(quizzes: shuffledQuizList, quizLevel: .ToeicJukugoAdvanced, authManager: authManager, audioManager: audioManager, isPresenting: $isPresenting, interstitial: sharedInterstitial)
    }
}

struct QuizToeicJukugoAdvancedList_Previews: PreviewProvider {
    static var previews: some View {
        QuizToeicJukugoAdvancedList(isPresenting: .constant(false))
    }
}








