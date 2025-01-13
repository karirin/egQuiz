//
//  StoryListView.swift
//  it
//
//  Created by Apple on 2024/11/16.
//

import SwiftUI

struct StoryTangoListView: View {
    @Binding var isPresenting: Bool

    // 英単語３級、準２級、２級まで入ってる
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
         ),
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
    @ObservedObject var viewModel: PositionViewModel
    @State private var shuffledQuizList: [QuizQuestion]
    private var authManager = AuthManager()
    private var audioManager = AudioManager.shared
    let monsterName: String
    let backgroundName: String
    
    init(isPresenting: Binding<Bool>,monsterName: String,backgroundName: String, viewModel: PositionViewModel) {  //初期化メソッドに user を追加
        _isPresenting = isPresenting
        self.monsterName = monsterName
        self.backgroundName = backgroundName
        self.viewModel = viewModel
        _shuffledQuizList = State(initialValue: quizBeginnerList.shuffled())
    }
    
    @StateObject var sharedInterstitial = Interstitial()
    var body: some View {
        StoryQuizView(viewModel: viewModel, quizzes: shuffledQuizList, quizLevel: .Tango3, monsterName: monsterName, backgroundName: backgroundName, authManager: authManager, audioManager: audioManager, isPresenting: $isPresenting, interstitial: sharedInterstitial)
    }
}

struct StoryTangoListView_Previews: PreviewProvider {
    static var previews: some View {
        @State var selectedUser = User(id: "1", userName: "SampleUser", level: 1, experience: 100, avatars: [], userMoney: 1000, userHp: 100, userAttack: 20, userFlag: 0, adminFlag: 0, rankMatchPoint: 100, rank: 1)

        StoryTangoListView(isPresenting: .constant(false), monsterName: "モンスター1", backgroundName: "背景1", viewModel: PositionViewModel.shared)
    }
}



