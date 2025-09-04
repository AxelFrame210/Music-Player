//
//  PlaylistDetailsView.swift
//  MusicPlayer
//
//  Created by Admin on 27/8/25.
//

import SwiftUI

struct PlaylistDetailsView: View {
    var playlist: PlaylistItem = PlaylistItem(name: "Take Me Back", numberOfSongs: 25, imageName: "Image2")
    
    var body: some View {
        ZStack {
            backgroundView
            VStack(alignment: .leading, spacing: 16) {
                toolbarView
                playlistImageView
                nameAndNumberOfSongsText
                Spacer()
            }
        }
    }
}

extension PlaylistDetailsView {
    var backgroundView: some View {
        Constants.AppColor.defaultColor.edgesIgnoringSafeArea(.all)
    }
    
    var toolbarView: some View {
        HStack {
            Image(systemName: "arrow.left")
                .font(Constants.AppFont.heading2)
                .foregroundStyle(Constants.AppColor.white)
            Spacer()
            Image(systemName: "plus")
                .font(Constants.AppFont.heading2)
                .foregroundStyle(Constants.AppColor.white)
        }
        .padding(.vertical, 16)
        .padding(.horizontal, 16)
    }
    
    var playlistImageView: some View {
        Image("Image2")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .imageSize(Constants.ImageSize.playlistHeroImage)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .background {
                RoundedRectangle(cornerRadius: 16)
                    .stroke(style: StrokeStyle(lineWidth: 5))
                    .foregroundColor(Constants.AppColor.white)
            }
            .padding(.horizontal, 16)
            .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)

    }
    
    var nameAndNumberOfSongsText: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(playlist.name)
                .font(Constants.AppFont.semiBoldText23)
                .foregroundColor(Constants.AppColor.white)
            Text("\(playlist.numberOfSongsText)")
                .font(Constants.AppFont.mediumText16)
                .foregroundColor(Constants.AppColor.white.opacity(0.8))
        }
        .padding(.horizontal, 16)
    }
}

extension View {
    func imageSize(_ size: CGSize) -> some View {
        self.frame(width: size.width, height: size.height)
    }
}
#Preview {
    PlaylistDetailsView()
}
