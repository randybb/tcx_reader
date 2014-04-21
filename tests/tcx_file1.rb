require 'test/unit'
require File.expand_path('../.') + '/tcx_reader/lib/tcx_reader'

class TCXFileTest < Test::Unit::TestCase

  FILE1 = File.join(File.dirname(__FILE__), "tcx_files/tcx_file1.tcx")

  def test_file1
    tcx = TCXReader::Tcx.new(File.open(FILE1))
    assert_equal(1, tcx.activities.size)
    assert_equal(4, tcx.activities.first.laps.size)
    assert_equal("Running", tcx.activities.first.sport)
    # first lap
    assert_equal(422.259, tcx.activities.first.laps[0].time_seconds)
    assert_equal(Time.parse("2014-04-03 17:31:08 UTC"), tcx.activities.first.laps[0].start_time)
    assert_equal(1000.0, tcx.activities.first.laps[0].distance_meter)
    assert_equal(2.5380001068115234, tcx.activities.first.laps[0].max_speed)
    assert_equal(65, tcx.activities.first.laps[0].calories)
    assert_equal(126, tcx.activities.first.laps[0].avg_hr)
    assert_equal(153, tcx.activities.first.laps[0].max_hr)
      # first track
      assert_equal(1, tcx.activities.first.laps[0].tracks.size)
      assert_equal(64, tcx.activities.first.laps[0].tracks[0].points.size)
        # points
        assert_equal(Time.parse("2014-04-03 17:31:08 UTC"), tcx.activities.first.laps[0].tracks[0].points[0].time)
        assert_equal(48.831259310245514, tcx.activities.first.laps[0].tracks[0].points[0].lat)
        assert_equal(2.401437386870384, tcx.activities.first.laps[0].tracks[0].points[0].lon)
        assert_equal(78, tcx.activities.first.laps[0].tracks[0].points[0].hr)
        assert_equal(0, tcx.activities.first.laps[0].tracks[0].points[0].distance)
        assert_equal(0.1120000034570694, tcx.activities.first.laps[0].tracks[0].points[0].speed)
        assert_equal(0, tcx.activities.first.laps[0].tracks[0].points[0].cadence)
        assert_equal(Time.parse("2014-04-03 17:31:09 UTC"), tcx.activities.first.laps[0].tracks[0].points[1].time)
        assert_equal(48.83126316592097, tcx.activities.first.laps[0].tracks[0].points[1].lat)
        assert_equal(2.401448115706444, tcx.activities.first.laps[0].tracks[0].points[1].lon)
        assert_equal(79, tcx.activities.first.laps[0].tracks[0].points[1].hr)
        assert_equal(0.8299999833106995, tcx.activities.first.laps[0].tracks[0].points[1].distance)
        assert_equal(0.19599999487400058, tcx.activities.first.laps[0].tracks[0].points[1].speed)
        assert_equal(0, tcx.activities.first.laps[0].tracks[0].points[1].cadence)
    # second lap 
    assert_equal(405.75, tcx.activities.first.laps[1].time_seconds)
    assert_equal(Time.parse("2014-04-03 17:38:11 UTC"), tcx.activities.first.laps[1].start_time)
    assert_equal(1000.0, tcx.activities.first.laps[1].distance_meter)
    assert_equal(2.6410000324249263, tcx.activities.first.laps[1].max_speed)
    assert_equal(66, tcx.activities.first.laps[1].calories)
    assert_equal(132, tcx.activities.first.laps[1].avg_hr)
    assert_equal(nil, tcx.activities.first.laps[1].max_hr)
    end


end