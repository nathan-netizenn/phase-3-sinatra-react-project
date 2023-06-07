class CreateQuote < ActiveRecord::Migration[6.1]
  def change
    create_table :quotes do |t|
      t.string :content
      t.string :author
      t.integer :random_quote_id
      t.integer :submission_id
      t.timestamps
    end
  end
end
