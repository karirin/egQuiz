//
//  QuizToeicTangoIntermediateList.swift
//  egQuiz
//
//  Created by Apple on 2024/02/09.
//

import SwiftUI

struct QuizToeicTangoIntermediateList: View {
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
          question: "引き起こした",
          choices: ["caused", "broadcast", "consult", "inquire"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "を放送する",
          choices: ["broadcast", "deposit", "encouraged", "advance"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "相談する",
          choices: ["consult", "inquire", "concern", "launch"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "木材",
          choices: ["wood", "architecture", "quarter", "category"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "問い合わせる",
          choices: ["advance","inquire",  "announcement", "expired"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "前進する／前進，事前",
          choices: [ "advance", "assignment","adjust", "approve"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "発表，告知",
          choices: [  "announcement","arrangement","opinion", "solution"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "励ました",
          choices: ["expired", "encouraged", "concern", "launched"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "期限切れの",
          choices: ["developed", "noticed","expired",  "conducted"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "懸案する",
          choices: ["relation", "unclear", "concern", "conveniently"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "関係",
          choices: ["concern", "unclear", "relation", "conveniently"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "はっきりしない",
          choices: [ "single", "adjust", "unclear","follow"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "便利に",
          choices: [ "along", "ever", "social","conveniently"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "お金を預ける",
          choices: [ "launch", "obtain", "lease","deposit"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "説明",
          choices: ["assignment", "procedure", "solution","explanation"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "送り出す",
          choices: ["expand", "approve", "conduct","launch"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "宿題",
          choices: ["assignment", "category", "opinion", "arrangement"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "四半期",
          choices: ["quarter", "solution", "lease", "national"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "開発された",
          choices: ["developed", "conducted", "expanded", "adjusted"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "建築",
          choices: ["architecture", "housing", "convention", "office"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "手配",
          choices: ["arrangement", "announcement", "assignment", "quarter"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "一つの，一人の，独身の",
          choices: ["single", "social", "consumer", "national"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "意見",
          choices: ["opinion", "category", "adjust", "follow"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "部門，部類",
          choices: ["category", "architecture", "solution", "procedure"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "を調節する，順応する",
          choices: ["prefer", "adjust", "approve", "expand"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "の後を追う",
          choices: [ "along", "follow","author", "ever"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "に沿って",
          choices: ["author", "along", "ever", "obtain"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "著者，作家",
          choices: [ "consumer", "author","accountant", "manager"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "今まで",
          choices: [ "obtain", "procedure", "ever","noticed"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "を手に入れる",
          choices: [ "procedure", "prefer", "obtain","social"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "手順",
          choices: [ "noticed", "college", "procedure","prefer"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "気づいた",
          choices: [ "college", "prefer", "noticed","social"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "大学",
          choices: ["prefer", "social", "consumer","college"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "をより好む",
          choices: ["social", "consumer", "accountant","prefer"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "社会の，社交の",
          choices: ["consumer", "accountant", "on site","social"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "消費者",
          choices: ["accountant", "on site", "conducted","consumer"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "会計士",
          choices: ["accountant", "on site", "conducted", "approve"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "現場で",
          choices: ["on site", "conducted", "approve", "expand"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "導かれた",
          choices: ["conducted", "approve", "expand", "convention"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "承認する",
          choices: ["approve", "expand", "convention", "housing"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "を拡大する",
          choices: ["expand", "approve", "conduct", "lease"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "（大規模な）会議",
          choices: ["convention", "conference", "meeting", "seminar"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "住宅",
          choices: ["architecture", "housing", "lease", "solution"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "解決法",
          choices: [ "problem", "solution","challenge", "question"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "貸す",
          choices: ["rent","lease", "borrow", "own"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "ためらう",
          choices: ["proceed", "rush", "hesitate", "pause"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "目立った",
          choices: ["ordinary", "typical", "outstanding", "usual"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "規則的に，定期的に",
          choices: ["occasionally", "seldom", "frequently","regularly"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "国家の，国民の",
          choices: ["international", "local", "public","national"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "祝福",
          choices: ["congratulation", "celebration", "commendation", "applause"],
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
        QuizView(quizzes: shuffledQuizList, quizLevel: .ToeicTangoIntermediate, authManager: authManager, audioManager: audioManager, isPresenting: $isPresenting, interstitial: sharedInterstitial)
    }
}

struct QuizToeicTangoIntermediateList_Previews: PreviewProvider {
    static var previews: some View {
        QuizToeicTangoIntermediateList(isPresenting: .constant(false))
    }
}




