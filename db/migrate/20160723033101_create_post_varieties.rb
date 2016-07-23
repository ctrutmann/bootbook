class CreatePostVarieties < ActiveRecord::Migration[5.0]
  def change
    create_table :post_varieties do |t|
      t.string :variety

      t.timestamps
    end
  end
end
