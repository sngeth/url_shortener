class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :original_url
      t.string :string
      t.string :shorted_url
      t.string :string

      t.timestamps null: false
    end
  end
end
