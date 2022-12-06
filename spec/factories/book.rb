# Bookersの話
# Factory Botは他のテストコードに組み込んで使用する感じ

FactoryBot.define do #宣言文 データの定義を行う際に記述
  factory :book do #どのモデルに対してデータ定義を行うのか記述
    title { Faker::Lorem.characters(number:5) } #Lorem：ダミーテキストタイプを選択
    body { Faker::Lorem.characters(number:20) }
  end
end

# 環境設定のためにGemに記述するらしい
# group :test do
#   # Adds support for Capybara system testing and selenium driver
#   gem 'capybara', '>= 2.15'
#   gem 'selenium-webdriver'
#   # Easy installation and use of chromedriver to run system tests with Chrome
#   gem 'chromedriver-helper'
# end