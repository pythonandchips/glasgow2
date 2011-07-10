class EventMailer < ActionMailer::Base
  default :from => "pythonandchips@gmail.com"

  def new_event(event)
    @event = event
    mail(:to => "pythonandchips@gmail.com",
          :subject => "New glasgow2 event")
  end
end
