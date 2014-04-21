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
  class Point
    attr_accessor :time,:lat, :lon, :hr, :distance, :speed, :cadence

    def initialize(point)
      @time     = Time.parse(point.at_css("Time"))
      @lat      = point.at_css("Position LatitudeDegrees").text.to_f rescue nil
      @lon      = point.at_css("Position LongitudeDegrees").text.to_f rescue nil
      @hr       = point.at_css("HeartRateBpm Value").text.to_i rescue nil
      @distance = point.at_css("DistanceMeters").text.to_f rescue nil
      @speed    = point.at_css("Speed").text.to_f rescue nil
      @cadence  = point.at_css("RunCadence").text.to_i rescue nil
    end
  end
end