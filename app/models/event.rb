class Event < ActiveRecord::Base
  validates_presence_of :organiser_name, :organiser_email, :url, :name,
                        :who, :when
end
