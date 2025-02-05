//
//  IllustratedView.swift
//  it
//
//  Created by hashimo ryoya on 2023/11/07.
//

import SwiftUI
import Firebase

struct IllustratedView: View {
    let items = ["もりこう","ライム", "レッドドラゴン", "レインボードラゴン"]
    
    struct Item: Identifiable {
        let name: String  // これが一意の識別子として機能します
        let attack: Int
        let probability: Int
        let health: Int
        let rarity: Rarity
        var id: String { name }  // Identifiable の要件を満たすために name を id として使用
    }

    enum Rarity {
        case normal
        case rare
        case superRare
        case ultraRare
        case legendRare
        
        var displayString: String {
            switch self {
            case .normal:
                return "ノーマル" // 任意の文字列を返す
            case .rare:
                return "レア"
            case .superRare:
                return "スーパーレア"
            case .ultraRare:
                return "ウルトラレア"
            case .legendRare:
                return "レジェンドレア"
            }
        }
    }
    
    let allItems: [Item] = [
        Item(name: "ラビン", attack: 10, probability: 25, health: 20, rarity: .normal),
        Item(name: "エレファン君", attack: 15, probability: 25, health: 15, rarity: .normal),
        Item(name: "ガルン", attack: 20, probability: 25, health: 10, rarity: .normal),
        Item(name: "キャッテュル", attack: 20, probability: 25, health: 100, rarity: .normal),
        Item(name: "ハムハム", attack: 25, probability: 25, health: 150, rarity: .normal),
        Item(name: "ラムン", attack: 30, probability: 25, health: 200, rarity: .normal),
        Item(name: "アンノン", attack: 35, probability: 10, health: 220, rarity: .rare),
        Item(name: "ライム", attack: 40, probability: 10, health: 240, rarity: .rare),
        Item(name: "孤高の戦士 クラウン", attack: 45, probability: 10, health: 260, rarity: .rare),
        Item(name: "悲劇の魔女 ブースター", attack: 47, probability: 10, health: 280, rarity: .rare),
        Item(name: "大王国国王 ラーブル", attack: 48, probability: 5, health: 285, rarity: .superRare),
        Item(name: "大海賊 パイレーツ・ライム", attack: 50, probability: 5, health: 300, rarity: .superRare),
        Item(name: "神龍 ゴットドラゴン", attack: 50, probability: 3, health: 300, rarity: .ultraRare),
//        Item(name: "ネッキー", attack: 10, probability: 25,health: 20, rarity: .normal),
//        Item(name: "ピョン吉", attack: 15, probability: 25,health: 15, rarity: .normal),
//        Item(name: "ルイーカ", attack: 20, probability: 25, health: 10, rarity: .normal),
//        Item(name: "もりこう", attack: 20, probability: 25, health: 100, rarity: .normal),
//        Item(name: "うっさん", attack: 25, probability: 25, health: 150, rarity: .normal),
//        Item(name: "キリキリン", attack: 30, probability: 25, health: 200, rarity: .normal),
//        Item(name: "カゲロウ", attack: 35, probability: 10, health: 220, rarity: .rare),
//        Item(name: "ライム", attack: 40, probability: 10, health: 240, rarity: .rare),
//        Item(name: "ラオン", attack: 45, probability: 10, health: 260, rarity: .rare),
//        Item(name: "ぴょこん", attack: 20,probability: 25, health: 220, rarity: .rare),
//        Item(name: "忍太", attack: 20,probability: 25, health: 210, rarity: .rare),
//        Item(name: "かみ蔵", attack: 20,probability: 25, health: 220, rarity: .rare),
//        Item(name: "キャット夫人", attack: 25,probability: 25, health: 225, rarity: .rare),
//        Item(name: "ミッチー", attack: 30,probability: 25, health: 240, rarity: .rare),
//        Item(name: "ライム兄", attack: 40,probability: 10, health: 250, rarity: .rare),
//        Item(name: "幸福のパンダ", attack: 47,probability: 5, health: 260, rarity: .rare),
//        Item(name: "メカマウス", attack: 20,probability: 25, health: 210, rarity: .rare),
//        Item(name: "メカドック", attack: 20,probability: 25, health: 215, rarity: .rare),
//        Item(name: "メカベアー", attack: 20,probability: 25, health: 220, rarity: .rare),
//        Item(name: "ロボン", attack: 25,probability: 25, health: 225, rarity: .rare),
//        Item(name: "ロボノコ", attack: 30,probability: 25, health: 240, rarity: .rare),
//        Item(name: "ロボカー", attack: 40,probability: 10, health: 250, rarity: .rare),
//        Item(name: "バースト", attack: 47,probability: 5, health: 260, rarity: .rare),
//        Item(name: "レッドドラゴン", attack: 47, probability: 5, health: 280, rarity: .superRare),
//        Item(name: "ブルードラゴン", attack: 48, probability: 5, health: 285, rarity: .superRare),
//        Item(name: "英雄デル", attack: 50,probability: 10, health: 300, rarity: .superRare),
//        Item(name: "覚醒 ライム", attack: 56,probability: 10, health: 300, rarity: .superRare),
//        Item(name: "古代ロボ マーク", attack: 30,probability: 10, health: 600, rarity: .superRare),
//        Item(name: "メカライオネル", attack: 70,probability: 10, health: 200, rarity: .superRare),
//        Item(name: "レインボードラゴン", attack: 50, probability: 3, health: 300, rarity: .ultraRare),
//        Item(name: "七福神 玉", attack: 72,probability: 5, health: 350, rarity: .ultraRare),
//        Item(name: "七福神 福天丸", attack: 75,probability: 3, health: 380, rarity: .ultraRare),
//        Item(name: "ロボ長 バーグ", attack: 60,probability: 5, health: 400, rarity: .ultraRare),
//        Item(name: "悪意ロボ ルーク", attack: 70,probability: 3, health: 450, rarity: .ultraRare),
//        Item(name: "七福神 金満徳", attack: 100,probability: 3, health: 500, rarity: .legendRare),
//        Item(name: "究極完全体バーグ", attack: 200,probability: 3, health: 400, rarity: .legendRare)
    ]
    
