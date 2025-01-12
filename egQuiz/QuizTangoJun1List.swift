//
//  QuizTangoJun1List.swift
//  egQuiz
//
//  Created by Apple on 2024/02/09.
//

import SwiftUI

struct QuizTangoJun1List: View {
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
            question: "置き換えられる，代わりのある",
            choices: ["conclusive", "replaceable", "tame", "loyalty"],
            correctAnswerIndex: 1
        ),
         QuizQuestion(
            question: "火花，きらめき",
            choices: ["fertilizer", "spark", "slave", "drawer"],
            correctAnswerIndex: 1
        ),
         QuizQuestion(
            question: "同情，あわれみ",
            choices: ["pity", "pollution", "afford to", "temper"],
            correctAnswerIndex: 0
        ),
         QuizQuestion(
            question: "厳密に，厳しく",
            choices: ["cruel", "chimney", "sympathetic", "strictly"],
            correctAnswerIndex: 3
        ),
         QuizQuestion(
            question: "明るく，輝いて",
            choices: ["spectator", "brightly", "bark", "quarrel"],
            correctAnswerIndex: 1
        ),
         QuizQuestion(
            question: "思いやりのある，共感的な",
            choices: ["sympathetic", "bark", "tightly", "applause"],
            correctAnswerIndex: 0
        ),
         QuizQuestion(
            question: "煙突",
            choices: ["thumb", "pat", "chimney", "spectator"],
            correctAnswerIndex: 2
        ),
         QuizQuestion(
            question: "気性，かんしゃく",
            choices: ["drawer", "forgive", "temper", "wooden"],
            correctAnswerIndex: 2
        ),
         QuizQuestion(
            question: "口論，口げんか",
            choices: ["blank", "quarrel", "tender", "spectator"],
            correctAnswerIndex: 1
        ),
         QuizQuestion(
            question: "吠える/木の皮",
            choices: ["blank", "bark", "spark", "spectator"],
            correctAnswerIndex: 1
        ),
         QuizQuestion(
            question: "忠誠，誠実",
            choices: ["differently", "drawer", "loyalty", "lately"],
            correctAnswerIndex: 2
        ),
         QuizQuestion(
            question: "意図，目的",
            choices: ["temper", "brightly", "applause", "intent"],
            correctAnswerIndex: 3
        ),
         QuizQuestion(
            question: "最近，近ごろ",
            choices: ["spontaneous", "loyalty", "spark", "lately"],
            correctAnswerIndex: 3
        ),
         QuizQuestion(
            question: "に侵入する，を侵略する",
            choices: ["invade", "lately", "informal", "quarrel"],
            correctAnswerIndex: 0
        ),
         QuizQuestion(
            question: "優しい/世話人",
            choices: ["tender", "wooden", "afford to", "loyalty"],
            correctAnswerIndex: 0
        ),
         QuizQuestion(
            question: "自発的な，任意の",
            choices: ["spontaneous", "spark", "quarrel", "strictly"],
            correctAnswerIndex: 0
        ),
         QuizQuestion(
            question: "を許す，大目に見る",
            choices: ["forgive", "pollution", "differently", "sincerely"],
            correctAnswerIndex: 0
        ),
         QuizQuestion(
            question: "名声，高名",
            choices: ["spontaneous", "fame", "blank", "sympathy"],
            correctAnswerIndex: 1
        ),
         QuizQuestion(
            question: "控えめな，謙虚な",
            choices: ["conclusive", "chimney", "modest", "strictly"],
            correctAnswerIndex: 2
        ),
         QuizQuestion(
            question: "親指",
            choices: ["applause", "spontaneous", "thumb", "quarrel"],
            correctAnswerIndex: 2
        ),
         QuizQuestion(
            question: "強盗",
            choices: ["afford to", "forgive", "invade", "robber"],
            correctAnswerIndex: 3
        ),
         QuizQuestion(
            question: "ひどく，ものすごく",
            choices: ["loyalty", "terribly", "differently", "tender"],
            correctAnswerIndex: 1
        ),
         QuizQuestion(
            question: "引き出し",
            choices: ["wooden", "brightly", "drawer", "informal"],
            correctAnswerIndex: 2
        ),
         QuizQuestion(
            question: "非公式な，略式の",
            choices: ["informal", "conclusive", "bark", "thumb"],
            correctAnswerIndex: 0
        ),
         QuizQuestion(
            question: "決定的な、結論的な",
            choices: ["drawer", "robber", "fertilizer", "conclusive"],
            correctAnswerIndex: 3
        ),
         QuizQuestion(
            question: "肥料，化学肥料",
            choices: ["fertilizer", "thumb", "pity", "holistic"],
            correctAnswerIndex: 0
        ),
         QuizQuestion(
            question: "全体論の",
            choices: ["holistic", "fertilizer", "thumb", "pity"],
            correctAnswerIndex: 0
        ),
         QuizQuestion(
            question: "心から，真心こめて",
            choices: ["pity", "sincerely", "afford to", "wooden"],
            correctAnswerIndex: 1
        ),
         QuizQuestion(
            question: "同情，共感",
            choices: ["sympathy", "mend", "intent", "thumb"],
            correctAnswerIndex: 0
        ),
         QuizQuestion(
            question: "軽くたたく，軽く打つ",
            choices: ["pat", "differently", "fame", "modest"],
            correctAnswerIndex: 0
        ),
         QuizQuestion(
            question: "異なって，異なる",
            choices: ["differently", "oxygen", "sympathetic", "forgive"],
            correctAnswerIndex: 0
        ),
         QuizQuestion(
            question: "を直す，修繕する",
            choices: [ "bark", "strictly", "mend","cruel"],
            correctAnswerIndex: 2
        ),
         QuizQuestion(
            question: "汚染",
            choices: ["bark", "terribly", "pollution", "strictly"],
            correctAnswerIndex: 2
        ),
         QuizQuestion(
            question: "しっかりと，きつく",
            choices: ["cruel", "tightly", "temper", "lately"],
            correctAnswerIndex: 1
        ),
         QuizQuestion(
            question: "残酷な，無慈悲な",
            choices: ["spark", "cruel", "tightly", "strictly"],
            correctAnswerIndex: 1
        ),
         QuizQuestion(
            question: "酸素",
            choices: ["mend", "tightly", "slave","oxygen"],
            correctAnswerIndex: 3
        ),
         QuizQuestion(
            question: "拍手、賞賛",
            choices: ["conclusive", "tame", "strictly","applause"],
            correctAnswerIndex: 3
        ),
         QuizQuestion(
            question: "見物人，観客",
            choices: ["applause", "robber", "bark","spectator"],
            correctAnswerIndex: 3
        ),
         QuizQuestion(
            question: "する余裕がある",
            choices: ["afford to", "slave", "fertilizer", "blank"],
            correctAnswerIndex: 0
        ),
         QuizQuestion(
            question: "奴隷",
            choices: ["slave", "quarrel", "drawer", "spark"],
            correctAnswerIndex: 0
        ),
         QuizQuestion(
            question: "木製の，木造の",
            choices: ["wooden", "applause", "modest", "oxygen"],
            correctAnswerIndex: 0
        ),
         QuizQuestion(
            question: "人に慣れた/飼いならす",
            choices: ["tame", "brightly", "sincerely", "loyalty"],
            correctAnswerIndex: 0
        ),
         QuizQuestion(
            question: "白紙の，空白の",
            choices: ["pollution", "blank", "replaceable", "wooden"],
            correctAnswerIndex: 1
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
        QuizView(quizzes: shuffledQuizList, quizLevel: .TangoJun1, authManager: authManager, audioManager: audioManager, isPresenting: $isPresenting, interstitial: sharedInterstitial)
    }
}

struct QuizTangoJun1List_Previews: PreviewProvider {
    static var previews: some View {
        QuizTangoJun1List(isPresenting: .constant(false))
    }
}

