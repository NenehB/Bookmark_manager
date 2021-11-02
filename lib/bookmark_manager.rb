require 'pg'
class BookMarkManager
  
  def self.all
    result = DatabaseConnection.query("SELECT url FROM bookmarks")
    p result
    result.map do |res|
      p res
    end 
  end

end
