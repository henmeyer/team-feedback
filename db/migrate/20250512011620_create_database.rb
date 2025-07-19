class CreateDatabase < ActiveRecord::Migration[8.0]
  def change
    create_table :accounts do |t|
      t.string :name, null: false

      t.timestamps
    end

    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false

      t.timestamps
    end

    create_table :account_users do |t|
      t.references :account, null: false, index: true
      t.references :user, null: false, index: true

      t.index [ :account_id, :user_id ], unique: true

      t.timestamps
    end

    create_table :teams do |t|
      t.references :account, null: false, index: true
      t.references :owner, null: false, index: true, foreign_key: { to_table: :users }
      t.string :name, null: false

      t.timestamps
    end

    create_table :team_users do |t|
      t.references :team, null: false, index: true
      t.references :user, null: false, index: true

      t.index [ :team_id, :user_id ], unique: true

      t.timestamps
    end

    create_table :feedbacks do |t|
      t.references :account, null: false, index: true
      t.references :sender, null: false, index: true, foreign_key: { to_table: :users }
      t.references :receiverable, polymorphic: true, null: false, index: true
      t.string :title, null: false
      t.text :content, null: false
      t.string :status, null: false

      t.timestamps

      t.index [ :account_id, :receiverable_type, :receiverable_id ], unique: true
    end
  end
end
