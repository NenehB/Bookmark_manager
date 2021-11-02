require 'bookmark_manager'

describe BookMarkManager do
  it 'should display bookmarks' do
    expect(BookMarkManager.all).to eq %w[google amazon wikipedia]
  end
end
