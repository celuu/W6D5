require 'action_view'

class Cat < ApplicationRecord
    ActionView::Helpers::DateHelper

    CAT_COLORS = ['orange', 'brown', 'black', 'white', 'spotted', 'grey']


    validates :birth_date, :color, :name, :sex, presence: true
    validates :color, inclusion: {in: CAT_COLORS, message: "Color is not in the list"}
    validates :sex, inclusion: {in: ['M','F', 'm','f']}
    validate :birth_date_cannot_be_future

    def birth_date_cannot_be_future
        if birth_date.present? && birth_date.to_date > Date.today
            errors.add("birthday cannot be in the future")
        end
    end

    def age
        #need to enter as year, month, day
        age = Date.today - birth_date.to_date
        (age/365).to_i

    end
end
