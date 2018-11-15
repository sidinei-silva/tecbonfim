json.extract! user, :id, :cpf, :nome, :oficina_id, :created_at, :updated_at
json.url user_url(user, format: :json)
