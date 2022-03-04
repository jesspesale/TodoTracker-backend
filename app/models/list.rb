class List < ApplicationRecord
    has_many :list_items

    validated :title, presence: true
end
