//
//  QuizTangoJun2List.swift
//  egQuiz
//
//  Created by Apple on 2024/02/09.
//

import SwiftUI

struct QuizTangoJun2List: View {
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
            question: "利用できる，使用可能な",
            choices: [
              "available",
              "information",
              "gain",
              "traditional"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "最近，近頃",
            choices: [
              "nowadays",
              "information",
              "gain",
              "traditional"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "情報",
            choices: [
              "information",
              "nowadays",
              "gain",
              "traditional"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "得る，獲得する",
            choices: [
              "nowadays",
              "information",
              "gain",
              "traditional"
            ],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "伝統的な、慣習的な",
            choices: [
              "nowadays",
              "traditional",
              "available",
              "gain"
            ],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "質，特性",
            choices: [
              "however",
              "collect",
              "quality",
              "extra"
            ],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "を改善する，改良する",
            choices: [
              "however",
              "collect",
              "improve",
              "extra"
            ],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "しかしながら，どんなに～でも",
            choices: [
              "improve",
              "however",
              "collect",
              "extra"
            ],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "集める，収集する",
            choices: [
              "improve",
              "collect",
              "however",
              "extra"
            ],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "余分の，特別の",
            choices: [
              "improve",
              "quality",
              "however",
              "extra"
            ],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "衣料品，服",
            choices: [
              "comfortable",
              "clothing",
              "instead",
              "originally"
            ],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "心地の良い，快適な",
            choices: [
              "clothing",
              "comfortable",
              "instead",
              "originally"
            ],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "がっかりさせる，失望させる",
            choices: [
              "clothing",
              "comfortable",
               "disappoint",
              "originally"
            ],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "代わりに，その代わり",
            choices: [
              "clothing",
              "comfortable",
              "instead",
              "originally"
            ],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "はじめは，元々は",
            choices: [
              "originally",
              "comfortable",
              "disappoint",
              "instead"
            ],
            correctAnswerIndex: 0
          ),

          QuizQuestion(
            question: "確かに，間違いなく",
            choices: [
              "certainly",
              "details",
              "melt",
              "direction"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "会社",
            choices: [
              "company",
              "details",
              "melt",
              "direction"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "詳細",
            choices: [
              "certainly",
              "company",
              "melt",
              "details"
            ],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "溶ける，を溶かす",
            choices: [
              "certainly",
              "company",
              "details",
              "melt"
            ],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "方向，方角",
            choices: [
              "certainly",
              "company",
              "direction",
              "melt"
            ],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "怪我，負傷",
            choices: [
              "silence",
              "tight",
              "injury",
              "sharp"
            ],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "沈黙",
            choices: [
              "injury",
              "tight",
              "silence",
              "sharp"
            ],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "狭い，締まった",
            choices: [
              "injury",
              "tight",
              "protect",
              "sharp"
            ],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "を守る、保護する",
            choices: [
              "injury",
              "protect",
              "tight",
              "sharp"
            ],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "鋭い、先鋭的な",
            choices: [
              "sharp",
              "silence",
              "tight",
              "protect"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "背後に，後方に",
            choices: [
              "behind",
              "emergency",
              "waste",
              "amount"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "面倒／迷惑をかける",
            choices: [
              "behind",
              "bother",
              "waste",
              "amount"
            ],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "緊急，急ぎ",
            choices: [
              "behind",
              "bother",
              "emergency",
              "amount"
            ],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "を浪費する／浪費，廃棄物",
            choices: [
              "behind",
              "bother",
              "emergency",
              "waste"
            ],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "量，額",
            choices: [
              "behind",
              "bother",
              "emergency",
              "amount"
            ],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "有利，利点",
            choices: [
              "advantage",
              "add",
              "surface",
              "destroy"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "物体，実体",
            choices: [
              "object",
              "add",
              "surface",
              "destroy"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "足し算する，合計する",
            choices: [
              "advantage",
              "add",
              "surface",
              "destroy"
            ],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "表面，水面",
            choices: [
              "advantage",
              "object",
              "surface",
              "destroy"
            ],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "を破壊する，を壊す",
            choices: [
              "advantage",
              "object",
              "destroy",
              "surface"
            ],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "知識，学識",
            choices: [
              "continue",
              "immediately",
              "correct",
              "knowledge"
            ],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "をし続ける，続ける",
            choices: [
              "knowledge",
              "immediately",
              "correct",
              "continue"
            ],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "即座に，直ちに",
            choices: [
              "knowledge",
              "immediately",
              "correct",
              "government"
            ],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "正確な／を訂正する",
            choices: [
              "correct",
              "continue",
              "immediately",
              "government"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "政府，行政府，内閣",
            choices: [
              "government",
              "continue",
              "immediately",
              "correct"
            ],
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
        QuizView(quizzes: shuffledQuizList, quizLevel: .TangoJun2, authManager: authManager, audioManager: audioManager, isPresenting: $isPresenting, interstitial: sharedInterstitial)
    }
}

struct QuizTangoJun2List_Previews: PreviewProvider {
    static var previews: some View {
        QuizTangoJun2List(isPresenting: .constant(false))
    }
}
