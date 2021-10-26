def disemvowel(str)
  # str.delete('aeiouAEIOU')
  str.gsub(/[AEUIOaeuio]/) { |s| s = '' }
end