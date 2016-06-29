json.videoitem @videos do |video|
  json.url video.video.url
  json.latitude video.latitude
  json.longitude video.longitude
end
