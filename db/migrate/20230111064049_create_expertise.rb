class CreateExpertise < ActiveRecord::Migration[7.0]
  def change
    create_table :expertises do |t|
      t.references :course, null: false, foreign_key: true
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
