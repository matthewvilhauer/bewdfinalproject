class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :state
      t.string :date_of_birth
      t.string :race
      t.string :gender
      t.string :voter_status

      t.timestamps null: false
    end
  end
end
