class Question < ActiveRecord::Base
# whitelist_attributes

  belongs_to :quiz
  has_many :answers

  # validates :quiz, presence: true


  def correct_answer
    answers.find_by_correctness(true)
  end

end