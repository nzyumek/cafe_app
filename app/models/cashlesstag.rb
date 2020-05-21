class Cashlesstag < ApplicationRecord
    has_many :cafe_list_cashlesstags
    has_many :cafe_lists, through: :cafe_list_cashlesstags
end
