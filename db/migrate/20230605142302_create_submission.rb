class CreateSubmission < ActiveRecord::Migration[6.1]
  def change
    create_table :submissions do |t|
      t.string :comment
      t.timestamps
    end
  end
end
