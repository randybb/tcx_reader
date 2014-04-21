#--
# Copyright (c) 2014 Nicolas Aguttes
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#++
module TCXReader
  class Lap
    attr_accessor :tracks,:start_time, :time_seconds, :distance_meter, :max_speed, :calories, :avg_hr, :max_hr, :intensity, :trigger_method

    def initialize(lap)
      @start_time     = Time.parse(lap["StartTime"])
      @time_seconds   = lap.at_css("TotalTimeSeconds").text.to_f rescue nil
      @distance_meter = lap.at_css("DistanceMeters").text.to_f rescue nil
      @max_speed      = lap.at_css("MaximumSpeed").text.to_f rescue nil
      @calories       = lap.at_css("Calories").text.to_i rescue nil
      @avg_hr         = lap.at_css("AverageHeartRateBpm Value").text.to_i rescue nil
      @max_hr         = lap.at_css("MaximumHeartRateBpm Value").text.to_i rescue nil
      @intensity      = lap.at_css("Intensity").text rescue nil
      @trigger_method = lap.at_css("TriggerMethod").text rescue nil
      @tracks = []
      lap.css("Track").each do |trk|
        trk     = Track.new(trk)
        @tracks << trk
      end
    end
  end
end
