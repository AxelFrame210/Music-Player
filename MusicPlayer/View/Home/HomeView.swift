//
//  HomeView.swift
//  MusicPlayer
//
//  Created by Admin on 21/8/25.
//
import SwiftUI

struct HomeView: View {
    @State private var playlists: [PlaylistItem] = [
        PlaylistItem(name: "Killswitch Lullaby", numberOfSongs: 12, imageName: "Image1"),
        PlaylistItem(name: "Take Me Back", numberOfSongs: 25, imageName: "Image2"),
        PlaylistItem(name: "Soft Rock", numberOfSongs: 18, imageName: "Image3"),
    ]
    
    var body: some View {
        ZStack {
            backgroundView
            VStack(spacing: 0) {
                HStack(spacing: 16) {
                    addPlaylistButton
                    favoriteButton
                }
                Spacer()
                titleText
                    .padding(.bottom, 48)
                playlistList
                Spacer()
            }
        }
    }
}

extension HomeView {
    var backgroundView: some View {
        Constants.AppColor.linearBackground
            .ignoresSafeArea(edges: .all)
    }
    
    var addPlaylistButton: some View {
        HStack {
            Spacer()
            Button(action: {
                // Add playlist action
            }) {
                Image(systemName: "plus")
                    .foregroundStyle(Constants.AppColor.white)
                    .font(Constants.AppFont.mediumText24)
            }
        }
        .padding(.top, 16)
    }
    var favoriteButton: some View {
        Button(action: {
            
        }) {
            Image(systemName: "star.fill")
                .foregroundStyle(Constants.AppColor.white)
                .font(Constants.AppFont.mediumText24)
        }
        .padding(.top, 12)
        .padding(.trailing, 16)
    }
    
    var titleText: some View {
        Text("Choose a Playlist\nto Start")
            .font(Constants.AppFont.boldText32)
            .foregroundColor(Constants.AppColor.white)
            .padding(.horizontal, 16)
            .multilineTextAlignment(.center)
    }
    
    var playlistList: some View {
        LazyVStack(spacing: 8) {
            ForEach($playlists) { $item in
                PlaylistItemView(item: $item)
            }
        }
        .padding(.horizontal, 16)
    }
}

struct PlaylistItem: Identifiable {
    var id: UUID = UUID()
    var name: String
    var numberOfSongs: Int
    var imageName: String  // Changed from Image to String
    var isFavorite: Bool = false
    
    var numberOfSongsText: String {  // Fixed typo
        numberOfSongs == 1 ? "\(numberOfSongs) song" : "\(numberOfSongs) songs"
    }
}

struct PlaylistItemView: View {
    @Binding var item: PlaylistItem
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .fill(Constants.AppColor.white)
                .frame(height: 96)
                .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
            
            HStack(spacing: 16) {
                // Use the actual image from the item
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 96, height: 64)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .clipped()
                
                VStack(alignment: .leading, spacing: 4) {
                    // Use actual item data
                    Text(item.name)
                        .font(Constants.AppFont.button)
                        .foregroundStyle(Constants.AppColor.text)
                        .lineLimit(2)
                    
                    Text(item.numberOfSongsText)
                        .font(Constants.AppFont.semiBoldText12)
                        .foregroundStyle(Constants.AppColor.text)
                }
                
                Spacer()
                
                // Heart icon with conditional fill
                Button(action: {
                    item.isFavorite.toggle()
                }) {
                    Image(systemName: item.isFavorite ? "heart.fill" : "heart")
                        .foregroundColor(item.isFavorite ? Constants.AppColor.defaultColor : Constants.AppColor.text)
                        .font(Constants.AppFont.bodyBold)
                }
                
                // More options button
                Button(action: {
                    // More options action
                }) {
                    Image(systemName: "ellipsis")
                        .font(Constants.AppFont.bodyBold)
                        .foregroundColor(Constants.AppColor.text)
                }
            }
            .padding(.horizontal, 16)
        }

    }
}

#Preview {
    HomeView()
}
