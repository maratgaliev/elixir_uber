defmodule ElixirUber.Model.ClientConfig do
  defstruct client_id: nil, client_secret: nil, redirect_uri: nil, access_token: nil
end

defmodule ElixirUber.Model.User do
  defstruct email: nil, first_name: nil, last_name: nil, mobile_verified: nil, picture: nil, promo_code: nil, rider_id: nil, uuid: nil
end

defmodule ElixirUber.Model.History do
  defstruct count: nil, history: nil, limit: nil, offset: nil
end

defmodule ElixirUber.Model.HistoryItem do
  defstruct distance: nil, end_time: nil, product_id: nil, request_id: nil, request_time: nil, start_city: nil, start_time: nil, status: nil
end

defmodule ElixirUber.Model.StartCity do
  defstruct display_name: nil, latitude: nil, longitude: nil
end