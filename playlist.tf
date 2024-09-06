resource "spotify_playlist" "Bollywood_playlist" {
  name = "Bollywood"
  tracks = ["131yybV7A3TmC34a0qE8u8","5UivuAWteghGcxElCwX7Pk"]
}

resource "spotify_playlist" "Rap_music" {
  name = "RAAP music"
  tracks = ["3yfqSUWxFvZELEM4PmlwIR","386RUes7n1uM1yfzgeUuwp"]
}

data "spotify_search_track" "artist" {
  artist = "Eminem "
}

resource "spotify_playlist" "slimshady" {
    name = "Slim Shady"
    description = "This playlist was created by Terraform"
    public      = true

    tracks = [
        data.spotify_search_track.artist.tracks[0].id,
        data.spotify_search_track.artist.tracks[1].id,
        data.spotify_search_track.artist.tracks[2].id,
        data.spotify_search_track.artist.tracks[3].id,
        data.spotify_search_track.artist.tracks[4].id,
    ]
}