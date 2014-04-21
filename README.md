# TcxReader

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'tcx_reader'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tcx_reader

## Usage

  tcx_reader accept a file as argument or a string.

  To read a tcx file just call @tcx = TCXReader::TcX.new(file) or @tcx = TCXReader::Tcx.new(string)

  Then use it as follow:

  - @tcx.activities   => activities in the tcx
    - activity.sport        => activity type
    - activity.activity_id  => activity id (usually the time)
    - activity.laps         => array of laps
      - lap.start_time        => start time of the lap
      - lap.time_seconds      => time in seconds for the lap
      - lap.distance_meter    => distance of the lap
      - lap.max_speed         => max speed of the lap

## Notes

This gem has been written for my own needs, if you feel something is missing don't hesitate to ask


## TODO

## Contributing

1. Fork it ( https://github.com/[my-github-username]/tcx_reader/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
