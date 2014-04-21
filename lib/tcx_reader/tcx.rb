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
  class Tcx
    attr_accessor :activities
      # read the file containing the tracks
      # get the different information of the file
      # get the tracks
      # NOTE: removing name space may lead to some ambiguities
      def initialize(file)
        if file.is_a?(File)
          @tcx=Nokogiri::XML(File.open(file)).remove_namespaces!
        else
          @tcx=Nokogiri::XML(file).remove_namespaces!
        end
        @activities = []
        @tcx.css("Activity").each do |act|
           act = Activity.new(act)
           @activities << act
        end
      end
  end
end