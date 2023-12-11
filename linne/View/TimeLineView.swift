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
                
                // Compose Tweet Box
                HStack {
                    TextField("What's happening?", text: $newTweetText)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .cornerRadius(10)
                    
                    Button("Tweet") {
                        if !newTweetText.isEmpty {
                            tweets.append(Tweet(username: "CurrentUser", tweetText: newTweetText))
                            newTweetText = ""
                        }
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                .padding()
            }
            .navigationBarItems(trailing:
                                    Button(action: {
                // Add any action for a right navigation bar button
            }) {
                Image(systemName: "star")
            }
            )
        }
    }
}

#Preview {
    TimeLineView()
}
