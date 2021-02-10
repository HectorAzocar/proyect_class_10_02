class Worker < ApplicationRecord
  belongs_to :work, required: false
end
