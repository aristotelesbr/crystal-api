class Point < Jennifer::Model::Base
  with_timestamps

  mapping(
    id: Primary64,
    coordinates: {type: Array(Int32)},
    created_at: Time?,
    updated_at: Time?,
  )
end
