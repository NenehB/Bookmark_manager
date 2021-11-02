require 'bookmark_manager'

describe BookMarkManager do
  it 'should display bookmarks' do
    expect(BookMarkManager.all).to eq %w[ http://www.makersacademy.com/ http://www.destroyallsoftware.com http://www.google.com ]
  end
end
