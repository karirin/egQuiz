//
//  QuizJukugo2List.swift
//  egQuiz
//
//  Created by Apple on 2024/02/09.
//

import SwiftUI

struct QuizJukugo2List: View {
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
          question: "少数の",
          choices: ["a couple of", "be proud of", "be similar to", "come about"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "いろいろな",
          choices: ["a variety of", "be satisfied with", "break down", "by accident"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜に同意する",
          choices: ["agree to", "call on", "carry on", "catch up with"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "初めからずっと",
          choices: [ "come into effect", "come to mind", "all along","come up with"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "もう一度",
          choices: ["be aware of", "all over again", "be bound for", "be capable of"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "結果として",
          choices: [ "be crazy about", "be different from","as a result", "be popular with"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "する限り",
          choices: [ "be proud of", "be responsible for", "be satisfied with","as long as"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "全く",
          choices: ["at all", "be similar to", "be sufficient to", "be sure of"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "全体として",
          choices: ["at large", "be tired of", "be used to", "be willing to"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "危機に瀕して",
          choices: [ "be worried about", "because of", "better off","at stake"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "〜を犠牲にして",
          choices: [ "break off", "at the expense of","bring forward", "by accident"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "遅くとも",
          choices: ["bring out", "by air","at the latest",  "by and large"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "概算",
          choices: ["by land", "by no means", "by sea","ballpark" ],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "〜を基礎にして",
          choices: ["call on", "carry on", "based on", "catch up with"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "〜に気付いている",
          choices: ["be aware of", "come about", "come into effect", "come to mind"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜に向かっている",
          choices: ["be bound for", "come up with", "be crazy about", "be different from"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜が可能である",
          choices: ["be popular with", "be capable of", "be proud of", "be responsible for"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "〜に夢中である",
          choices: ["be satisfied with", "be similar to", "be crazy about", "be sufficient to"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "〜とは違っている",
          choices: ["be sure of", "be tired of", "be used to","be different from"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "〜に人気がある",
          choices: [ "be willing to", "be worried about", "because of","be popular with"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "〜のことを自慢に思う",
          choices: ["be responsible for","be proud of",  "be satisfied with", "be similar to"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "〜に責任がある",
          choices: ["be sufficient to", "be sure of", "be responsible for", "be tired of"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "〜に満足している",
          choices: ["be used to", "be satisfied with", "be willing to", "be worried about"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "〜に似ている",
          choices: ["because of", "better off", "be similar to", "break down"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "〜するに十分な",
          choices: ["be sufficient to", "break off", "break up", "bring forward"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜を確信している",
          choices: ["be sure of", "bring out", "by accident", "by air"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜に飽きる",
          choices: ["be tired of", "by and large", "by land", "by no means"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜に慣れている",
          choices: ["be used to", "by sea", "call on", "carry on"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜する意思がある",
          choices: ["be willing to", "catch up with", "come about", "come into effect"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜のことで心配している",
          choices: [ "come to mind", "come up with", "a couple of","be worried about",],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "〜が理由で",
          choices: ["a variety of", "agree to", "all along","because of", ],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "〜より裕福",
          choices: ["all over again", "as a result", "as long as","better off", ],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "壊す",
          choices: [ "at all","break down", "at large", "at stake"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "打ち切る",
          choices: ["at the expense of","break off",  "at the latest", "ballpark"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "別れる",
          choices: [ "based on", "break up","be aware of", "be bound for"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "前に持ってくる",
          choices: [ "be capable of", "be crazy about", "bring forward","be different from"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "引き出す",
          choices: ["be popular with", "be proud of", "bring out", "be responsible for"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "偶然に",
          choices: [ "be satisfied with", "be similar to","by accident", "be sufficient to"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "空路で",
          choices: ["by air", "be sure of", "be tired of", "be used to"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "大体",
          choices: ["by and large", "be willing to", "be worried about", "because of"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "陸路で",
          choices: ["by land", "better off", "break down", "break off"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "決して～しない",
          choices: ["by no means", "break up", "bring forward", "bring out"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "海路で",
          choices: ["call on", "carry on", "catch up with","by sea" ],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "〜を訪問する",
          choices: [ "come about", "come into effect", "come to mind","call on"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "続ける",
          choices: ["come up with", "a couple of", "a variety of","carry on"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "〜に追いつく",
          choices: [ "agree to","catch up with", "all along", "all over again"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "起こる",
          choices: ["as a result","come about",  "as long as", "at all"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "効果が出る",
          choices: ["at large", "at stake", "come into effect", "at the expense of"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "頭に浮かぶ",
          choices: ["at the latest", "ballpark","come to mind",  "based on"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "〜を考え出す",
          choices: ["come up with", "be aware of", "be bound for", "be capable of"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "少しの間",
          choices: ["a second", "by air", "by and large", "by land"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜によれば",
          choices: ["according to", "by no means", "by sea", "call on"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "しばらくして",
          choices: ["carry on", "catch up with","after a while",  "come about"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "〜を承諾する",
          choices: ["come into effect", "agree to", "come to mind", "come up with"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "〜に賛成である",
          choices: [ "a couple of", "a variety of", "all along","agree with"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "一日中",
          choices: [ "all over again", "as a result", "as long as","all day long"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "〜の至る所に",
          choices: ["all over", "at all", "at large", "at stake"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜の平均",
          choices: ["an average of", "at the expense of", "at the latest", "ballpark"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜の結果",
          choices: [ "based on", "be aware of", "be bound for","as a result of"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "全体で",
          choices: ["as a whole", "be capable of", "be crazy about", "be different from"],
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
        QuizView(quizzes: shuffledQuizList, quizLevel: .Jukugo2, authManager: authManager, audioManager: audioManager, isPresenting: $isPresenting, interstitial: sharedInterstitial)
    }
}

struct QuizJukugo2List_Previews: PreviewProvider {
    static var previews: some View {
        QuizJukugo2List(isPresenting: .constant(false))
    }
}
