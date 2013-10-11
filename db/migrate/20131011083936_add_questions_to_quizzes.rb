class AddQuestionsToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :Questions, :string
  end
end
