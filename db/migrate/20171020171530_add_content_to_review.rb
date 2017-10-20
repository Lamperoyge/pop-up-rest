class AddContentToReview < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :content, :text
    add_column :reviews, :rating, :integer
  end
end
