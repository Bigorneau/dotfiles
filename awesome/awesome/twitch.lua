local https = require("ssl.https") -- lua-sec
local ltn12 = require("ltn12")
local json = require("json") -- lua-luajson

function table_print(t, indent)
  if not indent then
    indent = 0
  end
  for key, value in pairs(t) do
    format = string.rep(" ", indent) .. key .. ":"
    if type(value) == "table" then
      print(format)
      table_print(value, indent + 1)
    else
      print(format .. tostring(value))
    end
  end
end

function twitchRequest(ressource)
  local resp = {}
  local res, code, headers, status = https.request {
    method = "GET",
    headers = {
      ["Accept"] = "application/vnd.twitchtv.v2+json",
      },
    url = "https://api.twitch.tv/kraken/" .. ressource,
    sink = ltn12.sink.table(resp),
    protocol = "tlsv1",
    options = "all",
    verify = "none"
    }
  -- single string
  local s = ""
  if code == 200 then
    for i = 1, #resp do
      s = s .. resp[i]
    end
  end
  return s
end

function isempty(s)
  return s == nil or s == ""
end

function isfunction(s)
  return type(s) == "function"
end

function getUser(user)
  local s = twitchRequest("users/" .. user)
  if isempty(s) then
    return
  end
  res = json.decode(s)
  table_print(res)
end

function getStream(stream)
  local s = twitchRequest("streams/" .. stream)
  if isempty(s) then
    return
  end
  res = json.decode(s)
  -- table_print(res)
  -- Is the stream is offline the field is decoded as a function (why?)
  if not isempty(res.stream) and not isfunction(res.stream) then
    local name = res.stream.channel.display_name
    local url = res.stream.channel.url
    local game = res.stream.channel.game
    print(name .. " is live (" .. url .. ") on " .. game)
  end
end


local streams = {
  ["MisterMV"] = "mistermv",
  ["TheOddOne"] = "tsm_theoddone",
  ["OGaming Hearthstone"] = "ogaminghs",
}

for key, value in pairs(streams) do
  getStream(value)
end
