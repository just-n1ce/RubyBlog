class BrouseUser < ApplicationRecord

  enum browse_name: [:Chrome, :Firefox, :IE, :Safari, :Other]

end
