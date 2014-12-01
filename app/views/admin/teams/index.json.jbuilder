json.array!(@admin_teams) do |admin_team|
  json.extract! admin_team, :id
  json.url admin_team_url(admin_team, format: :json)
end
