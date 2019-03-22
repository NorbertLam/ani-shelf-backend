class CreateAnimes < ActiveRecord::Migration[5.2]
  def change
    create_table :animes do |t|
      t.string :name
      t.string :season
      t.string :season
      t.string :info
      t.string :image
      t.integer :year

      t.timestamps
    end
  end
end
