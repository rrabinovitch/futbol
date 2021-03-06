require './test/setup'
require './lib/team'

class TeamTest < Minitest::Test
  def setup
    team_params = ({
                    team_id: "1",
                    franchiseid: "23",
                    teamname: "Atlanta United",
                    abbreviation: "ATL",
                    link: "/api/v1/teams/1"
                  })
    @team = Team.new(team_params)
  end

  def test_it_exists
    assert_instance_of Team, @team
  end

  def test_it_has_attributes
    assert_equal "1", @team.team_id
    assert_equal "23", @team.franchise_id
    assert_equal "Atlanta United", @team.team_name
    assert_equal "ATL", @team.abbreviation
    assert_equal "/api/v1/teams/1", @team.link
  end

  def test_it_has_info_hash
    info_hash = @team.info
    assert_instance_of Hash, info_hash
    assert_equal "1", info_hash["team_id"]
    assert_equal "ATL", info_hash["abbreviation"]
  end

end
