# describe テストのグループ
describe '四則演算' do
  # context テストの中の足し算まとまり
  context '足し算' do
    # it テストと具体的な内容
    it '1 + 1 は 2 になる' do
      # expect ()内に期待値を記述
      # to 期待している値が～であることを指す
      # eq eq=イコール eqに続く値とexpectの期待値が同値であるか判定する
      expect(1+1).to eq 2
    end
  end
  context '足し算' do
    it '1 + 1 は 2 になる' do
      expect(1+1).to eq 3
    end
  end
end