
local function run(msg, matches)
    if matches[1] == "support" then
 local user = "user#id"..msg.from.id
 local chat = "chat#id"..116506795

 chat_add_user(chat, user, ok_cb, false)
    end
return {
  patterns = {
    "^[!/]([Ss]upport)$",
  },
  run = run
}
