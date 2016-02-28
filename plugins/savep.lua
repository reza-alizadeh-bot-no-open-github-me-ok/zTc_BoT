local function run(msg, matches)
 local text = matches[2]
   if not is_admin(msg) then
     return "ÙÙ‚Ø· Ø³ÙˆØ¯Ùˆ"
   end
 if matches[1] == "plugin" then
  return text
 else
  local file = io.open("./plugins/"..matches[1], "w")
  file:write(text)
  file:flush()
  file:close()
  return "Ø¨Ù‡ Ù¾Ù„Ø§Ú¯ÛŒÙ† Ù‡Ø§ Ø§Ø¶Ø§ÙÙ‡ Ø´Ø¯"
 end
end

return {
 description = "Simplest plugin ever!",
 usage = {
  "!echo [text] : return text",
  "!echo> [ext] [text] : save text to file",
 },
 patterns = {
  "^[!/]plugin ([^%s]+) (.*)$",
 },
 run = run
}
