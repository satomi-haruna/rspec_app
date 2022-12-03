# frozen_string_literal: true　# bookersのRSpecを読み解く

require 'rails_helper' #読み込んでいる、設定などを行うファイル

RSpec.describe Book, "モデルに関するテスト", type: :model do
  describe '実際に保存してみる' do
    it "有効な投稿内容の場合は保存されるか" do
      expect(FactoryBot.build(:book)).to be_valid #FactoryBot.build(:book)で作成したBookモデルのインスタンスをexpectに渡して、be_validで有効かどうか判定
    end
  end
  context "空白のバリデーションチェック" do
    it "titleが空白の場合にバリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      book = Book.new(title: '', body:'hoge')
      expect(book).to be_invalid
      expect(book.errors[:title]).to include("can't be blank")
    end
    it "bodyが空白の場合にバリデーションチェックされ空白のエラーメッセージが返ってきているか" do
      book = Book.new(title: 'hoge', body:'')
      expect(book).to be_invalid
      expect(book.errors[:body]).to include("can't be blank")
    end
  end
end

# マッチャー
# be_valid	        有効であるか
# be_invalid	      無効であるか
# include	          配列に指定の値が含まれているか
# find	            要素の検索を行う
# click	            クリックを行う
# have_content	    文字列が存在するか
# have_link	        指定の値のリンクが存在するか
# eq	              期待値と値を比較して一致するか
# have_selector     HTMLタグやCSSに指定の文字列が存在するか
# have_field	      入力フォームが存在するか
# find_all	        ページ上の指定のHTMLタグを全て取得する
# match	match       メソッドを使用して期待値と一致するか
# have_button	      ページ上に指定のボタンが存在するか
# click_button	    指定のボタンをクリックする
# have_current_path	パスを取得できる
# change	          ある動作Aに対してBが変動するか