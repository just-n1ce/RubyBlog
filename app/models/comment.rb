class Comment < ApplicationRecord
  belongs_to :post

  validates_presence_of :author, :content
  validates :author, format: { with: /\A[A-Z]([\w\-\']{2,})([\s{1}])[A-Z]([\w\-\']{2,})\z/}
  # validate(:author)


  # GOOD_CHARS = ('a'..'z').to_a.join << "'-"
  # #=> "abcdefghijklmnopqrstuvwxyz'-"
  #
  # def validate(str)
  #   return false if str.empty? || (str[0]==' ' || str[-1]==' ')
  #   nbr_spaces = str.count(' ')
  #   return false if nbr_spaces > 2
  #   str.downcase.count(GOOD_CHARS) + nbr_spaces == str.size
  # end

end
