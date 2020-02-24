class Micropost < ApplicationRecord
    #1つのマイクロポストは1人のユーザーにのみ属する
    belongs_to :user
    # マイクロポストの最大文字数を140文字に制限する
    validates :content,length: { maximum: 140 },
    #micropostのcontentが存在しているかどうかの確認
                        presence: true
end
