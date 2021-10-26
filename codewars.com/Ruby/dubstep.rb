def song_decoder(song)
  song.gsub(/(WUB)+/) { |s| ' ' }.strip
  # song.gsub(/(WUB)+/, ' ').strip
end

puts song_decoder("WUBWUBWUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUBBUWWUB")