class Event < ActiveRecord::Base
  validates_presence_of :organiser_name, :organiser_email, :url, :name,
                        :who, :when
  validates_format_of :organiser_email, :with => /^[_a-zA-Z0-9-]+(\.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.(([0-9]{1,3})|([a-zA-Z]{2,3})|(aero|coop|info|museum|name))$/
  validates_format_of :url, :with => /^http\:\/\/[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,3}(\S*)?$/
end
