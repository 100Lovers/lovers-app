json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :image, :introduction, :status_id
  json.url user_url(user, format: :json)
end
