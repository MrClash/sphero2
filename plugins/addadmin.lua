do
local function callback(extra, success, result)
    vardump(success)
    cardump(result)
end
    function run(msg, matches)
        if not is_momod or not is_owner then
    return "فقط صاحب اینجا میتونه بابامو بگه اد کنم."
end
    local user = 'user#136888679'
    local chat = 'channel#id'..msg.to.id
    chat_add_user(chat, user, callback, false)
    return "بابام اومد به: "..string.gsub(msg.to.print_name, "_", " ")..'['..msg.to.id..']'
end
return {
    usage = {
      "Addadmin: Add Sudo In Group."
      },
    patterns = {
        "^([Aa]ddadmin)$"
        },
    run = run
}
end