    @State private var selectedItem: Item?
    @State private var avatars: [String] = []
    @ObservedObject var authManager = AuthManager.shared
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var audioManager = AudioManager.shared
    // アラートを表示するかどうかを制御するState変数
    @State private var showingAlert1 = false
    @State private var showingAlert2 = false
    // 切り替えるアバターを保持するState変数
    @State private var switchingAvatar: Avatar?
    @Binding var isPresenting: Bool
    
    init(isPresenting: Binding<Bool>) {
        _isPresenting = isPresenting
    }
    
    // グリッドのレイアウトを定義
    var columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        VStack {
            // 選択されたアイテムを大きく表示
            if let selected = selectedItem {
                if authManager.avatars.contains(where: { $0.name == selected.name }) {
                    ZStack{
                        Image("\(selected.rarity.displayString)")
                            .resizable()
                            .frame(width: 70,height:70)
                            .padding(.trailing,240)
                            .padding(.bottom,100)
                        VStack {
                            Text(selected.name)
                                .font(.system(size:24))
                                .fontWeight(.bold)
                                .foregroundColor(Color.gray)
                            Image(selected.name)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 150)
                                .cornerRadius(15)
                            HStack{
                                ZStack {
                                    Image("ハートバー")
                                        .resizable()
                                        .frame(width:120,height:40)
                                    Text("\(selected.health)")
                                        .multilineTextAlignment(.leading)
                                        .font(.system(size: 26))
                                        .foregroundColor(Color("fontGray"))
                                        .padding(.leading,65)
                                        .padding(.top,15)
                                }
                                ZStack {
                                    Image("攻撃バー")
                                        .resizable()
                                        .frame(width:116,height:40)
                                    Text("\(selected.attack)")
                                        .multilineTextAlignment(.leading)
                                        .font(.system(size: 26))
                                        .foregroundColor(Color("fontGray"))
                                        .padding(.leading,65)
                                        .padding(.top,10)
                                }.padding(.top,5)
                            }
                        }
                    }
                    
                }else{
                    ZStack{
                        Image("\(selected.rarity.displayString)")
                            .resizable()
                            .frame(width: 70,height:70)
                            .padding(.trailing,240)
                            .padding(.bottom,100)
                        VStack {
                            Text("???")
                                .font(.system(size:24))
                                .fontWeight(.bold)
                                .foregroundColor(Color.gray)
                            Image("\(selected.name)_シルエット")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 150)
                                .cornerRadius(15)
                            HStack{
                                ZStack {
                                    Image("ハートバー")
                                        .resizable()
                                        .frame(width:120,height:40)
                                    Text("???")
                                        .multilineTextAlignment(.leading)
                                        .font(.system(size: 26))
                                        .foregroundColor(Color("fontGray"))
                                        .padding(.leading,65)
                                        .padding(.top,15)
                                }
                                ZStack {
                                    Image("攻撃バー")
                                        .resizable()
                                        .frame(width:116,height:40)
                                    Text("???")
                                        .multilineTextAlignment(.leading)
                                        .font(.system(size: 26))
                                        .foregroundColor(Color("fontGray"))
                                        .padding(.leading,65)
                                        .padding(.top,10)
                                }.padding(.top,5)
                            }
                        }
                    }
                }
            }
            ScrollView {
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(allItems) { item in
                                VStack{
                                    // ユーザーが持っているアバターの判定
                                    if authManager.avatars.contains(where: { $0.name == item.name }) {
                                        // ユーザーが持っているアバターの画像を表示
                                        Button(action: {
                                            selectedItem = item
                                            audioManager.playSound()
                                        }) {
                                            Image(item.name)
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 80, height: 80)
                                                .padding(5)
                                                .cornerRadius(8)
                                        }
                                    } else {
                                        // ユーザーが持っていないアバターのシルエットを表示
                                        Button(action: {
                                            selectedItem = item
                                            audioManager.playSound()
                                        }) {
                                            Image("\(item.name)_シルエット") // シルエット画像は適宜用意してください
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 80, height: 80)
                                                .padding(5)
                                                .cornerRadius(8)
                                        }
                                    }
                                }
                                .overlay(
                                   RoundedRectangle(cornerRadius: 10)
                                       .stroke((selectedItem?.name == item.name) ? Color.gray : Color.clear, lineWidth: 4)
                               )
                            }
                        }
                        .padding(5)
                    }
            .frame(maxWidth:.infinity,maxHeight:.infinity)
//            .onReceive(authManager.$avatars) { newAvatars in
//                if let updatedAvatar = newAvatars.first(where: { $0.usedFlag == 1 }) {
////                            print(updatedAvatar)
//                    self.selectedItem = updatedAvatar
//                }
//            }
            .onAppear {
                authManager.fetchAvatars {
                    for item in allItems {
                        let contains = authManager.avatars.contains(where: { $0.name == item.name })
//                        print("Contains \(item.name): \(contains)")
                    }
                }
            }
Spacer()
        }
        .padding(.top,5)
        .onAppear {
            self.selectedItem = Item(name: "ラビン", attack: 10, probability: 25,health: 20, rarity: .normal)
        }
        .background(Color("purple2"))
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action: {
            self.presentationMode.wrappedValue.dismiss()
            audioManager.playCancelSound()
        }) {
            Image(systemName: "chevron.left")
                .foregroundColor(.gray)
            Text("戻る")
                .foregroundColor(Color("fontGray"))
        })
        .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("おとも図鑑")
                        .font(.system(size: 20)) // ここでフォントサイズを指定
                        .foregroundColor(Color("fontGray"))
                }
            }
        }
    }

#Preview {
    IllustratedView(isPresenting: .constant(false))
}
