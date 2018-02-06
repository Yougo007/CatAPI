class CreateHistory < ActiveRecord::Migration[5.1]
  def change
    create_table :histories, { id: false } do |t|
      t.string :url
      t.string :id
      t.string :source_url
    end
  end
end
