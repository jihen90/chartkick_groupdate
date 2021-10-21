class Sale < ApplicationRecord

    def self.last_year
        self.where("date_time >= ?", 1.year.ago)
    end

    def self.half_year_ago
        self.where("date_time >= ?", 6.month.ago)
    end

    def self.last_trimester
        self.where("date_time >= ?", 3.month.ago)
    end

    def self.last_month
        self.where("date_time >= ?", 1.month.ago)
    end
end
