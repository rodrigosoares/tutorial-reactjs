class Task < ActiveRecord::Base
  validates :name, presence: true

  before_create do
    self.done = false
    true
  end
end
