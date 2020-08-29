import lyricsgenius
import sys

genius = lyricsgenius.Genius("genius-api-key")
artist = genius.search_artist(sys.argv[1], max_songs=50)

for song in artist.songs:
    print(song.lyrics)
