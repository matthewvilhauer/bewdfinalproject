class RespondantIdToResponse < ActiveRecord::Migration
  def change
    add_column :responses, :respondent_id, :string
  end
end
