class Work < ApplicationRecord
    has_many :workers

    enum status:[:en_proceso, :terminado]
end
