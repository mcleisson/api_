class CreateUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :urls do |t|
      t.integer :hits
      t.string :url
      t.string :shorturl

      t.timestamps
    end
  end
end
