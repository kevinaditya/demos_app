class Term < ActiveRecord::Base
validates :content, presence: true, length: { maximum: 250 }

end
