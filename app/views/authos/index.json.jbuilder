json.array!(@authos) do |autho|
  json.extract! autho, :id, :username, :email, :password, :password_confirmation
  json.url autho_url(autho, format: :json)
end
