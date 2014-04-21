require 'test/unit'
require File.expand_path('../.') + '/tcx_reader/lib/tcx_reader'

class TCXBigFileTest < Test::Unit::TestCase

  BIG_FILE = File.join(File.dirname(__FILE__), "tcx_files/big_file.tcx")

  def test_big_file
    tcx = TCXReader::Tcx.new(File.open(BIG_FILE))
    assert_equal(1, tcx.activities.size)
    assert_equal(3, tcx.activities.first.laps.size)
    assert_equal("Other", tcx.activities.first.sport)
    # first lap
    assert_equal(9700.825, tcx.activities.first.laps[0].time_seconds)
    assert_equal(Time.parse("2014-02-20 08:42:59 UTC"), tcx.activities.first.laps[0].start_time)
    assert_equal(5201.66, tcx.activities.first.laps[0].distance_meter)
    assert_equal(3.7309999465942383, tcx.activities.first.laps[0].max_speed)
    assert_equal(1094, tcx.activities.first.laps[0].calories)
    assert_equal(124, tcx.activities.first.laps[0].avg_hr)
    assert_equal(148, tcx.activities.first.laps[0].max_hr)
      assert_equal(1, tcx.activities.first.laps[0].tracks.size)
      assert_equal(2619, tcx.activities.first.laps[0].tracks[0].points.size)
      # first track
        # points
        assert_equal(Time.parse("2014-02-20 08:42:59 UTC"), tcx.activities.first.laps[0].tracks[0].points[0].time)
        assert_equal(46.03442206978798, tcx.activities.first.laps[0].tracks[0].points[0].lat)
        assert_equal(6.934360396116972, tcx.activities.first.laps[0].tracks[0].points[0].lon)
        assert_equal(91, tcx.activities.first.laps[0].tracks[0].points[0].hr)
        assert_equal(2.609999895095825, tcx.activities.first.laps[0].tracks[0].points[0].distance)
        assert_equal(2.385999917984009, tcx.activities.first.laps[0].tracks[0].points[0].speed)
        assert_equal(nil, tcx.activities.first.laps[0].tracks[0].points[0].cadence)
        assert_equal(Time.parse("2014-02-20 08:43:00 UTC"), tcx.activities.first.laps[0].tracks[0].points[1].time)
        assert_equal(46.03444067761302, tcx.activities.first.laps[0].tracks[0].points[1].lat)
        assert_equal(6.93439643830061, tcx.activities.first.laps[0].tracks[0].points[1].lon)
        assert_equal(91, tcx.activities.first.laps[0].tracks[0].points[1].hr)
        assert_equal(5.920000076293945, tcx.activities.first.laps[0].tracks[0].points[1].distance)
        assert_equal(2.6510000228881836, tcx.activities.first.laps[0].tracks[0].points[1].speed)
        assert_equal(nil, tcx.activities.first.laps[0].tracks[0].points[1].cadence)
    # second lap 
    assert_equal(1, tcx.activities.first.laps[1].tracks.size)
    assert_equal(224, tcx.activities.first.laps[1].tracks[0].points.size)
    assert_equal(569.351, tcx.activities.first.laps[1].time_seconds)
    assert_equal(Time.parse("2014-02-20 11:24:39 UTC"), tcx.activities.first.laps[1].start_time)
    assert_equal(1096.79, tcx.activities.first.laps[1].distance_meter)
    assert_equal(10.222000122070312, tcx.activities.first.laps[1].max_speed)
    assert_equal(21, tcx.activities.first.laps[1].calories)
    assert_equal(98, tcx.activities.first.laps[1].avg_hr)
    assert_equal(124, tcx.activities.first.laps[1].max_hr)
    # third lap 
    assert_equal(1, tcx.activities.first.laps[2].tracks.size)
    assert_equal(646, tcx.activities.first.laps[2].tracks[0].points.size)
    assert_equal(1135.273, tcx.activities.first.laps[2].time_seconds)
    assert_equal(Time.parse("2014-02-20 11:34:08 UTC"), tcx.activities.first.laps[2].start_time)
    assert_equal(4942.11, tcx.activities.first.laps[2].distance_meter)
    assert_equal(10.625, tcx.activities.first.laps[2].max_speed)
    assert_equal(41, tcx.activities.first.laps[2].calories)
    assert_equal(95, tcx.activities.first.laps[2].avg_hr)
    assert_equal(114, tcx.activities.first.laps[2].max_hr)
    end


end