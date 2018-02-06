class CreateHistory < ActiveRecord::Migration[5.1]
  def change
    create_table :histories, { id: false } do |t|
      t.string :id
      t.string :url
      t.string :source_url
    end
  end
end
