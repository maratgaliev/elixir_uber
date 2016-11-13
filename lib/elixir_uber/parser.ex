defmodule ElixirUber.Parser do

  def parse_user(object) do
    struct(ElixirUber.Model.User, object)
  end

  def parse_history_items(object) do
    data = struct(ElixirUber.Model.HistoryItem, object)
    start_city = parse_start_city(data)
    %{data | start_city: start_city}
  end

  def parse_start_city(object) do
    struct(ElixirUber.Model.StartCity, object.start_city)
  end

  def parse_history(object) do
    data = struct(ElixirUber.Model.History, object)
    history_items = Enum.map(data.history, &parse_history_items/1)
    %{data | history: history_items}
  end

  def parse_payment_methods(object) do
    data = struct(ElixirUber.Model.PaymentMethods, object)
    payment_methods = Enum.map(data.payment_methods, &parse_payment_method/1)
    %{data | payment_methods: payment_methods}
  end

  def parse_payment_method(object) do
    struct(ElixirUber.Model.PaymentMethod, object)
  end

  def parse_places(object) do
    struct(ElixirUber.Model.Place, object)
  end

  def parse_products(object) do
    data = struct(ElixirUber.Model.Products, object)
    products = Enum.map(data.products, &parse_product/1)
    %{data | products: products}
  end

  def parse_product(object) do
    struct(ElixirUber.Model.Product, object)
  end

  def parse_request(object) do
    struct(ElixirUber.Model.Request, object)
  end

  def parse_receipt(object) do
    struct(ElixirUber.Model.Receipt, object)
  end
end