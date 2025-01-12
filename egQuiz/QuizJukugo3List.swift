//
//  QuizJukugo3List.swift
//  egQuiz
//
//  Created by Apple on 2024/02/09.
//

import SwiftUI

struct QuizJukugo3List: View {
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
            question: "たくさんの〜",
            choices: ["a lot of", "ask 人 about", "be(get) excited", "learn about"],
            correctAnswerIndex: 0
        ),
          QuizQuestion(
            question: "正午に",
            choices: ["at noon", "for here", "stand up", "go back to"],
            correctAnswerIndex: 0
        ),
          QuizQuestion(
            question: "〜に興味がある",
            choices: ["a lot of", "be interested in", "walk to", "farewell party"],
            correctAnswerIndex: 1
        ),
          QuizQuestion(
            question: "興奮をする",
            choices: ["by car", "ask 人 for", "be famous for", "be(get) excited"],
            correctAnswerIndex: 3
        ),
          QuizQuestion(
            question: "AとBの間",
            choices: ["be interested in", "between A and B", "on weekends", "and so on"],
            correctAnswerIndex: 1
        ),
          QuizQuestion(
            question: "文化祭",
            choices: ["school festival", "stand up", "arrive at", "be famous for"],
            correctAnswerIndex: 0
        ),
          QuizQuestion(
            question: "座る",
            choices: ["sit down", "take a rest", "be born", "help with"],
            correctAnswerIndex: 0
        ),
          QuizQuestion(
            question: "立つ",
            choices: ["get up", "stand up", "walk to", "go straight"],
            correctAnswerIndex: 1
        ),
          QuizQuestion(
            question: "起きている",
            choices: ["stay up", "wait for", "have a headache", "learn a lot from"],
            correctAnswerIndex: 0
        ),
          QuizQuestion(
            question: "休憩する",
            choices: ["take a rest", "listen to", "ask 人 for", "go back to"],
            correctAnswerIndex: 0
        ),
          QuizQuestion(
            question: "持ち帰り",
            choices: ["to go", "take out", "for here", "walk to"],
            correctAnswerIndex: 1
        ),
          QuizQuestion(
            question: "〜を待つ",
            choices: ["wait for", "go to", "help with", "worry about"],
            correctAnswerIndex: 0
        ),
          QuizQuestion(
            question: "〜へ歩いていく",
            choices: ["walk to", "say again", "stand up", "learn about"],
            correctAnswerIndex: 0
        ),
          QuizQuestion(
            question: "笑顔で",
            choices: ["with a smile", "on your right", "by bus", "sit down"],
            correctAnswerIndex: 0
        ),
          QuizQuestion(
            question: "〜について心配する",
            choices: ["worry about", "be interested in", "have a headache", "be(get) excited"],
            correctAnswerIndex: 0
        ),
          QuizQuestion(
            question: "書く",
            choices: ["write down", "ask 人 about", "arrive at", "be famous for"],
            correctAnswerIndex: 0
        ),
          QuizQuestion(
            question: "いくらかの〜",
            choices: ["a few", "and so on", "by car", "on weekends"],
            correctAnswerIndex: 0
        ),
          QuizQuestion(
            question: "などなど",
            choices: ["and so on", "a few", "be born", "take out"],
            correctAnswerIndex: 0
        ),
          QuizQuestion(
            question: "〜に到着する",
            choices: ["arrive at", "ask 人 for", "be interested in", "learn about"],
            correctAnswerIndex: 0
        ),
          QuizQuestion(
            question: "人に～について聞く",
            choices: ["ask 人 about", "wait for", "go straight", "on your left"],
            correctAnswerIndex: 0
        ),
          QuizQuestion(
            question: "人に求める",
            choices: ["ask 人 for", "be famous for", "sit down", "walk to"],
            correctAnswerIndex: 0
        ),
          QuizQuestion(
            question: "生まれる",
            choices: ["be born", "take a rest", "stand up", "have a headache"],
            correctAnswerIndex: 0
        ),
          QuizQuestion(
            question: "〜で有名である",
            choices: ["be famous for", "learn a lot from", "go back to", "help with"],
            correctAnswerIndex: 0
        ),
          QuizQuestion(
            question: "バスで",
            choices: ["How about", "and so on", "farewell party", "by bus"],
            correctAnswerIndex: 3
        ),
          QuizQuestion(
            question: "車で",
            choices: ["stand up", "by car", "go back to", "junior high school"],
            correctAnswerIndex: 1
        ),
          QuizQuestion(
            question: "〜を確認する",
            choices: ["stand up", "ask 人 about", "ask 人 for", "check ～ out"],
            correctAnswerIndex: 3
        ),
          QuizQuestion(
            question: "小学校",
            choices: ["and so on", "be famous for", "get up", "elementary school"],
            correctAnswerIndex: 3
        ),
          QuizQuestion(
            question: "入学式",
            choices: ["between A and B", "by bus", "entrance ceremony", "go back to"],
            correctAnswerIndex: 2
        ),
          QuizQuestion(
            question: "道の途中で〜",
            choices: ["have a headache", "say again", "How about", "on the way"],
            correctAnswerIndex: 3
        ),
          QuizQuestion(
            question: "週末に",
            choices: ["stand up", "be famous for", "on weekends", "ask 人 for"],
            correctAnswerIndex: 2
        ),
          QuizQuestion(
            question: "左側に",
            choices: ["on your right", "wait for", "on your left", "with a smile"],
            correctAnswerIndex: 2
        ),
          QuizQuestion(
            question: "右側に",
            choices: ["wait for", "on your right", "ask 人 for", "field trip"],
            correctAnswerIndex: 1
        ),
          QuizQuestion(
            question: "もう一度言う",
            choices: ["ask 人 for", "a lot of", "be(get) excited", "say again"],
            correctAnswerIndex: 3
        ),
          QuizQuestion(
            question: "送別会",
            choices: ["be famous for", "school festival", "farewell party", "between A and B"],
            correctAnswerIndex: 2
        ),
          QuizQuestion(
            question: "遠足",
            choices: ["to go", "take a rest", "field trip", "between A and B"],
            correctAnswerIndex: 2
        ),
          QuizQuestion(
            question: "ここで食べる",
            choices: ["learn a lot from", "high school", "worry about", "for here"],
            correctAnswerIndex: 3
        ),
          QuizQuestion(
            question: "起きる",
            choices: ["get up", "go straight", "learn a lot from", "by bus"],
            correctAnswerIndex: 0
        ),
          QuizQuestion(
            question: "〜に戻る",
            choices: ["for here", "How about", "at noon", "go back to"],
            correctAnswerIndex: 3
        ),
          QuizQuestion(
            question: "まっすぐ行く",
            choices: ["school festival", "go straight", "go to", "to go"],
            correctAnswerIndex: 1
        ),
          QuizQuestion(
            question: "〜を見る",
            choices: ["elementary school", "for here", "be(get) excited", "look at"],
            correctAnswerIndex: 3
        ),
          QuizQuestion(
            question: "道の途中で",
            choices: ["go straight", "at noon", "on the way", "ask 人 for"],
            correctAnswerIndex: 2
        ),
          QuizQuestion(
            question: "〜へ行く",
            choices: ["have a headache", "go to", "help with", "high school"],
            correctAnswerIndex: 1
        ),
          QuizQuestion(
            question: "頭痛がする",
            choices: ["listen to", "have a headache", "go to", "How about"],
            correctAnswerIndex: 1
        ),
          QuizQuestion(
            question: "〜を助ける",
            choices: ["help with", "learn about", "junior high school", "learn a lot from"],
            correctAnswerIndex: 0
        ),
          QuizQuestion(
            question: "高校",
            choices: ["How about", "high school", "listen to", "junior high school"],
            correctAnswerIndex: 1
        ),
          QuizQuestion(
            question: "〜はどうですか？",
            choices: ["learn a lot from", "How about", "learn about", "listen to"],
            correctAnswerIndex: 1
        ),
          QuizQuestion(
            question: "聴く",
            choices: ["junior high school", "listen to", "go to", "have a headache"],
            correctAnswerIndex: 1
        ),
          QuizQuestion(
            question: "中学校",
            choices: ["learn about", "learn a lot from", "junior high school", "help with"],
            correctAnswerIndex: 2
        ),
          QuizQuestion(
            question: "〜からたくさん学ぶ",
            choices: ["learn a lot from", "high school", "How about", "listen to"],
            correctAnswerIndex: 0
        ),
          QuizQuestion(
            question: "〜について学ぶ",
            choices: ["learn about", "go to", "have a headache", "help with"],
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
        QuizView(quizzes: shuffledQuizList, quizLevel: .Jukugo3, authManager: authManager, audioManager: audioManager, isPresenting: $isPresenting, interstitial: sharedInterstitial)
    }
}

struct QuizJukugo3List_Previews: PreviewProvider {
    static var previews: some View {
        QuizJukugo3List(isPresenting: .constant(false))
    }
}



