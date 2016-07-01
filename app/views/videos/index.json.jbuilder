json.array! @videos do |video|
  json.url request.base_url + video.video.url
  json.latitude video.latitude
  json.longitude video.longitude
end
