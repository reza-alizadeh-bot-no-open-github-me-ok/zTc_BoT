do

function run(msg, matches)
return "خداحافظ, " .. matches[1]
end

return {
description = "Says hello to someone", 
usage = "خداحافظی کن با [name]",
patterns = {
"^خداحافظی کن با (.*)$",
"^خداحافظی کن با (.*)$"
}, 
run = run 
}

end
