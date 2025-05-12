class CreateAccountUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :account_users do |t|
      t.references :account, null: false, index: true
      t.references :user, null: false, index: true

      t.index [ :account_id, :user_id ], unique: true

      t.timestamps
    end
  end
end
