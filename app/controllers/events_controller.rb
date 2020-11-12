class EventsController < ApplicationController
  def show
    @event = Event.first
    @tzlist = ActiveSupport::TimeZone.us_zones.collect { |p| [ tzdisplay(p), p.name]  }
  end
end

def tzdisplay(tz_obj)
  str = tz_obj.formatted_offset
  str = str.gsub(/-/, " minus ")
  str = str.gsub(/\+/, " plus ")
  str = str.gsub(/(?<=\s)0/, "")
  str = str.gsub(":30", " and a half hours")
  str = str.gsub(":00", " hours")
  return "(GMT" + str + ") " + tz_obj.name
end




