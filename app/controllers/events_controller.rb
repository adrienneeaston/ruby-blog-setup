class EventsController < ApplicationController
  def show
    @event = Event.first
    # timezone(@event)
  end

  # def timezone(str)
  #   str = str.gsub(/-/, " minus ")
  #   str = str.gsub(/\+/, " plus ")
  #   str = str.gsub(":30", " and a half hours")
  #   str = str.gsub(":00", " hours")
  #   puts str
  # end
end
