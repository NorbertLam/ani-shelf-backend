class CreateAnimes < ActiveRecord::Migration[5.2]
  def change
    create_table :animes do |t|
      t.integer :anime_id
      t.string :mal_id
      t.string :title
      t.string :desc
      t.string :image
      t.string :genres
      t.string :trailer_site
      t.string :trailer_id
      t.string :start_date
      t.string :season
      t.integer :year
      t.timestamps
    end
  end
end
