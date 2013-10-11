class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :Questions
    end
  end
end
