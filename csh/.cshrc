
# Ignore this file in non-interactive mode.
if ( ! ${?prompt} ) goto end

set prompt = "╭─%{\033[35m%}%n@%m%b %B%{\033[35m%}%C4  \ncsh$ "


end:
