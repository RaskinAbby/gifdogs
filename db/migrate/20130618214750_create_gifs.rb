class CreateGifs < ActiveRecord::Migration
  def change
    create_table :gifs do |t|
      t.string :url
      t.text :note
      t.boolean :favorite

      t.timestamps
    end
  end
end
