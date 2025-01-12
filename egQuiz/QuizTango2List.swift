//
//  QuizTango2List.swift
//  egQuiz
//
//  Created by Apple on 2024/02/09.
//

import SwiftUI

struct QuizTango2List: View {
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
           question: "しかしながら，どんなに～でも",
           choices: [
             "environment",
             "reduce",
             "instead",
             "however"
           ],
           correctAnswerIndex: 3
         ),
         QuizQuestion(
           question: "環境，状況",
           choices: [
             "however",
             "environment",
             "instead",
             "vehicle"
           ],
           correctAnswerIndex: 1
         ),
         QuizQuestion(
           question: "を減らす，縮小する",
           choices: [
             "however",
             "environment",
             "reduce",
             "vehicle"
           ],
           correctAnswerIndex: 2
         ),
         QuizQuestion(
           question: "代わりに，その代わり",
           choices: [
             "however",
             "environment",
             "instead",
             "vehicle"
           ],
           correctAnswerIndex: 2
         ),
         QuizQuestion(
           question: "乗り物，車",
           choices: [
             "however",
             "environment",
             "reduce",
             "vehicle"
           ],
           correctAnswerIndex: 3
         ),
         QuizQuestion(
           question: "を推薦する，を勧める",
           choices: [
             "improve",
             "recently",
             "recommend",
             "several"
           ],
           correctAnswerIndex: 2
         ),
         QuizQuestion(
           question: "を改善する，改良する",
           choices: [
             "recommend",
             "improve",
             "customer",
             "several"
           ],
           correctAnswerIndex: 1
         ),
         QuizQuestion(
           question: "最近，このごろ",
           choices: [
             "recommend",
             "improve",
             "customer",
             "recently"
           ],
           correctAnswerIndex: 3
         ),
         QuizQuestion(
           question: "顧客，お客様",
           choices: [
             "customer",
             "improve",
             "recently",
             "several"
           ],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "幾つかの，いくらかの",
           choices: [
             "several",
             "improve",
             "recently",
             "customer"
           ],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "を発見する，見つける",
           choices: [
             "common",
             "discover",
             "moreover",
             "benefit"
           ],
           correctAnswerIndex: 1
         ),
         QuizQuestion(
           question: "共通の，共同の",
           choices: [
             "discover",
             "disturb",
             "moreover",
             "common"
           ],
           correctAnswerIndex: 3
         ),
         QuizQuestion(
           question: "を阻害する，(人の)邪魔をする",
           choices: [
             "discover",
             "common",
             "disturb",
             "benefit"
           ],
           correctAnswerIndex: 2
         ),
         QuizQuestion(
           question: "さらに，その上",
           choices: [
             "discover",
             "moreover",
             "disturb",
             "benefit"
           ],
           correctAnswerIndex: 1
         ),
         QuizQuestion(
           question: "利益／に利益をもたらす",
           choices: [
             "discover",
             "benefit",
             "disturb",
             "moreover"
           ],
           correctAnswerIndex: 1
         ),
         QuizQuestion(
           question: "解決法，解明",
           choices: [
             "inform",
             "unable",
             "solution",
             "therefore"
           ],
           correctAnswerIndex: 2
         ),
         QuizQuestion(
           question: "情報を与える，に知らせる",
           choices: [
             "inform",
             "unable",
             "disease",
             "therefore"
           ],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "できない，不能である",
           choices: [
             "solution",
             "inform",
             "disease",
             "unable"
           ],
           correctAnswerIndex: 3
         ),
         QuizQuestion(
           question: "病気，疾患",
           choices: [
             "disease",
             "inform",
             "unable",
             "therefore"
           ],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "それゆえ，だから",
           choices: [
             "therefore",
             "inform",
             "unable",
             "disease"
           ],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "残念なことに，不幸にも",
           choices: [
             "unfortunately",
             "attractive",
             "climate",
             "evidence"
           ],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "装置，仕掛け",
           choices: [
             "unfortunately",
             "attractive",
             "device",
             "evidence"
           ],
           correctAnswerIndex: 2
         ),
         QuizQuestion(
           question: "魅力的な，興味をそそる",
           choices: [
             "unfortunately",
             "device",
             "climate",
             "attractive"
           ],
           correctAnswerIndex: 3
         ),
         QuizQuestion(
           question: "気候，天候",
           choices: [
             "unfortunately",
             "device",
             "attractive",
             "climate"
           ],
           correctAnswerIndex: 3
         ),
         QuizQuestion(
           question: "証拠，証明",
           choices: [
             "unfortunately",
             "device",
             "evidence",
             "climate"
           ],
           correctAnswerIndex: 2
         ),
         QuizQuestion(
           question: "を推定する，評価する",
           choices: [
             "estimate",
             "meanwhile",
             "entirely",
             "publish"
           ],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "だと主張する，感情的に論じる",
           choices: [
             "argue",
             "meanwhile",
             "entirely",
             "publish"
           ],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "一方で，他方で",
           choices: [
             "meanwhile",
             "argue",
             "entirely",
             "publish"
           ],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "完全に，全く",
           choices: [
             "estimate",
             "argue",
             "meanwhile",
             "entirely"
           ],
           correctAnswerIndex: 3
         ),
         QuizQuestion(
           question: "を出版する，発行する",
           choices: [
             "publish",
             "argue",
             "meanwhile",
             "entirely"
           ],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "溶ける，を溶かす",
           choices: [
             "expense",
             "contain",
             "melt",
             "government"
           ],
           correctAnswerIndex: 2
         ),
         QuizQuestion(
           question: "費用，出費，犠牲",
           choices: [
             "melt",
             "expense",
             "contain",
             "government"
           ],
           correctAnswerIndex: 1
         ),
         QuizQuestion(
           question: "を含む，が入っている",
           choices: [
             "melt",
             "contain",
             "similar",
             "government"
           ],
           correctAnswerIndex: 1
         ),
         QuizQuestion(
           question: "似ている，類似の",
           choices: [
             "melt",
             "similar",
             "contain",
             "government"
           ],
           correctAnswerIndex: 1
         ),
         QuizQuestion(
           question: "政府，行政府，内閣",
           choices: [
             "melt",
             "government",
             "contain",
             "similar"
           ],
           correctAnswerIndex: 1
         ),
         QuizQuestion(
           question: "現代的な，現代の",
           choices: [
             "million",
             "quit",
             "modern",
             "pollution"
           ],
           correctAnswerIndex: 2
         ),
         QuizQuestion(
           question: "万",
           choices: [
             "modern",
             "million",
             "scientist",
             "pollution"
           ],
           correctAnswerIndex: 1
         ),
         QuizQuestion(
           question: "やめる，中止する",
           choices: [
             "modern",
             "million",
             "scientist",
             "quit"
           ],
           correctAnswerIndex: 3
         ),
         QuizQuestion(
           question: "科学者，研究者",
           choices: [
             "scientist",
             "million",
             "quit",
             "pollution"
           ],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "汚染，汚れ",
           choices: [
             "modern",
             "pollution",
             "quit",
             "scientist"
           ],
           correctAnswerIndex: 1
         ),
         QuizQuestion(
           question: "土台，根拠，設立",
           choices: [
             "modern",
             "million",
             "quit",
             "foundation"
           ],
           correctAnswerIndex: 3
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
        QuizView(quizzes: shuffledQuizList, quizLevel: .Tango2, authManager: authManager, audioManager: audioManager, isPresenting: $isPresenting, interstitial: sharedInterstitial)
    }
}

struct QuizTango2List_Previews: PreviewProvider {
    static var previews: some View {
        QuizTango2List(isPresenting: .constant(false))
    }
}
