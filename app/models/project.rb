class Project < ApplicationRecord
    after_initialize :set_defaults
    validates_presence_of :title, :description

    scope :almost_complete, -> { where("percent_complete> 75.0")}
    scope :still_need_some_work, -> { where("percent_complete < 75.0")}
    # Ex:- scope :active, -> {where(:active => true)}
    # Ex:- scope :active, -> {where(:active => true)}


    def set_defaults
        self.percent_complete ||=0.0
    end
end
