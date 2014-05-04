local https = require("ssl.https")
local ltn12 = require("ltn12")
local json = require("json")

function table_print(t, indent)
  if not indent then
    indent = 0
  end
  for key, value in pairs(t) do
    format = string.rep(" ", indent) .. key .. ":"
    if type(value) == "table" then
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

function getUser(user)
  local s = twitchRequest("users/" .. user)
  if s == nil or s == "" then
    return
  end
  res = json.decode(s)
  table_print(res)
end

function getStream(stream)
  local s = twitchRequest("streams/" .. stream)
  if s == nil or s == "" then
    return
  end
  res = json.decode(s)
  table_print(res)
end

--getUser("mistermv")
getStream("tsm_theoddone")
