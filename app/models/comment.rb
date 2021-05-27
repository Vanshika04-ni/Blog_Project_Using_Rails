class Comment < ApplicationRecord
  belongs_to :demo
  validates:name,presence:true
    validates:body,presence:true
end
