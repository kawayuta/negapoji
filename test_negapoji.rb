require "negapoji"

while text = STDIN.gets
  p Negapoji.pointing(text) if text.is_a?(String)
end
