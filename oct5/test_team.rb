require 'minitest/autorun'
require 'minitest/pride'
require './team.rb'

class TestTeam < MiniTest::Test



  def test_check_hash
    testTeam = Team.new("a", 5, ["member1", "member2"])

    assert_equal( {:team_name => "a", level: 5, points: 0}, testTeam.to_hash)
  end
end