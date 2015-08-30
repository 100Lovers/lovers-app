class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name            # ユーザー名
      t.string :email           # メールアドレス
      t.string :image           # 画像のパス
      t.string :introduction    # 自己紹介
      t.integer :status_id      # ステータスID（1:未認証,2:認証済,3:退会)

      t.timestamps null: false
    end
  end
end
