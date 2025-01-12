//
//  QuizBunpouIntermediateList.swift
//  egQuiz
//
//  Created by Apple on 2024/02/09.
//

import SwiftUI

struct QuizBunpouIntermediateList: View {
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
            question: "I _____ a young teacher 1 years ago.",
            choices: ["was", "were", "am", "are"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "I _____ a high school student last year.",
            choices: ["was", "were", "am", "are"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "You _____ a good soccer player 5 years ago.",
            choices: ["were", "was", "am", "are"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "They _____ in the bus this morning.",
            choices: ["were", "was", "am", "are"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "I _____ a teacher 1 years ago.",
            choices: ["was not", "were not", "am not", "are not"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "I _____ a high school student last year.",
            choices: ["was not", "were not", "am not", "are not"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "You _____ a good soccer player 1 years ago.",
            choices: [ "was not", "were not","am not", "are not"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "They _____ in the bus this morning.",
            choices: ["was not", "were not", "am not", "are not"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "I _____ English then.",
            choices: ["were studying", "was studying", "studied", "study"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "You _____ TV then.",
            choices: [ "was watching","were watching", "watched", "watch"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "I and he _____ tennis in the park then.",
            choices: [ "was playing", "played", "were playing","play"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "My mother _____ dinner then.",
            choices: ["were cooking", "cooked", "was cooking", "cook"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "His brother _____ the guitar then.",
            choices: [ "were playing", "played", "was playing","play"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "I _____ a bath then.",
            choices: ["were taking", "took", "take","was taking"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "My sister _____ lunch then.",
            choices: ["were making", "made", "make","was making"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "He _____ visit a museum tomorrow.",
            choices: ["would", "is", "are","will"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "There _____ an apple on the table.",
            choices: ["is", "are", "was", "were"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "I like _____.",
            choices: ["to swim", "swimming", "swim", "swims"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "He enjoys _____ tennis.",
            choices: ["playing", "to play", "play", "plays"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "I _____ he are in the library.",
            choices: ["and", "but", "or", "so"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "You _____ visit England next week.",
            choices: ["will", "would", "is", "are"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "They _____ come to the party tonight.",
            choices: ["will", "would", "is", "are"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "There _____ two bicycles in the store.",
            choices: ["is", "are", "was", "were"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "There _____ a girl in the park.",
            choices: ["is", "are", "was", "were"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "There _____ four girls in the park.",
            choices: ["is", "are", "was", "were"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "We want _____ to New York.",
            choices: ["to swim", "to go", "swimming", "going"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "He tried _____ the box.",
            choices: ["to open", "opening", "to opening", "opens"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "_____ tennis is my hobby.",
            choices: ["To play", "Playing", "Play", "To playing"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "_____ to school is difficult.",
            choices: ["Going", "Go","To go",  "To going"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "She finished _____ homework.",
            choices: ["playing", "to play", "doing", "to doing"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "They gave up _____ the game.",
            choices: ["winning", "to win", "wins", "to winning"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "We practiced _____ cookies.",
            choices: ["making", "to make", "makes", "to making"],
            correctAnswerIndex: 0
          ),
          QuizQuestion(
            question: "I hope _____ a soccer player.",
            choices: ["becoming", "become", "to become", "to becoming"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "You decided _____ him to the party.",
            choices: ["inviting", "invite", "to invite", "to inviting"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "I want _____ at this hotel.",
            choices: [ "staying", "stay", "to stay","to staying"],
            correctAnswerIndex: 2
          ),
          QuizQuestion(
            question: "He wishes _____ his friend again.",
            choices: ["meeting", "meet", "to meeting","to meet" ],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "I would like _____ to New York.",
            choices: ["traveling", "travel", "to traveling","to travel"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "He can speak English _____ you can (speak).",
            choices: [ "but", "or", "so","and"],
            correctAnswerIndex: 3
          ),
          QuizQuestion(
            question: "You can swim _____ I can't (swim).",
            choices: ["and", "but", "or", "so"],
            correctAnswerIndex: 1
          ),
          QuizQuestion(
            question: "You _____ I eat this fruit.",
            choices: ["and", "but", "or", "so"],
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
        QuizView(quizzes: shuffledQuizList, quizLevel: .BunpouIntermediate, authManager: authManager, audioManager: audioManager, isPresenting: $isPresenting, interstitial: sharedInterstitial)
    }
}

struct QuizBunpouIntermediateList_Previews: PreviewProvider {
    static var previews: some View {
        QuizBunpouIntermediateList(isPresenting: .constant(false))
    }
}


