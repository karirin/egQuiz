//
//  QuizToeicTangoBeginnerList.swift
//  egQuiz
//
//  Created by Apple on 2024/02/09.
//

import SwiftUI

struct QuizToeicTangoBeginnerList: View {
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
            question: "会社、仲間",
            choices: ["company", "business", "office", "meeting"],
            correctAnswerIndex: 0
          ),
        QuizQuestion(
            question: "言及する、述べる",
            choices: ["refer", "contact", "provide", "request"],
            correctAnswerIndex: 0
          ),
        QuizQuestion(
            question: "商売",
            choices: ["trade", "business", "project", "marketing"],
            correctAnswerIndex: 1
          ),
        QuizQuestion(
            question: "起こりそうな、可能性が高い",
            choices: ["possible", "likely", "available", "local"],
            correctAnswerIndex: 1
          ),
        QuizQuestion(
            question: "出来事、行事",
            choices: [ "meeting", "event","conference", "project"],
            correctAnswerIndex: 1
          ),
        QuizQuestion(
            question: "製品、産物",
            choices: [ "item", "product","equipment", "article"],
            correctAnswerIndex: 1
          ),
        QuizQuestion(
            question: "情報",
            choices: ["data", "information", "news", "report"],
            correctAnswerIndex: 1
          ),
        QuizQuestion(
            question: "作る、～を～にする",
            choices: ["create", "make", "form", "design"],
            correctAnswerIndex: 1
          ),
        QuizQuestion(
            question: "もし～ならば",
            choices: ["if", "when", "because", "although"],
            correctAnswerIndex: 0
          ),
        QuizQuestion(
            question: "注文する",
            choices: [ "purchase", "request", "order","provide"],
            correctAnswerIndex: 2
          ),
        QuizQuestion(
            question: "計画、事業",
            choices: [ "event", "conference","project", "business"],
            correctAnswerIndex: 2
          ),
        QuizQuestion(
            question: "よりも",
            choices: ["during", "according to", "than", "because"],
            correctAnswerIndex: 2
          ),
        QuizQuestion(
            question: "と連絡をとる／接触、連絡",
            choices: ["refer", "meet", "attend","contact"],
            correctAnswerIndex: 3
          ),
        QuizQuestion(
            question: "事務所",
            choices: ["site", "place", "location","office"],
            correctAnswerIndex: 3
          ),
        QuizQuestion(
            question: "従業員",
            choices: ["manager", "customer", "client","employee"],
            correctAnswerIndex: 3
          ),
        QuizQuestion(
            question: "会議",
            choices: ["conference", "meeting", "event", "gathering"],
            correctAnswerIndex: 0
          ),
        QuizQuestion(
            question: "顧客",
            choices: ["customer", "partner", "supplier", "vendor"],
            correctAnswerIndex: 0
          ),
        QuizQuestion(
            question: "を与える",
            choices: ["provide", "supply", "offer", "give"],
            correctAnswerIndex: 0
          ),
        QuizQuestion(
            question: "を依頼する／依頼",
            choices: ["request", "ask", "demand", "require"],
            correctAnswerIndex: 0
          ),
        QuizQuestion(
            question: "場所、用地",
            choices: ["site", "area", "location", "place"],
            correctAnswerIndex: 0
          ),
        QuizQuestion(
            question: "利用できる、人の手があいている",
            choices: ["accessible", "available", "usable", "free"],
            correctAnswerIndex: 1
          ),
        QuizQuestion(
            question: "地元の",
            choices: [ "regional", "local","national", "global"],
            correctAnswerIndex: 1
          ),
        QuizQuestion(
            question: "を購入する／購入",
            choices: ["buy", "purchase", "acquire", "obtain"],
            correctAnswerIndex: 1
          ),
        QuizQuestion(
            question: "市場調査",
            choices: ["market research", "marketing", "promotion", "sales"],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "建設",
            choices: ["design", "architecture", "construction", "building"],
            correctAnswerIndex: 2
          ),
        QuizQuestion(
            question: "装置、設備",
            choices: [ "machinery", "device","equipment", "tool"],
            correctAnswerIndex: 2
          ),
        QuizQuestion(
            question: "部長、支配人、監督",
            choices: ["director", "supervisor", "manager", "executive"],
            correctAnswerIndex: 2
          ),
        QuizQuestion(
            question: "示された",
            choices: [ "shown", "displayed", "revealed","indicated"],
            correctAnswerIndex: 3
          ),
        QuizQuestion(
            question: "～の間、～を通じて",
            choices: ["throughout", "across", "within","during"],
            correctAnswerIndex: 3
          ),
        QuizQuestion(
            question: "追加の",
            choices: [ "extra", "supplementary", "secondary","additional"],
            correctAnswerIndex: 3
          ),
        QuizQuestion(
            question: "受け取る",
            choices: ["receive", "accept", "obtain", "collect"],
            correctAnswerIndex: 0
          ),
        QuizQuestion(
            question: "位置、場所",
            choices: ["location", "position", "site", "area"],
            correctAnswerIndex: 0
          ),
        QuizQuestion(
            question: "記事、文章",
            choices: ["article", "essay", "report", "document"],
            correctAnswerIndex: 0
          ),
        QuizQuestion(
            question: "設計/設計する",
            choices: ["design", "plan", "construct", "create"],
            correctAnswerIndex: 0
          ),
        QuizQuestion(
            question: "しなければならない",
            choices: ["must", "should", "ought to", "need to"],
            correctAnswerIndex: 0
          ),
        QuizQuestion(
            question: "論評、批評／を論評する",
            choices: ["review", "critique", "analysis", "evaluation"],
            correctAnswerIndex: 0
          ),
        QuizQuestion(
            question: "最近",
            choices: [ "lately","recently", "newly", "shortly"],
            correctAnswerIndex: 1
          ),
        QuizQuestion(
            question: "博物館",
            choices: ["gallery", "museum", "exhibition", "archive"],
            correctAnswerIndex: 1
          ),
        QuizQuestion(
            question: "契約",
            choices: ["agreement", "contract", "deal", "commitment"],
            correctAnswerIndex: 1
          ),
        QuizQuestion(
            question: "日付",
            choices: ["day", "date", "time", "moment"],
            correctAnswerIndex: 1
          ),
        QuizQuestion(
            question: "価格",
            choices: [ "cost", "value","price", "rate"],
            correctAnswerIndex: 2
          ),
        QuizQuestion(
            question: "郵送、配達",
            choices: ["delivery", "mailing","shipping",  "transportation"],
            correctAnswerIndex: 2
          ),
        QuizQuestion(
            question: "なぜなら",
            choices: [ "since", "as", "because","for"],
            correctAnswerIndex: 2
          ),
        QuizQuestion(
            question: "形態／を形成する",
            choices: [ "shape", "structure", "format","form"],
            correctAnswerIndex: 3
          ),
        QuizQuestion(
            question: "会社、仲間",
            choices: [ "business", "office", "meeting","company"],
            correctAnswerIndex: 3
          ),
        QuizQuestion(
            question: "言及する、述べる",
            choices: ["contact", "provide", "request","refer"],
            correctAnswerIndex: 3
          ),
        QuizQuestion(
            question: "商売",
            choices: ["trade", "business", "project", "marketing"],
            correctAnswerIndex: 1
          ),
        QuizQuestion(
            question: "起こりそうな、可能性が高い",
            choices: ["possible", "likely", "available", "local"],
            correctAnswerIndex: 1
          ),
        QuizQuestion(
            question: "を与える",
            choices: [ "supply", "provide","offer", "give"],
            correctAnswerIndex: 1
          ),
        QuizQuestion(
            question: "を依頼する／依頼",
            choices: [ "ask","request", "demand", "require"],
            correctAnswerIndex: 1
          ),
        QuizQuestion(
            question: "場所、用地",
            choices: ["area", "site", "location", "place"],
            correctAnswerIndex: 1
          ),
        QuizQuestion(
            question: "利用できる、人の手があいている",
            choices: ["available", "accessible", "usable", "free"],
            correctAnswerIndex: 0
          ),
        QuizQuestion(
            question: "地元の",
            choices: ["local", "regional", "national", "global"],
            correctAnswerIndex: 0
          ),
        QuizQuestion(
            question: "を購入する／購入",
            choices: ["purchase", "buy", "acquire", "obtain"],
            correctAnswerIndex: 0
          ),
        QuizQuestion(
            question: "市場調査",
            choices: ["marketing", "market research", "promotion", "sales"],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "建設",
            choices: ["construction", "design", "architecture", "building"],
            correctAnswerIndex: 0
          ),
        QuizQuestion(
            question: "装置、設備",
            choices: [ "machinery", "device","equipment", "tool"],
            correctAnswerIndex: 2
          ),
        QuizQuestion(
            question: "部長、支配人、監督",
            choices: [ "director", "supervisor","manager", "executive"],
            correctAnswerIndex: 2
          ),
        QuizQuestion(
            question: "示された",
            choices: ["shown", "displayed","indicated",  "revealed"],
            correctAnswerIndex: 2
          ),
        QuizQuestion(
            question: "～の間、～を通じて",
            choices: [ "throughout", "across","during", "within"],
            correctAnswerIndex: 2
          ),
        QuizQuestion(
            question: "追加の",
            choices: [ "extra", "supplementary", "additional","secondary"],
            correctAnswerIndex: 2
          ),
        QuizQuestion(
            question: "受け取る",
            choices: ["receive", "accept", "obtain", "collect"],
            correctAnswerIndex: 0
          ),
        QuizQuestion(
            question: "位置、場所",
            choices: ["location", "position", "site", "area"],
            correctAnswerIndex: 0
          ),
        QuizQuestion(
            question: "記事、文章",
            choices: ["article", "essay", "report", "document"],
            correctAnswerIndex: 0
          ),
        QuizQuestion(
            question: "設計/設計する",
            choices: ["design", "plan", "construct", "create"],
            correctAnswerIndex: 0
          ),
        QuizQuestion(
            question: "しなければならない",
            choices: [ "should", "ought to", "need to","must"],
            correctAnswerIndex: 3
          ),
        QuizQuestion(
            question: "論評、批評／を論評する",
            choices: [ "critique", "analysis", "evaluation","review"],
            correctAnswerIndex: 3
          ),
        QuizQuestion(
            question: "最近",
            choices: [ "lately", "newly", "shortly","recently"],
            correctAnswerIndex: 3
          ),
        QuizQuestion(
            question: "博物館",
            choices: ["gallery", "exhibition", "archive","museum"],
            correctAnswerIndex: 3
          ),
        QuizQuestion(
            question: "契約",
            choices: ["agreement", "deal", "commitment","contract"],
            correctAnswerIndex: 3
          ),
        QuizQuestion(
            question: "日付",
            choices: ["day", "time","date",  "moment"],
            correctAnswerIndex: 2
          ),
        QuizQuestion(
            question: "価格",
            choices: ["cost", "value", "price", "rate"],
            correctAnswerIndex: 2
          ),
        QuizQuestion(
            question: "郵送、配達",
            choices: ["delivery", "shipping", "mailing", "transportation"],
            correctAnswerIndex: 1
          ),
        QuizQuestion(
            question: "なぜなら",
            choices: [ "since", "because","as", "for"],
            correctAnswerIndex: 1
          ),
        QuizQuestion(
            question: "形態／を形成する",
            choices: ["form", "shape", "structure", "format"],
            correctAnswerIndex: 0
          ),
        QuizQuestion(
            question: "に出席する",
            choices: ["attend", "join", "participate", "engage"],
            correctAnswerIndex: 0
          ),
        QuizQuestion(
            question: "場所",
            choices: ["place", "location", "site", "area"],
            correctAnswerIndex: 0
          ),
        QuizQuestion(
            question: "作った",
            choices: ["made", "built", "created", "formed"],
            correctAnswerIndex: 0
          ),
        QuizQuestion(
            question: "項目、商品",
            choices: ["item", "product", "good", "article"],
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
        QuizView(quizzes: shuffledQuizList, quizLevel: .ToeicTangoBeginner, authManager: authManager, audioManager: audioManager, isPresenting: $isPresenting, interstitial: sharedInterstitial)
    }
}

struct QuizToeicTangoBeginnerList_Previews: PreviewProvider {
    static var previews: some View {
        QuizToeicTangoBeginnerList(isPresenting: .constant(false))
    }
}




