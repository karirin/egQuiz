//
//  QuizJukugoJun2List.swift
//  egQuiz
//
//  Created by Apple on 2024/02/09.
//

import SwiftUI

struct QuizJukugoJun2List: View {
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
            question: "〜が怖い",
            choices: ["try to", "take it back", "on the wall", "be scared of"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "折り返し電話する",
            choices: ["keep in touch", "even so", "call back", "leave for"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "〜に決める",
            choices: ["try to", "live abroad", "decide to", "too ～ for"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "それでも",
            choices: ["try to", "even so", "all day long", "most of"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "毎分ごとに",
            choices: ["from ～ to ～", "keep in touch", "agree to", "every minutes"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "〜に賛成である",
            choices: ["even so", "work for", "agree with", "an average of"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "一日中",
            choices: ["all day long", "leave for", "from now on", "look after"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "〜の至る所に",
            choices: ["all over", "decide to", "foreign language", "all day long"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "〜の平均",
            choices: ["look after", "call back", "every minutes", "an average of"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "〜の結果",
            choices: ["try on", "as a result of", "take it back", "from the experience"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "外国語",
            choices: ["agree with", "foreign language", "call back", "try on"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "～から～まで",
            choices: ["from ～ to ～", "agree to", "stand by", "take care of"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "これから",
            choices: ["from now on", "search for", "get tired", "be scared of"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "経験から",
            choices: ["from the experience", "one day", "all day long", "as a result of"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "うまくやる",
            choices: ["try hard", "get along with", "live abroad", "make own bed"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "疲れる",
            choices: ["show 人 around", "get tired", "take it back", "work for"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "外国に行く",
            choices: ["live abroad", "go abroad", "take care of", "think of"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "将来に",
            choices: ["in the future", "agree with", "search for", "stand by"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "連絡を取り合う",
            choices: ["keep in touch", "leave for", "talk about", "try on"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "〜に対して親切な",
            choices: ["be scared of", "kind to", "get along with", "look after"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "〜へ出かける",
            choices: [ "stand by", "search for", "agree to","leave for"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "～しましょう",
            choices: [ "try on", "think of", "talk to","Let us(Let's)"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "海外で生活する",
            choices: [ "leave for", "look after", "make own bed","live abroad"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "〜の面倒を見る",
            choices: ["try hard", "work for", "take care of", "get tired"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "ベッドを整える",
            choices: ["keep in touch", "go abroad", "make own bed", "be kind to"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "壁に",
            choices: ["stand by", "try hard", "on the wall", "look after"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "ある日",
            choices: ["agree with","one day",  "search for", "make own bed"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "あそこに",
            choices: ["get along with", "over there", "live abroad", "as a result of"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "〜を探索する",
            choices: ["search for", "agree to", "take it back", "all day long"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "人に見せて回る",
            choices: ["show 人 around", "think of", "talk about", "be scared of"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "助けが必要な人",
            choices: ["someone in need", "try on", "leave for", "agree with"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "そばに立つ",
            choices: [ "talk to", "search for", "stand by","make own bed"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "文房具店",
            choices: ["live abroad", "get tired", "stationery shop", "keep in touch"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "〜の面倒を見る",
            choices: [ "be scared of", "call back", "take care of","think of"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "取り戻す",
            choices: ["decide to", "even so", "for example","take it back"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "〜について話す",
            choices: ["go abroad", "in the future", "kind to","talk about"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "〜に話しかける",
            choices: ["talk to", "show 人 around", "get along with", "most of"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "思い付く",
            choices: ["think of", "try hard", "as a whole", "a second"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "～すぎる",
            choices: ["too ～ for", "according to", "after a while", "agree to"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "一生懸命",
            choices: ["try hard", "try on", "work for", "as a result of"],
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
        QuizView(quizzes: shuffledQuizList, quizLevel: .JukugoJun2, authManager: authManager, audioManager: audioManager, isPresenting: $isPresenting, interstitial: sharedInterstitial)
    }
}

struct QuizJukugoJun2List_Previews: PreviewProvider {
    static var previews: some View {
        QuizJukugoJun2List(isPresenting: .constant(false))
    }
}




