require 'pg'
class BookMarkManager
  
  def self.all
    result = DatabaseConnection.query("SELECT url FROM bookmarks")
    result.map do |res|
      res["url"]
    end 
  end

end
