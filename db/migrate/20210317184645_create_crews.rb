class CreateCrews < ActiveRecord::Migration[5.2]
  def change
    create_table :crews do |t|
      t.string :members_name
      t.belongs_to :band, foreign_key: true

      t.timestamps
    end
  end
end
