//
//  TimeLineView.swift
//  linne
//
//  Created by 阿部大輔 on 2023/12/04.
//

import SwiftUI

struct Tweet: Identifiable {
    var id = UUID()
    var username: String
    var tweetText: String
}

struct TimeLineView: View {
    @State private var tweets: [Tweet] = [
        Tweet(username: "John Doe", tweetText: "This is my first tweet!"),
        Tweet(username: "Jane Smith", tweetText: "Excited to use SwiftUI for the first time!"),
        Tweet(username: "TwitterUser", tweetText: "Hello SwiftUI!")
    ]
    
    @State private var isPresentingComposeSheet: Bool = false
    @State private var newTweetText: String = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                // Timeline
                List(tweets) { tweet in
                    VStack(alignment: .leading, spacing: 8) {
                        Text(tweet.username)
                            .font(.headline)
                        
                        Text(tweet.tweetText)
                            .font(.body)
                            .foregroundColor(.secondary)
                    }
                    .padding(.vertical, 8)
                }
                .listStyle(PlainListStyle())
            }
            .navigationBarTitle("Home")
            .navigationBarItems(trailing:
                                    HStack {
                Button(action: {
                    // Add any action for a right navigation bar button
                }) {
                    Image(systemName: "star")
                }
                
                Button(action: {
                    isPresentingComposeSheet.toggle()
                }) {
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                        .padding()
                        .shadow(radius: 3)
                }
            }
            )
            .overlay(
                Button(action: {
                    isPresentingComposeSheet.toggle()
                }) {
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                        .padding()
                        .shadow(radius: 3)
                }
                    .padding(.trailing)
                    .padding(.bottom)
                , alignment: .bottomTrailing
            )
            .sheet(isPresented: $isPresentingComposeSheet) {
                ComposeView(isPresented: $isPresentingComposeSheet, onTweetPost: { tweetText in
                    // Handle the new tweet text from the ComposeView
                    if !tweetText.isEmpty {
                        tweets.append(Tweet(username: "CurrentUser", tweetText: tweetText))
                    }
                })
            }
            
            // Footer
            HStack {
                Spacer()
                Text("Your Footer Content Here")
                    .padding()
                    .background(Color.gray)
                    .foregroundColor(.white)
                Spacer()
            }
        }
    }
}

struct TimeLineView_Previews: PreviewProvider {
    static var previews: some View {
        TimeLineView()
    }
}

struct ComposeView: View {
    @Binding var isPresented: Bool
    @State private var tweetText: String = ""
    var onTweetPost: (String) -> Void
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $tweetText)
                    .padding()
                
                Button(action: {
                    onTweetPost(tweetText)
                    isPresented.toggle()
                }) {
                    Text("Post Tweet")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding()
                }
            }
            .navigationBarTitle("Compose")
            .navigationBarItems(
                leading: Button("Cancel") {
                    isPresented.toggle()
                }
            )
        }
    }
}



#Preview {
    TimeLineView()
}
