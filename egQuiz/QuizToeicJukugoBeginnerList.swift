//
//  QuizToeicJukugoBeginnerList.swift
//  egQuiz
//
//  Created by Apple on 2024/02/10.
//

import SwiftUI

struct QuizToeicJukugoBeginnerList: View {
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
          question: "したい，〜をください",
          choices: ["would like", "such as", "so that", "let A know"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜のように，次のような",
          choices: ["such as", "so that", "let A know", "at least"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "するために，とても～なので",
          choices: ["so that", "let A know", "at least", "ask for"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "Aに知らせる",
          choices: ["let A know", "at least", "at last", "ask for"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "少なくとも",
          choices: ["at least", "at last", "ask for", "up to"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "ついに、最後に",
          choices: [ "ask for","at last", "up to", "a variety of"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "〜を頼む，〜をお願いする",
          choices: ["up to", "ask for", "a variety of", "because of"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "まで，〜に至るまで",
          choices: ["a variety of", "up to", "because of", "be interested in"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "いろいろな",
          choices: [ "because of", "a variety of","be interested in", "pick up"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "〜のために，〜の理由で",
          choices: ["be interested in", "pick up","because of",  "make sure"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "興味がある",
          choices: ["pick up", "make sure", "be interested in", "as… as possible"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "迎えに行く、取り出す",
          choices: [ "make sure", "as… as possible","pick up", "be concerned about"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "確かにする",
          choices: ["as… as possible", "be concerned about", "make sure", "work on"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "可能な限り",
          choices: [ "be concerned about", "work on","as… as possible", "sign up"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "〜を心配している",
          choices: ["work on", "sign up", "take place","be concerned about"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "契約する、サインする",
          choices: ["work on", "take place", "look forward to","sign up"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "（物事が）起こる，行われる",
          choices: ["look forward to", "in advance", "due to","take place"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "〜を楽しみにする",
          choices: [ "in advance", "due to", "happy to","look forward to"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "前もって，事前に",
          choices: ["due to", "happy to", "as well as","in advance"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "〜によると",
          choices: ["due to", "happy to", "as well as", "set up"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "喜んでする",
          choices: ["happy to", "as well as", "set up", "no longer"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜と同様に",
          choices: ["as well as", "set up", "no longer", "available for"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜を設置する、設立する",
          choices: ["set up", "no longer", "available for", "both A and B"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "もう，でない，もはや，でない",
          choices: ["no longer", "available for", "both A and B", "refer to"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜を使える，〜が利用できる",
          choices: ["available for", "both A and B", "refer to", "according to"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "AとBの両方，AもBも",
          choices: ["both A and B", "refer to", "according to", "meet with"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜を参照する",
          choices: [ "according to", "refer to","meet with", "be located in"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "〜に会う，〜と面会する",
          choices: [ "be located in", "meet with","apologize for", "in order to"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "〜に位置する，〜にある",
          choices: ["apologize for", "in order to", "be located in", "as a result"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "〜に謝罪する，〜に謝る",
          choices: [ "in order to","apologize for", "as a result", "next to"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "するために",
          choices: ["as a result","in order to",  "next to", "as well"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "結果として，結果",
          choices: [ "next to", "at the end of", "as well","as a result"],
          correctAnswerIndex: 3
        ),
        QuizQuestion(
          question: "の隣，の横",
          choices: [ "at the end of", "as well", "thanks for","next to"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜の最後に",
          choices: ["at the end of", "as well", "thanks for", "at home"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜と同じ，〜と同様に",
          choices: ["as well", "thanks for", "at home", "work for"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜のおかげで，してくれてありがとう",
          choices: ["thanks for", "at home", "work for", "talk to"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "家で",
          choices: ["work for", "at home", "talk to", "apply for"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "〜に勤めている",
          choices: ["talk to", "work for", "apply for", "close to"],
          correctAnswerIndex: 1
        ),
        QuizQuestion(
          question: "〜に話しかける",
          choices: ["talk to", "apply for", "close to", "participate in"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜に申し込む",
          choices: ["apply for", "close to", "participate in", "be satisfied with"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜に近づく，ほぼ",
          choices: ["close to", "participate in", "be satisfied with", "not only A but also B"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜に参加する",
          choices: ["participate in", "be satisfied with", "not only A but also B", "inquire about"],
          correctAnswerIndex: 0
        ),
        QuizQuestion(
          question: "〜に満足する",
          choices: ["not only A but also B", "inquire about", "be satisfied with", "used to"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "AだけでなくBも",
          choices: [ "inquire about", "used to", "not only A but also B","on time"],
          correctAnswerIndex: 2
        ),
        QuizQuestion(
          question: "〜について問い合わせる",
          choices: [ "used to", "on time", "as soon as possible","inquire about"],
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
        QuizView(quizzes: shuffledQuizList, quizLevel: .ToeicJukugoBeginner, authManager: authManager, audioManager: audioManager, isPresenting: $isPresenting, interstitial: sharedInterstitial)
    }
}

struct QuizToeicJukugoBeginnerList_Previews: PreviewProvider {
    static var previews: some View {
        QuizToeicJukugoBeginnerList(isPresenting: .constant(false))
    }
}






