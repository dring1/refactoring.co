class CreateRefactors < ActiveRecord::Migration
  def change
    create_table :refactors do |t|
      t.text :code

      t.timestamps
    end
  end
end
