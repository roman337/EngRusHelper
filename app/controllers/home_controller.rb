class HomeController < ApplicationController

  def index
    @words = Word.all
  end

  def choose_word
    @word = Word.find_by_id params[:id]
  end

  #def begin_page

  #end

  def add_word
  word_from = params['from']
  word_to = params['to']
  # @word = Word.new(word_from)
  # @word.save!
  # redirect_to action: 'index', word_id: @word
    unless Word.any?
      Word.create!(from: :word_from, to: :word_to)
    end
  end
end