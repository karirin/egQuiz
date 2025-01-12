//
//  QuizJukugoJun1List.swift
//  egQuiz
//
//  Created by Apple on 2024/02/09.
//

import SwiftUI

struct QuizJukugoJun1List: View {
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
            question: "〜を除外する，締め出す",
            choices: ["rule out", "discourage A from B", "give off", "track down"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "AがBするのをやめさせる",
            choices: ["discourage A from B", "wash away", "air out", "pin down"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "〜を放つ，放出する",
            choices: ["give off", "try out", "hold off", "fall for"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "〜の跡を辿る",
            choices: [ "miss out", "track down","drag on", "to begin with"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "〜を洗い流す",
            choices: [ "defend A against B", "wash away","life expectancy", "after all"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "〜が乾く，乾燥する",
            choices: ["for instance", "air out", "deal with", "in contrast"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "〜をピンで留める，押さえつける",
            choices: [ "in response to", "identify A as B", "pin down","pass on"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "〜を試す",
            choices: ["in place of", "in short", "try out", "in other words"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "〜を寄せ付けない，引き離す",
            choices: [ "tuition fee", "specialize in","hold off", "feed on"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "〜に夢中になる，騙される",
            choices: [ "send in", "rely on", "bring about","fall for"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "機会を逃す，見落とす",
            choices: ["drag on", "to begin with", "defend A against B","miss out"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "長引く，延々と続く",
            choices: ["life expectancy", "after all", "for instance","drag on" ],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "最初に，最初から",
            choices: ["to begin with", "deal with", "in contrast", "in response to"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "BからAを守る",
            choices: ["defend A against B", "identify A as B", "pass on", "in place of"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "余命，寿命",
            choices: ["life expectancy", "in short", "in other words", "tuition fee"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "結局，最後は",
            choices: ["after all", "specialize in", "feed on", "send in"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "例えば",
            choices: ["rely on","for instance",  "bring about", "in exchange"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "〜を扱う，論じる",
            choices: [ "in spite of","deal with", "run down", "blend in"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "対照的に",
            choices: [ "brush off", "cut down", "in contrast","feed off"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "〜に応じて，〜に反応して",
            choices: ["go under", "knock down", "in response to", "pass for"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "〜の代わりに",
            choices: ["pile in", "pull over", "bank on","in place of"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "つまり、要するに",
            choices: ["build up", "cover for", "dish out","in short"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "言い換えれば，他の言葉で言うと",
            choices: ["fit into", "pass off", "pass over","in other words"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "授業料",
            choices: ["tuition fee", "blend in", "brush off", "cut down"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "〜を専門にする，〜に特化する",
            choices: ["specialize in", "feed off", "go under", "knock down"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "〜にエサをやる",
            choices: ["feed on", "pass for", "pile in", "pull over"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "〜に送る",
            choices: ["bank on", "send in", "build up", "cover for"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "〜に頼る，〜を当てにする",
            choices: ["dish out","rely on",  "fit into", "pass off"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "〜を引き起こす，発生させる",
            choices: [ "pass over", "run down", "bring about","blend in"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "引き換えに，交換として",
            choices: ["brush off", "cut down", "in exchange", "feed off"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "〜にも関わらず",
            choices: [ "go under", "knock down", "pass for","in spite of"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "流れ落ちる，荒廃する",
            choices: ["pile in", "pull over", "bank on","run down"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "溶け合う，調和する",
            choices: ["blend in", "build up", "cover for", "dish out"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "〜をすげなく断る，無視する",
            choices: ["brush off", "fit into", "pass off", "pass over"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "〜を減らす，削減する",
            choices: ["cut down", "feed off", "go under", "knock down"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "〜から取って食べる，情報を得る",
            choices: ["feed off", "pass for", "pile in", "pull over"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "失敗する，破産する",
            choices: ["bank on", "go under", "build up", "cover for"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "〜を取り壊す，打ち倒す",
            choices: ["dish out", "knock down", "fit into", "pass off"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "〜として通る，通過する",
            choices: ["run down", "blend in","pass for",  "brush off"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "どっと中に入る",
            choices: ["cut down", "feed off", "pile in", "go under"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "車を止める",
            choices: ["knock down", "pass for", "pile in","pull over",],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "〜を当てにする，頼る",
            choices: ["build up", "cover for", "dish out","bank on"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "増大する，築き上げる",
            choices: ["build up", "fit into", "pass off", "pass over"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "〜を覆う，代理となる",
            choices: ["cover for", "feed off", "go under", "knock down"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "盛り付ける，配膳する",
            choices: ["pass for","dish out",  "pile in", "pull over"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "〜に溶け込む，調和する",
            choices: ["pass over", "run down", "fit into", "blend in"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "次第に消える，うまくやる",
            choices: ["brush off", "cut down", "feed off","pass off"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "〜を無視する，通り越す",
            choices: ["go under", "knock down", "pass for","pass over"],
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
        QuizView(quizzes: shuffledQuizList, quizLevel: .JukugoJun1, authManager: authManager, audioManager: audioManager, isPresenting: $isPresenting, interstitial: sharedInterstitial)
    }
}

struct QuizJukugoJun1List_Previews: PreviewProvider {
    static var previews: some View {
        QuizJukugoJun1List(isPresenting: .constant(false))
    }
}

