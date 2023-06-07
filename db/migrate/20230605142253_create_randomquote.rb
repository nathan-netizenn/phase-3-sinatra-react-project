class CreateRandomquote < ActiveRecord::Migration[6.1]
  def change
    create_table :randomquotes do |t|
      t.string :quoter
      t.timestamps
    end
  end
end