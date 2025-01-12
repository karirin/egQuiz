//
//  QuizTangoJunList.swift
//  egQuiz
//
//  Created by Apple on 2024/02/09.
//

import SwiftUI

struct QuizTango1List: View {
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
            question: "外交の、外交上の",
            choices: [
              "diplomatic",
              "narrative",
              "contamination",
              "stark"
            ],
            correctAnswerIndex: 0
          ),
        QuizQuestion(
          question: "と一緒に，並行して",
          choices: [
            "alongside",
            "beneath",
            "beyond",
            "above"
          ],
          correctAnswerIndex: 0
        ),
          QuizQuestion(
            question: "物語，話",
            choices: [
              "narrative",
              "doctrine",
              "controversy",
              "hypothesis"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "汚染，汚染物質",
            choices: [
              "nourishment",
              "dosage",
              "contamination",
              "implant"
            ],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "正真正銘の，純粋な",
            choices: [
              "sympathetic",
              "stark",
              "skeptical",
              "supposedly"
            ],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "拒否，拒絶",
            choices: [
              "refusal",
              "dissent",
              "refund",
              "disappearance"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "教義，信条",
            choices: [
              "doctrine",
              "hypothesis",
              "narrative",
              "controversy"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "無農薬の，有機の",
            choices: [
              "organic",
              "hierarchical",
              "archaeological",
              "evolutionary"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "進化的な，進化論の",
            choices: [
              "skeptical",
              "organic",
              "evolutionary",
              "hierarchical"
            ],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "考古学の",
            choices: [
              "evolutionary",
              "organic",
              "skeptical",
              "archaeological"
            ],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "その後の，次の",
            choices: [
              "controversy",
              "subsequent",
              "dissent",
              "proliferation"
            ],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "請負業者，契約者",
            choices: [
              "patriotism",
              "accounting",
              "contractor",
              "semester"
            ],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "懐疑的な，疑い深い",
            choices: [
              "skeptical",
              "sympathetic",
              "credibility",
              "dissent"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "わいろ，賄賂",
            choices: [
              "bribery",
              "controversy",
              "proliferation",
              "dissent"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "踏み車",
            choices: [
              "treadmill",
              "drawback",
              "prospective",
              "segment"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "再開する，続ける",
            choices: [
              "refund",
              "disappearance",
              "implant",
              "resume"
            ],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "階層的な，階級制の",
            choices: [
              "organic",
              "archaeological",
              "hierarchical",
              "evolutionary"
            ],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "栄養，滋養",
            choices: [
              "contamination",
              "dosage",
              "nourishment",
              "implant"
            ],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "信頼性，信用",
            choices: [
              "credibility",
              "sympathetic",
              "skeptical",
              "supposedly"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "異議を唱える，反対する",
            choices: [
              "dissent",
              "refusal",
              "disappearance",
              "refund"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "拡散，増殖",
            choices: [
              "proliferation",
              "controversy",
              "dissent",
              "bribery"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "論争，議論",
            choices: [
              "proliferation",
              "dissent",
              "bribery",
              "controversy"
            ],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "思いやりのある，共感的な",
            choices: [
              "skeptical",
              "credibility",
              "dissent",
              "sympathetic"
            ],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "たぶん，おそらく",
            choices: [
              "stark",
              "sympathetic",
              "supposedly",
              "skeptical"
            ],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "愛国心，忠誠心",
            choices: [
              "tragic",
              "patriotism",
              "implant",
              "accounting"
            ],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "失踪，消滅",
            choices: [
              "refusal",
              "dissent",
              "disappearance",
              "refund"
            ],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "悲劇的な，悲劇的",
            choices: [
              "tragic",
              "patriotism",
              "implant",
              "accounting"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "植え付ける，移植する",
            choices: [
              "implant",
              "disappearance",
              "refund",
              "diabetes"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "会計，計算",
            choices: [
              "accounting",
              "patriotism",
              "bout",
              "puppy"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "試合，競技",
            choices: [
              "bout",
              "semester",
              "refund",
              "diabetes"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "子犬，幼犬",
            choices: [
              "organ",
              "prod",
              "puppy",
              "drawback"
            ],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "学期，学期間",
            choices: [
              "refund",
              "semester",
              "diabetes",
              "organ"
            ],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "払い戻す，返金する",
            choices: [
              "resume",
              "disappearance",
              "implant",
              "refund"
            ],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "糖尿病，高血糖症",
            choices: [
              "diabetes",
              "organ",
              "prod",
              "drawback"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "臓器，器官",
            choices: [
              "organ",
              "puppy",
              "prod",
              "drawback"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "突く，呼び起こす",
            choices: [
              "organ",
              "prod",
              "puppy",
              "drawback"
            ],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "欠点，短所",
            choices: [
              "prospective",
              "exclusively",
              "drawback",
              "dosage"
            ],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "予測される，期待される",
            choices: [
              "exclusively",
              "dosage",
              "epic",
              "prospective"
            ],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "排他的に，限定して",
            choices: [
              "exclusively",
              "dosage",
              "epic",
              "consistently"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "投与量，服用量",
            choices: [
              "dosage",
              "epic",
              "consistently",
              "commerce"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "大作，壮大な作品",
            choices: [
              "epic",
              "consistently",
              "commerce",
              "segment"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "一貫して，常に",
            choices: [
              "commerce",
              "segment",
              "consistently",
              "exclusively"
            ],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "商業，商売",
            choices: [
              "commerce",
              "segment",
              "prospective",
              "exclusively"
            ],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "区切り，部分",
            choices: [
              "segment",
              "prospective",
              "exclusively",
              "dosage"
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
        QuizView(quizzes: shuffledQuizList, quizLevel: .Tango1, authManager: authManager, audioManager: audioManager, isPresenting: $isPresenting, interstitial: sharedInterstitial)
    }
}

struct QuizTango1List_Previews: PreviewProvider {
    static var previews: some View {
        QuizTango1List(isPresenting: .constant(false))
    }
}


