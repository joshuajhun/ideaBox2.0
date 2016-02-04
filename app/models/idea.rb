class Idea < ActiveRecord::Base
    validates_presence_of :name, :body
    enum quality: [:swill, :plausible, :genious]
    default_scope -> {order(id: :desc)}
end
