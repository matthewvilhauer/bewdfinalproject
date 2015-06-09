class CreateAnswerResponses < ActiveRecord::Migration
  def change
    create_table :answer_responses do |t|
      t.integer :response_id
      t.integer :answer_id

      t.timestamps null: false
    end
  end
end
