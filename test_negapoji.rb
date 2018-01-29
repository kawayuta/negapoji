require "negapoji"

while text = STDIN.gets
  p Negapoji.word_pointing(text) if text.is_a?(String)
end
