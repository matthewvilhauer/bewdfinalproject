class AddQuestionCode < ActiveRecord::Migration
  def change
    add_column :questions, :question_code, :string
  end
end
