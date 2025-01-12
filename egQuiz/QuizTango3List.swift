//
//  QuizTangoJun2List.swift
//  egQuiz
//
//  Created by Apple on 2024/02/09.
//

import SwiftUI

struct QuizTango3List: View {
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
            question: "重要な",
            choices: [
                "difficult",
                "important",
                "interesting",
                "necessary"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "理解する",
            choices: [
                "remember",
                "understand",
                "decide",
                "describe"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "難しい",
            choices: [
                "easy",
                "simple",
                "difficult",
                "funny"
            ],
            correctAnswerIndex: 2
        ),
        QuizQuestion(
            question: "面白い",
            choices: [
                "boring",
                "interesting",
                "tired",
                "sad"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "必要な",
            choices: [
                "unnecessary",
                "optional",
                "necessary",
                "optional"
            ],
            correctAnswerIndex: 2
        ),
        QuizQuestion(
            question: "決める",
            choices: [
                "forget",
                "decide",
                "look",
                "run"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "提案する",
            choices: [
                "suggest",
                "ignore",
                "remove",
                "delete"
            ],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "覚えている",
            choices: [
                "forget",
                "remember",
                "lose",
                "ignore"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "家族",
            choices: [
                "family",
                "friend",
                "teacher",
                "student"
            ],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "友達",
            choices: [
                "enemy",
                "stranger",
                "friend",
                "neighbor"
            ],
            correctAnswerIndex: 2
        ),
        QuizQuestion(
            question: "国",
            choices: [
                "city",
                "country",
                "village",
                "town"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "都市",
            choices: [
                "country",
                "village",
                "city",
                "forest"
            ],
            correctAnswerIndex: 2
        ),
        QuizQuestion(
            question: "天気",
            choices: [
                "weather",
                "climate",
                "season",
                "temperature"
            ],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "休日",
            choices: [
                "workday",
                "holiday",
                "weekday",
                "Monday"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "質問",
            choices: [
                "answer",
                "question",
                "reply",
                "response"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "答え",
            choices: [
                "question",
                "answer",
                "problem",
                "solution"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "例",
            choices: [
                "example",
                "problem",
                "solution",
                "question"
            ],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "説明する",
            choices: [
                "describe",
                "hide",
                "cover",
                "ignore"
            ],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "情報",
            choices: [
                "information",
                "ignorance",
                "knowledge",
                "data"
            ],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "経験",
            choices: [
                "experience",
                "theory",
                "idea",
                "concept"
            ],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "可能な",
            choices: [
                "impossible",
                "possible",
                "unlikely",
                "difficult"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "学校",
            choices: [
                "school",
                "hospital",
                "library",
                "restaurant"
            ],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "先生",
            choices: [
                "student",
                "teacher",
                "principal",
                "janitor"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "勉強する",
            choices: [
                "play",
                "study",
                "sleep",
                "eat"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "図書館",
            choices: [
                "museum",
                "library",
                "cinema",
                "park"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "病院",
            choices: [
                "clinic",
                "hospital",
                "pharmacy",
                "dentist"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "公園",
            choices: [
                "garden",
                "park",
                "stadium",
                "playground"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "買う",
            choices: [
                "sell",
                "buy",
                "rent",
                "borrow"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "売る",
            choices: [
                "buy",
                "sell",
                "trade",
                "exchange"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "食べる",
            choices: [
                "drink",
                "eat",
                "cook",
                "bake"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "飲む",
            choices: [
                "eat",
                "drink",
                "chew",
                "swallow"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "走る",
            choices: [
                "walk",
                "run",
                "jump",
                "sit"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "歩く",
            choices: [
                "run",
                "walk",
                "skip",
                "crawl"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "見る",
            choices: [
                "hear",
                "see",
                "smell",
                "taste"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "聞く",
            choices: [
                "see",
                "listen",
                "touch",
                "feel"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "話す",
            choices: [
                "listen",
                "speak",
                "write",
                "read"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "書く",
            choices: [
                "read",
                "write",
                "draw",
                "paint"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "読む",
            choices: [
                "write",
                "read",
                "listen",
                "speak"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "遊ぶ",
            choices: [
                "work",
                "play",
                "study",
                "rest"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "働く",
            choices: [
                "sleep",
                "work",
                "eat",
                "drink"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "休む",
            choices: [
                "work",
                "rest",
                "play",
                "study"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "旅行",
            choices: [
                "travel",
                "stay",
                "visit",
                "arrive"
            ],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "時間",
            choices: [
                "hour",
                "minute",
                "time",
                "second"
            ],
            correctAnswerIndex: 2
        ),
        QuizQuestion(
            question: "友人",
            choices: [
                "enemy",
                "colleague",
                "friend",
                "neighbor"
            ],
            correctAnswerIndex: 2
        ),
        QuizQuestion(
            question: "食事",
            choices: [
                "snack",
                "meal",
                "drink",
                "dessert"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "服",
            choices: [
                "shoes",
                "clothes",
                "hat",
                "accessories"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "天気",
            choices: [
                "weather",
                "climate",
                "season",
                "temperature"
            ],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "季節",
            choices: [
                "weather",
                "climate",
                "season",
                "temperature"
            ],
            correctAnswerIndex: 2
        ),
        QuizQuestion(
            question: "電車",
            choices: [
                "bus",
                "car",
                "bicycle",
                "train"
            ],
            correctAnswerIndex: 3
        ),
        QuizQuestion(
            question: "自転車",
            choices: [
                "bus",
                "car",
                "bicycle",
                "train"
            ],
            correctAnswerIndex: 2
        ),
        QuizQuestion(
            question: "車",
            choices: [
                "bus",
                "car",
                "bicycle",
                "train"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "バス",
            choices: [
                "bus",
                "car",
                "bicycle",
                "train"
            ],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "店",
            choices: [
                "shop",
                "office",
                "home",
                "school"
            ],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "会社",
            choices: [
                "shop",
                "office",
                "home",
                "school"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "家",
            choices: [
                "shop",
                "office",
                "home",
                "school"
            ],
            correctAnswerIndex: 2
        ),
        QuizQuestion(
            question: "友達と話す",
            choices: [
                "talk with friends",
                "listen to friends",
                "write to friends",
                "read with friends"
            ],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "手紙を書く",
            choices: [
                "write a letter",
                "read a letter",
                "send a letter",
                "receive a letter"
            ],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "写真を撮る",
            choices: [
                "draw a picture",
                "take a photo",
                "paint a picture",
                "edit a photo"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "料理する",
            choices: [
                "cook",
                "bake",
                "fry",
                "boil"
            ],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "掃除する",
            choices: [
                "cook",
                "clean",
                "wash",
                "organize"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "運動する",
            choices: [
                "exercise",
                "sleep",
                "eat",
                "read"
            ],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "買い物する",
            choices: [
                "buy things",
                "sell things",
                "give things",
                "take things"
            ],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "映画を見る",
            choices: [
                "watch a movie",
                "read a movie",
                "write a movie",
                "listen to a movie"
            ],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "音楽を聴く",
            choices: [
                "listen to music",
                "play music",
                "sing music",
                "write music"
            ],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "絵を描く",
            choices: [
                "draw a picture",
                "paint a picture",
                "take a picture",
                "see a picture"
            ],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "電話する",
            choices: [
                "send a message",
                "call on the phone",
                "write an email",
                "text a friend"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "仕事",
            choices: [
                "study",
                "work",
                "play",
                "rest"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "休暇",
            choices: [
                "holiday",
                "workday",
                "weekday",
                "Monday"
            ],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "料理",
            choices: [
                "cooking",
                "cleaning",
                "reading",
                "writing"
            ],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "勉強",
            choices: [
                "playing",
                "studying",
                "sleeping",
                "eating"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "運動",
            choices: [
                "sleep",
                "exercise",
                "eat",
                "read"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "旅行する",
            choices: [
                "stay",
                "travel",
                "visit",
                "arrive"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "宿題",
            choices: [
                "homework",
                "playtime",
                "breaktime",
                "lunchtime"
            ],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "試験",
            choices: [
                "quiz",
                "exam",
                "assignment",
                "project"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "成績",
            choices: [
                "grade",
                "score",
                "mark",
                "all of the above"
            ],
            correctAnswerIndex: 3
        ),
        QuizQuestion(
            question: "図る",
            choices: [
                "plan",
                "measure",
                "draw",
                "calculate"
            ],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "目標",
            choices: [
                "goal",
                "task",
                "duty",
                "responsibility"
            ],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "挑戦",
            choices: [
                "challenge",
                "success",
                "failure",
                "effort"
            ],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "成功",
            choices: [
                "failure",
                "success",
                "effort",
                "attempt"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "失敗",
            choices: [
                "success",
                "failure",
                "achievement",
                "victory"
            ],
            correctAnswerIndex: 1
        ),
        QuizQuestion(
            question: "努力",
            choices: [
                "effort",
                "laziness",
                "indifference",
                "apathy"
            ],
            correctAnswerIndex: 0
        ),
        QuizQuestion(
            question: "挑戦する",
            choices: [
                "accept",
                "ignore",
                "challenge",
                "avoid"
            ],
            correctAnswerIndex: 2
        ),


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
        QuizView(quizzes: shuffledQuizList, quizLevel: .Tango3, authManager: authManager, audioManager: audioManager, isPresenting: $isPresenting, interstitial: sharedInterstitial)
    }
}

struct QuizTango3List_Previews: PreviewProvider {
    static var previews: some View {
        QuizTango3List(isPresenting: .constant(false))
    }
}
