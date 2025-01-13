//
//  StoryInfoListView.swift
//  it
//
//  Created by Apple on 2024/12/02.
//

import SwiftUI

struct StoryJukugoListView: View {
    @Binding var isPresenting: Bool

    // 英熟語３級、準２級、２級まで入ってる
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
              ),
         QuizQuestion(
                  question: "〜が怖い",
                  choices: ["try to", "take it back", "on the wall", "be scared of"],
                  correctAnswerIndex: 3
                ),
                QuizQuestion(
                  question: "折り返し電話する",
                  choices: ["keep in touch", "even so", "call back", "leave for"],
                  correctAnswerIndex: 2
                ),
                QuizQuestion(
                  question: "〜に決める",
                  choices: ["try to", "live abroad", "decide to", "too ～ for"],
                  correctAnswerIndex: 2
                ),
                QuizQuestion(
                  question: "それでも",
                  choices: ["try to", "even so", "all day long", "most of"],
                  correctAnswerIndex: 1
                ),
                QuizQuestion(
                  question: "毎分ごとに",
                  choices: ["from ～ to ～", "keep in touch", "agree to", "every minutes"],
                  correctAnswerIndex: 3
                ),
                QuizQuestion(
                  question: "〜に賛成である",
                  choices: ["even so", "work for", "agree with", "an average of"],
                  correctAnswerIndex: 2
                ),
                QuizQuestion(
                  question: "一日中",
                  choices: ["all day long", "leave for", "from now on", "look after"],
                  correctAnswerIndex: 0
                ),
                QuizQuestion(
                  question: "〜の至る所に",
                  choices: ["all over", "decide to", "foreign language", "all day long"],
                  correctAnswerIndex: 0
                ),
                QuizQuestion(
                  question: "〜の平均",
                  choices: ["look after", "call back", "every minutes", "an average of"],
                  correctAnswerIndex: 3
                ),
                QuizQuestion(
                  question: "〜の結果",
                  choices: ["try on", "as a result of", "take it back", "from the experience"],
                  correctAnswerIndex: 1
                ),
                QuizQuestion(
                  question: "外国語",
                  choices: ["agree with", "foreign language", "call back", "try on"],
                  correctAnswerIndex: 1
                ),
                QuizQuestion(
                  question: "～から～まで",
                  choices: ["from ～ to ～", "agree to", "stand by", "take care of"],
                  correctAnswerIndex: 0
                ),
                QuizQuestion(
                  question: "これから",
                  choices: ["from now on", "search for", "get tired", "be scared of"],
                  correctAnswerIndex: 0
                ),
                QuizQuestion(
                  question: "経験から",
                  choices: ["from the experience", "one day", "all day long", "as a result of"],
                  correctAnswerIndex: 0
                ),
                QuizQuestion(
                  question: "うまくやる",
                  choices: ["try hard", "get along with", "live abroad", "make own bed"],
                  correctAnswerIndex: 1
                ),
                QuizQuestion(
                  question: "疲れる",
                  choices: ["show 人 around", "get tired", "take it back", "work for"],
                  correctAnswerIndex: 1
                ),
                QuizQuestion(
                  question: "外国に行く",
                  choices: ["live abroad", "go abroad", "take care of", "think of"],
                  correctAnswerIndex: 1
                ),
                QuizQuestion(
                  question: "将来に",
                  choices: ["in the future", "agree with", "search for", "stand by"],
                  correctAnswerIndex: 0
                ),
                QuizQuestion(
                  question: "連絡を取り合う",
                  choices: ["keep in touch", "leave for", "talk about", "try on"],
                  correctAnswerIndex: 0
                ),
                QuizQuestion(
                  question: "〜に対して親切な",
                  choices: ["be scared of", "kind to", "get along with", "look after"],
                  correctAnswerIndex: 1
                ),
                QuizQuestion(
                  question: "〜へ出かける",
                  choices: [ "stand by", "search for", "agree to","leave for"],
                  correctAnswerIndex: 3
                ),
                QuizQuestion(
                  question: "～しましょう",
                  choices: [ "try on", "think of", "talk to","Let us(Let's)"],
                  correctAnswerIndex: 3
                ),
                QuizQuestion(
                  question: "海外で生活する",
                  choices: [ "leave for", "look after", "make own bed","live abroad"],
                  correctAnswerIndex: 3
                ),
                QuizQuestion(
                  question: "〜の面倒を見る",
                  choices: ["try hard", "work for", "take care of", "get tired"],
                  correctAnswerIndex: 2
                ),
                QuizQuestion(
                  question: "ベッドを整える",
                  choices: ["keep in touch", "go abroad", "make own bed", "be kind to"],
                  correctAnswerIndex: 2
                ),
                QuizQuestion(
                  question: "壁に",
                  choices: ["stand by", "try hard", "on the wall", "look after"],
                  correctAnswerIndex: 2
                ),
                QuizQuestion(
                  question: "ある日",
                  choices: ["agree with","one day",  "search for", "make own bed"],
                  correctAnswerIndex: 1
                ),
                QuizQuestion(
                  question: "あそこに",
                  choices: ["get along with", "over there", "live abroad", "as a result of"],
                  correctAnswerIndex: 1
                ),
                QuizQuestion(
                  question: "〜を探索する",
                  choices: ["search for", "agree to", "take it back", "all day long"],
                  correctAnswerIndex: 0
                ),
                QuizQuestion(
                  question: "人に見せて回る",
                  choices: ["show 人 around", "think of", "talk about", "be scared of"],
                  correctAnswerIndex: 0
                ),
                QuizQuestion(
                  question: "助けが必要な人",
                  choices: ["someone in need", "try on", "leave for", "agree with"],
                  correctAnswerIndex: 0
                ),
                QuizQuestion(
                  question: "そばに立つ",
                  choices: [ "talk to", "search for", "stand by","make own bed"],
                  correctAnswerIndex: 2
                ),
                QuizQuestion(
                  question: "文房具店",
                  choices: ["live abroad", "get tired", "stationery shop", "keep in touch"],
                  correctAnswerIndex: 2
                ),
                QuizQuestion(
                  question: "〜の面倒を見る",
                  choices: [ "be scared of", "call back", "take care of","think of"],
                  correctAnswerIndex: 2
                ),
                QuizQuestion(
                  question: "取り戻す",
                  choices: ["decide to", "even so", "for example","take it back"],
                  correctAnswerIndex: 3
                ),
                QuizQuestion(
                  question: "〜について話す",
                  choices: ["go abroad", "in the future", "kind to","talk about"],
                  correctAnswerIndex: 3
                ),
                QuizQuestion(
                  question: "〜に話しかける",
                  choices: ["talk to", "show 人 around", "get along with", "most of"],
                  correctAnswerIndex: 0
                ),
                QuizQuestion(
                  question: "思い付く",
                  choices: ["think of", "try hard", "as a whole", "a second"],
                  correctAnswerIndex: 0
                ),
                QuizQuestion(
                  question: "～すぎる",
                  choices: ["too ～ for", "according to", "after a while", "agree to"],
                  correctAnswerIndex: 0
                ),
                QuizQuestion(
                  question: "一生懸命",
                  choices: ["try hard", "try on", "work for", "as a result of"],
                  correctAnswerIndex: 0
              ),
      QuizQuestion(
                question: "少数の",
                choices: ["a couple of", "be proud of", "be similar to", "come about"],
                correctAnswerIndex: 0
              ),
              QuizQuestion(
                question: "いろいろな",
                choices: ["a variety of", "be satisfied with", "break down", "by accident"],
                correctAnswerIndex: 0
              ),
              QuizQuestion(
                question: "〜に同意する",
                choices: ["agree to", "call on", "carry on", "catch up with"],
                correctAnswerIndex: 0
              ),
              QuizQuestion(
                question: "初めからずっと",
                choices: [ "come into effect", "come to mind", "all along","come up with"],
                correctAnswerIndex: 2
              ),
              QuizQuestion(
                question: "もう一度",
                choices: ["be aware of", "all over again", "be bound for", "be capable of"],
                correctAnswerIndex: 1
              ),
              QuizQuestion(
                question: "結果として",
                choices: [ "be crazy about", "be different from","as a result", "be popular with"],
                correctAnswerIndex: 2
              ),
              QuizQuestion(
                question: "する限り",
                choices: [ "be proud of", "be responsible for", "be satisfied with","as long as"],
                correctAnswerIndex: 3
              ),
              QuizQuestion(
                question: "全く",
                choices: ["at all", "be similar to", "be sufficient to", "be sure of"],
                correctAnswerIndex: 0
              ),
              QuizQuestion(
                question: "全体として",
                choices: ["at large", "be tired of", "be used to", "be willing to"],
                correctAnswerIndex: 0
              ),
              QuizQuestion(
                question: "危機に瀕して",
                choices: [ "be worried about", "because of", "better off","at stake"],
                correctAnswerIndex: 3
              ),
              QuizQuestion(
                question: "〜を犠牲にして",
                choices: [ "break off", "at the expense of","bring forward", "by accident"],
                correctAnswerIndex: 1
              ),
              QuizQuestion(
                question: "遅くとも",
                choices: ["bring out", "by air","at the latest",  "by and large"],
                correctAnswerIndex: 2
              ),
              QuizQuestion(
                question: "概算",
                choices: ["by land", "by no means", "by sea","ballpark" ],
                correctAnswerIndex: 3
              ),
              QuizQuestion(
                question: "〜を基礎にして",
                choices: ["call on", "carry on", "based on", "catch up with"],
                correctAnswerIndex: 2
              ),
              QuizQuestion(
                question: "〜に気付いている",
                choices: ["be aware of", "come about", "come into effect", "come to mind"],
                correctAnswerIndex: 0
              ),
              QuizQuestion(
                question: "〜に向かっている",
                choices: ["be bound for", "come up with", "be crazy about", "be different from"],
                correctAnswerIndex: 0
              ),
              QuizQuestion(
                question: "〜が可能である",
                choices: ["be popular with", "be capable of", "be proud of", "be responsible for"],
                correctAnswerIndex: 1
              ),
              QuizQuestion(
                question: "〜に夢中である",
                choices: ["be satisfied with", "be similar to", "be crazy about", "be sufficient to"],
                correctAnswerIndex: 2
              ),
              QuizQuestion(
                question: "〜とは違っている",
                choices: ["be sure of", "be tired of", "be used to","be different from"],
                correctAnswerIndex: 3
              ),
              QuizQuestion(
                question: "〜に人気がある",
                choices: [ "be willing to", "be worried about", "because of","be popular with"],
                correctAnswerIndex: 3
              ),
              QuizQuestion(
                question: "〜のことを自慢に思う",
                choices: ["be responsible for","be proud of",  "be satisfied with", "be similar to"],
                correctAnswerIndex: 1
              ),
              QuizQuestion(
                question: "〜に責任がある",
                choices: ["be sufficient to", "be sure of", "be responsible for", "be tired of"],
                correctAnswerIndex: 2
              ),
              QuizQuestion(
                question: "〜に満足している",
                choices: ["be used to", "be satisfied with", "be willing to", "be worried about"],
                correctAnswerIndex: 1
              ),
              QuizQuestion(
                question: "〜に似ている",
                choices: ["because of", "better off", "be similar to", "break down"],
                correctAnswerIndex: 2
              ),
              QuizQuestion(
                question: "〜するに十分な",
                choices: ["be sufficient to", "break off", "break up", "bring forward"],
                correctAnswerIndex: 0
              ),
              QuizQuestion(
                question: "〜を確信している",
                choices: ["be sure of", "bring out", "by accident", "by air"],
                correctAnswerIndex: 0
              ),
              QuizQuestion(
                question: "〜に飽きる",
                choices: ["be tired of", "by and large", "by land", "by no means"],
                correctAnswerIndex: 0
              ),
              QuizQuestion(
                question: "〜に慣れている",
                choices: ["be used to", "by sea", "call on", "carry on"],
                correctAnswerIndex: 0
              ),
              QuizQuestion(
                question: "〜する意思がある",
                choices: ["be willing to", "catch up with", "come about", "come into effect"],
                correctAnswerIndex: 0
              ),
              QuizQuestion(
                question: "〜のことで心配している",
                choices: [ "come to mind", "come up with", "a couple of","be worried about",],
                correctAnswerIndex: 3
              ),
              QuizQuestion(
                question: "〜が理由で",
                choices: ["a variety of", "agree to", "all along","because of", ],
                correctAnswerIndex: 3
              ),
              QuizQuestion(
                question: "〜より裕福",
                choices: ["all over again", "as a result", "as long as","better off", ],
                correctAnswerIndex: 3
              ),
              QuizQuestion(
                question: "壊す",
                choices: [ "at all","break down", "at large", "at stake"],
                correctAnswerIndex: 1
              ),
              QuizQuestion(
                question: "打ち切る",
                choices: ["at the expense of","break off",  "at the latest", "ballpark"],
                correctAnswerIndex: 1
              ),
              QuizQuestion(
                question: "別れる",
                choices: [ "based on", "break up","be aware of", "be bound for"],
                correctAnswerIndex: 1
              ),
              QuizQuestion(
                question: "前に持ってくる",
                choices: [ "be capable of", "be crazy about", "bring forward","be different from"],
                correctAnswerIndex: 2
              ),
              QuizQuestion(
                question: "引き出す",
                choices: ["be popular with", "be proud of", "bring out", "be responsible for"],
                correctAnswerIndex: 2
              ),
              QuizQuestion(
                question: "偶然に",
                choices: [ "be satisfied with", "be similar to","by accident", "be sufficient to"],
                correctAnswerIndex: 2
              ),
              QuizQuestion(
                question: "空路で",
                choices: ["by air", "be sure of", "be tired of", "be used to"],
                correctAnswerIndex: 0
              ),
              QuizQuestion(
                question: "大体",
                choices: ["by and large", "be willing to", "be worried about", "because of"],
                correctAnswerIndex: 0
              ),
              QuizQuestion(
                question: "陸路で",
                choices: ["by land", "better off", "break down", "break off"],
                correctAnswerIndex: 0
              ),
              QuizQuestion(
                question: "決して～しない",
                choices: ["by no means", "break up", "bring forward", "bring out"],
                correctAnswerIndex: 0
              ),
              QuizQuestion(
                question: "海路で",
                choices: ["call on", "carry on", "catch up with","by sea" ],
                correctAnswerIndex: 3
              ),
              QuizQuestion(
                question: "〜を訪問する",
                choices: [ "come about", "come into effect", "come to mind","call on"],
                correctAnswerIndex: 3
              ),
              QuizQuestion(
                question: "続ける",
                choices: ["come up with", "a couple of", "a variety of","carry on"],
                correctAnswerIndex: 3
              ),
              QuizQuestion(
                question: "〜に追いつく",
                choices: [ "agree to","catch up with", "all along", "all over again"],
                correctAnswerIndex: 1
              ),
              QuizQuestion(
                question: "起こる",
                choices: ["as a result","come about",  "as long as", "at all"],
                correctAnswerIndex: 1
              ),
              QuizQuestion(
                question: "効果が出る",
                choices: ["at large", "at stake", "come into effect", "at the expense of"],
                correctAnswerIndex: 2
              ),
              QuizQuestion(
                question: "頭に浮かぶ",
                choices: ["at the latest", "ballpark","come to mind",  "based on"],
                correctAnswerIndex: 2
              ),
              QuizQuestion(
                question: "〜を考え出す",
                choices: ["come up with", "be aware of", "be bound for", "be capable of"],
                correctAnswerIndex: 0
              ),
              QuizQuestion(
                question: "少しの間",
                choices: ["a second", "by air", "by and large", "by land"],
                correctAnswerIndex: 0
              ),
              QuizQuestion(
                question: "〜によれば",
                choices: ["according to", "by no means", "by sea", "call on"],
                correctAnswerIndex: 0
              ),
              QuizQuestion(
                question: "しばらくして",
                choices: ["carry on", "catch up with","after a while",  "come about"],
                correctAnswerIndex: 2
              ),
              QuizQuestion(
                question: "〜を承諾する",
                choices: ["come into effect", "agree to", "come to mind", "come up with"],
                correctAnswerIndex: 1
              ),
              QuizQuestion(
                question: "〜に賛成である",
                choices: [ "a couple of", "a variety of", "all along","agree with"],
                correctAnswerIndex: 3
              ),
              QuizQuestion(
                question: "一日中",
                choices: [ "all over again", "as a result", "as long as","all day long"],
                correctAnswerIndex: 3
              ),
              QuizQuestion(
                question: "〜の至る所に",
                choices: ["all over", "at all", "at large", "at stake"],
                correctAnswerIndex: 0
              ),
              QuizQuestion(
                question: "〜の平均",
                choices: ["an average of", "at the expense of", "at the latest", "ballpark"],
                correctAnswerIndex: 0
              ),
              QuizQuestion(
                question: "〜の結果",
                choices: [ "based on", "be aware of", "be bound for","as a result of"],
                correctAnswerIndex: 3
              ),
              QuizQuestion(
                question: "全体で",
                choices: ["as a whole", "be capable of", "be crazy about", "be different from"],
                correctAnswerIndex: 0
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
        StoryQuizView(viewModel: viewModel, quizzes: shuffledQuizList, quizLevel: .Jukugo3, monsterName: monsterName, backgroundName: backgroundName, authManager: authManager, audioManager: audioManager, isPresenting: $isPresenting, interstitial: sharedInterstitial)
    }
}

struct StoryJukugoListView_Previews: PreviewProvider {
    static var previews: some View {
        @State var selectedUser = User(id: "1", userName: "SampleUser", level: 1, experience: 100, avatars: [], userMoney: 1000, userHp: 100, userAttack: 20, userFlag: 0, adminFlag: 0, rankMatchPoint: 100, rank: 1)

        StoryJukugoListView(isPresenting: .constant(false), monsterName: "モンスター1", backgroundName: "背景1", viewModel: PositionViewModel.shared)
    }
}
