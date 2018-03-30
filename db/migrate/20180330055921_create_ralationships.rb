class CreateRalationships < ActiveRecord::Migration[5.0]
  def change
    create_table :ralationships do |t|
      t.feferences :user, foreign_key: true
      t.refarences :follow, foreign_key: { to_table: :users }

      t.timestamps
      
      t.index [:user_id, :follow_id], unique: true
    end
  end
end
