class Guest < ActiveRecord::Base
    ransacker :by_categorization, proc{ |v|
      # some code..
    } do |parent|
      # some other code..
    end
end
