json.array!(@item_rankings) do |item_ranking|
  json.extract! item_ranking, :id, :rate, :item_id
  json.url item_ranking_url(item_ranking, format: :json)
end
