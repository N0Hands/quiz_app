class AddTitleToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :title, :string
  end
end
