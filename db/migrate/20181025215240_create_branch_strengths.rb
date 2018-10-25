class CreateBranchStrengths < ActiveRecord::Migration[5.2]
  def change
    create_table :branch_strengths do |t|
      t.string :branch_strength

      t.timestamps
    end
  end
end
