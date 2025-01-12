//
//  QuizBunpouAdvancedList.swift
//  egQuiz
//
//  Created by Apple on 2024/02/09.
//

import SwiftUI

struct QuizBunpouAdvancedList: View {
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
           question: "He _____ to Japan three times.",
           choices: ["has been", "had been", "was", "is"],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "I _____ him three times.",
           choices: ["have met", "had met", "met", "meets"],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "I _____ to Kyoto twice.",
           choices: ["have been", "had been", "was", "am"],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "She _____ tennis once.",
           choices: ["has played", "had played", "played", "plays"],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "My brother _____ to China.",
           choices: ["has gone", "had gone", "went", "goes"],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "My mother _____ dinner.",
           choices: ["has just cooked", "had just cooked", "just cooked", "cooks"],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "The plane _____.",
           choices: ["has just arrived", "had just arrived", "just arrived", "arrives"],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "I _____ my homework yet.",
           choices: ["had not finished", "have not finished", "not finished", "finishes"],
           correctAnswerIndex: 1
         ),
         QuizQuestion(
           question: "He _____ to school.",
           choices: ["had not come", "has not come", "not came", "comes"],
           correctAnswerIndex: 1
         ),
         QuizQuestion(
           question: "I _____ to Osaka.",
           choices: [ "had never been","have never been", "never was", "am never"],
           correctAnswerIndex: 1
         ),
         QuizQuestion(
           question: "_____ you _____ homework?",
           choices: [ "Has, finished", "Do, finish", "Have, finished","Did, finish"],
           correctAnswerIndex: 2
         ),
         QuizQuestion(
           question: "I _____ in Japan for 10 years.",
           choices: [ "had lived", "lived", "have lived","lives"],
           correctAnswerIndex: 2
         ),
         QuizQuestion(
           question: "a _____ baby",
           choices: ["slept", "sleep","sleeping",  "sleeps"],
           correctAnswerIndex: 2
         ),
         QuizQuestion(
           question: "I saw a baby _____ on bed.",
           choices: ["slept", "sleep", "sleeps","sleeping"],
           correctAnswerIndex: 3
         ),
         QuizQuestion(
           question: "a _____ bicycle",
           choices: [ "found", "finding", "finds","found"],
           correctAnswerIndex: 3
         ),
         QuizQuestion(
           question: "This is a bicycle _____ in the park.",
           choices: [ "founded", "finding", "finds","found"],
           correctAnswerIndex: 3
         ),
         QuizQuestion(
           question: "I have a friend _____ lives in Canada.",
           choices: ["who", "whom", "whose", "which"],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "a dog _____ I saw at a park.",
           choices: ["which", "who", "whom", "whose"],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "I _____ him.",
           choices: ["have not met", "had not met", "not met", "do not meet"],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "I _____ to Kyoto.",
           choices: ["have not been", "had not been", "not been", "do not be"],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "_____ he _____ to school?",
           choices: ["Has, come", "Have, come", "Did, came", "Does, come"],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "_____ you _____ to Osaka?",
           choices: [ "Has, ever been", "Have, ever been","Do, ever be", "Did, ever been"],
           correctAnswerIndex: 1
         ),
         QuizQuestion(
           question: "_____ you _____ him?",
           choices: [ "Has, met", "Have, met","Do, meet", "Did, met"],
           correctAnswerIndex: 1
         ),
         QuizQuestion(
           question: "He _____ in China since last year.",
           choices: ["have lived","has lived",  "lived", "was living"],
           correctAnswerIndex: 1
         ),
         QuizQuestion(
           question: "You _____ the book for 2 weeks.",
           choices: ["has been reading", "are reading", "have been reading", "were reading"],
           correctAnswerIndex: 2
         ),
         QuizQuestion(
           question: "My brother _____ soccer since he was a child.",
           choices: ["have played", "played","has played",  "was playing"],
           correctAnswerIndex: 2
         ),
         QuizQuestion(
           question: "They _____ lunch for 2 hours.",
           choices: [ "has been eating", "are eating", "have been eating","were eating"],
           correctAnswerIndex: 2
         ),
         QuizQuestion(
           question: "a _____ man",
           choices: ["walked", "walk", "walks","walking"],
           correctAnswerIndex: 3
         ),
         QuizQuestion(
           question: "a _____ boy",
           choices: [ "cried", "cry", "cries","crying"],
           correctAnswerIndex: 3
         ),
         QuizQuestion(
           question: "He saw a man _____ to the library.",
           choices: [ "walked", "walk", "walks","walking"],
           correctAnswerIndex: 3
         ),
         QuizQuestion(
           question: "I know a baby _____ on chair.",
           choices: ["crying", "cried", "cry", "cries"],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "a _____ letter",
           choices: ["written", "wrote", "write", "writes"],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "This is language _____ in this country.",
           choices: ["spoken", "spoke", "speak", "speaks"],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "She has a brother _____ plays baseball.",
           choices: ["who", "whom", "whose", "which"],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "I have a friend _____ father is a doctor.",
           choices: ["who", "whom", "whose", "which"],
           correctAnswerIndex: 2
         ),
         QuizQuestion(
           question: "I have a pen _____ is big.",
           choices: ["who", "whom", "whose", "which"],
           correctAnswerIndex: 3
         ),
         QuizQuestion(
           question: "the girl _____ I like the best.",
           choices: ["which", "who", "whom", "that"],
           correctAnswerIndex: 3
         ),
         QuizQuestion(
           question: "I have a red pen _____ I like the most.",
           choices: ["which", "who", "whom", "that"],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "You have a car _____ I think very nice.",
           choices: ["which", "who", "whom", "that"],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "They have a dog _____ I saw at a park.",
           choices: ["which", "who", "whom", "that"],
           correctAnswerIndex: 3
         ),
         QuizQuestion(
           question: "that house _____ I lived in before.",
           choices: ["who", "which", "whom", "that"],
           correctAnswerIndex: 1
         ),
         QuizQuestion(
           question: "I know a girl _____ in the pool.",
           choices: ["swims", "swimming", "swim", "to swim"],
           correctAnswerIndex: 1
         ),
         QuizQuestion(
           question: "_____ language",
           choices: [ "speaking", "spoken","speak", "speaks"],
           correctAnswerIndex: 1
         ),
         QuizQuestion(
           question: "a _____ letter",
           choices: [ "writing", "written","write", "writes"],
           correctAnswerIndex: 1
         ),
         QuizQuestion(
           question: "This is a bicycle _____ in the park.",
           choices: ["finding", "found", "find", "finds"],
           correctAnswerIndex: 1
         ),
         QuizQuestion(
           question: "I have a friend _____ lives in Canada.",
           choices: [ "whom", "whose", "who","which"],
           correctAnswerIndex: 2
         ),
         QuizQuestion(
           question: "She has a brother _____ plays baseball.",
           choices: ["whom", "whose", "who", "which"],
           correctAnswerIndex: 2
         ),
         QuizQuestion(
           question: "I have a friend _____ father is a doctor.",
           choices: ["who", "whom", "whose", "which"],
           correctAnswerIndex: 2
         ),
         QuizQuestion(
           question: "I have a pen _____ is big.",
           choices: ["who", "whom", "whose", "which"],
           correctAnswerIndex: 3
         ),
         QuizQuestion(
           question: "a dog _____ I saw at a park.",
           choices: ["which", "who", "whom", "that"],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "the girl _____ I like the best.",
           choices: ["which", "who", "whom", "that"],
           correctAnswerIndex: 3
         ),
         QuizQuestion(
           question: "that house _____ I lived in before.",
           choices: ["which", "who", "whom", "that"],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "I have a red pen _____ I like the most.",
           choices: ["which", "who", "whom", "that"],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "You have a car _____ I think very nice.",
           choices: ["which", "who", "whom", "that"],
           correctAnswerIndex: 0
         ),
         QuizQuestion(
           question: "They have a dog _____ I saw at a park.",
           choices: ["which", "who", "whom", "that"],
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
        QuizView(quizzes: shuffledQuizList, quizLevel: .BunpouAdvanced, authManager: authManager, audioManager: audioManager, isPresenting: $isPresenting, interstitial: sharedInterstitial)
    }
}

struct QuizBunpouAdvancedList_Previews: PreviewProvider {
    static var previews: some View {
        QuizBunpouAdvancedList(isPresenting: .constant(false))
    }
}



