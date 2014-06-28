class CreateMugs < ActiveRecord::Migration
  def change
    create_table :mugs do |t|
      t.string :company
      t.string :size
    end
  end
end
