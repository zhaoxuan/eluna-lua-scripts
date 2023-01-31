fswatch -0 /Users/john/workspaces/lua/eluna-lua-scripts/*.lua | while read -d "" event; do
    echo "This file ${event} has changed."
    rsync -rauv --progress --rsh="ssh -p 22" ${event} dev@47.95.196.213:/home/dev/azeroth-server/lua_scripts/
done

