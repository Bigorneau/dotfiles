local awful = require("awful")

package.loaded.custom = nil

-- This is used later as the default terminal and editor to run.
terminal = "st -e tmux"
editor = os.getenv("EDITOR") or "vim"

-- Default modkey.
-- Usually, Mod4 is the key with a logo between Control and Alt.
-- If you do not like this or do not have such a key,
-- I suggest you to remap Mod4 to another key using xmodmap or other tools.
-- However, you can use another modifier like Mod1, but it may interact with others.
modkey = "Mod4"

-- Define a tag table which hold all screen tags.
tags = {
  names  = { "✏️", "🌐", "💬", "🎬", "🎮" },
  usage = { "editor", "web", "chat", "media", "games" },
  layouts = { awful.layout.suit.max,
              awful.layout.suit.max.fullscreen,
              awful.layout.suit.tile,
              awful.layout.suit.fair,
              awful.layout.suit.tile }
}

local custom = {
    -- This is used later as the default terminal and editor to run.
    terminal = terminal,
    editor = editor,
    editor_cmd = terminal .. " -e " .. editor,

    -- Default modkey.
    -- Usually, Mod4 is the key with a logo between Control and Alt.
    -- If you do not like this or do not have such a key,
    -- I suggest you to remap Mod4 to another key using xmodmap or other tools.
    -- However, you can use another modifier like Mod1, but it may interact with others.
    modkey = modkey,

    tags = tags,
}

return custom
