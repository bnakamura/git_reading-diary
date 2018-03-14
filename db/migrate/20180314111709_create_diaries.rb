class CreateDiaries < ActiveRecord::Migration
  def change
    create_table :diaries do |t|
      t.string         :title
      t.string         :author
      t.string         :publisher
      t.integer        :reco_rate
      t.integer        :genre_id
      t.integer        :user_id
      t.datetime       :posted_datetime
      t.boolean        :public_flag
      t.text           :impression
      t.boolean        :impression_public_flag
      t.text           :memo
      t.boolean        :memo_public_flag
      t.text           :action
      t.boolean        :action_public_flag
      t.text           :reco_for
      t.boolean        :reco_for_public_flag
      t.timestamps
    end
  end
end
