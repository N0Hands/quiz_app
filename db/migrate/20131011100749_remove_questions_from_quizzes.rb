class RemoveQuestionsFromQuizzes < ActiveRecord::Migration
  def change
    remove_column :quizzes, :Questions, :string
  end
end
