require 'singleton'
require 'natto'

module Negapoji
  class Dictionary
    include Singleton

    DIC_PATH = __dir__

    def initialize
      @mecab = Natto::MeCab.new
      @jp = create_jp
      @en = create_en
    end

    def create_jp
      point = []
      word = []
      File.open(DIC_PATH + '/../../dic/jp.txt', 'r:utf-8') do |f|
        while line = f.gets
          content = line.split(':')
          point.push(content[3])
          word.push(content[0].chomp)
        end
      end
      { word: word, point: point }
    end

    def create_en
      point = []
      word = []
      File.open(DIC_PATH + '/../../dic/en.txt', 'r:utf-8') do |f|
        while line = f.gets
          content = line.split(':')
          word.push(content[2])
          point.push(content[0].chomp)
        end
      end
      { word: word, point: point }
    end

    attr_reader :jp
    attr_reader :en
  end
end
