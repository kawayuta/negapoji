require 'negapoji/version'
require 'negapoji/feeling'

module Negapoji

  def self.word_pointing(sentence)
    negapoji = Feeling.new
    point = negapoji.word_pointing(sentence)
  end

  def self.pointing(sentence)
    negapoji = Feeling.new
    point = negapoji.pointing(sentence)
  end

  def self.judge(sentence)
    point = pointing(sentence)
    judge = point >= 0 ? 'positive' : 'negative'
  end

end
