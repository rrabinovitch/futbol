class Team
  attr_reader :team_id,
              :franchise_id,
              :team_name,
              :abbreviation,
              :link

  def initialize(team_params)
    @team_id = team_params[:team_id]
    @franchise_id = team_params[:franchiseid]
    @team_name = team_params[:teamname]
    @abbreviation = team_params[:abbreviation]
    @link = team_params[:link]
  end

  def info
    {
      "team_id" => @team_id,
      "franchise_id" => @franchise_id,
      "team_name" => @team_name,
      "abbreviation" => @abbreviation,
      "link" => @link
    }
  end
end
