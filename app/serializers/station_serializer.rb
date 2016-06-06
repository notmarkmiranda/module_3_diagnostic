class StationSerializer < ActiveModel::Serializer
  attributes :name, :address, :fuel_type_code, :distance, :access_day_times
  # Name, Address, Fuel Types, Distance, and Access Times
end
