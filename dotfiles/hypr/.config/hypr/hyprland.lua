-- hyprland.lua
-- See https://wiki.hypr.land/Configuring/Start/ for reference.

------------------
---- MONITORS ----
------------------
-- Your gaming monitor (Philips 272E1) pushed to its maximum 75Hz refresh rate
hl.monitor({
    output   = "HDMI-A-2",
    mode     = "1920x1080@74.97",
    position = "0x0",
    scale    = 1,
})

-- Your secondary office monitor (AOC) positioned to the left of the gaming monitor
hl.monitor({
    output   = "DP-2",
    mode     = "1920x1080@60.00",
    position = "-1920x0",
    scale    = 1,
})

---------------------
---- MY PROGRAMS ----
---------------------
-- Declared here, before anything that uses them.
local terminal    = "kitty"
local fileManager = "thunar"
local menu        = "rofi -show drun"

-------------------
---- AUTOSTART ----
-------------------
-- Alternate wallpaper daemons kept for reference; only gslapper is active below.
-- hl.exec_cmd("awww-daemon")
-- hl.exec_cmd("mpvpaper '*' ~/Pictures/wallpapers/animated/rivendell.mp4")
-- hl.exec_cmd("gslapper -o \"loop\" '*' /home/agust/Pictures/wallpapers/animated/rivendell.mp4")

hl.on("hyprland.start", function()
    hl.exec_cmd("hyprpolkitagent")
    hl.exec_cmd("gslapper -o \"loop\" '*' ~/Pictures/wallpapers/animated/rivendell_1080p.mp4")
    hl.exec_cmd("waybar")
    hl.exec_cmd("swaync")
    hl.exec_cmd("gnome-keyring-daemon --start --components=secrets")
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
    hl.exec_cmd("gsettings set org.gnome.desktop.interface icon-theme \"Papirus-Dark\"")
    hl.exec_cmd("gsettings set org.gnome.desktop.interface gtk-theme \"gruvbox-dark-gtk\"")
    hl.exec_cmd("rivalcfg -C FF0D00 -c FF0D00 --left-strip-top-color FF0D00 --right-strip-top-color FF0D00 --left-strip-middle-top-color FF0D00 --right-strip-middle-top-color FF0D00 --left-strip-middle-bottom-color FF0D00 --right-strip-middle-bottom-color FF0D00 --left-strip-bottom-color FF0D00 --right-strip-bottom-color FF0D00")
end)

-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-----------------------
---- LOOK AND FEEL ----
-----------------------
hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 10,
        border_size = 2,
        col = {
            active_border   = { colors = { "rgba(d8a657ee)", "rgba(e78a4eee)" }, angle = 45 },
            inactive_border = "rgba(5a524caa)",
        },
        resize_on_border = false,
        allow_tearing = true,
        layout = "dwindle",
    },
    decoration = {
        rounding = 12,
        rounding_power = 2,
        active_opacity = 1.0,
        inactive_opacity = 1.0,
        shadow = {
            enabled = false,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)",
        },
        blur = {
            enabled = true,
            size = 10,
            passes = 1,
            -- vibrancy = 0.1696,
            new_optimizations = true,
            xray = true,
            ignore_opacity = true,
            special = false,
            popups = false,
        },
    },
    animations = {
        enabled = true,
    },
})

hl.layer_rule({
    name = "noctalia",
    match = { namespace = "noctalia-background-.*$" },
    ignore_alpha = 0.5,
    blur = true,
    blur_popups = false,
})

-- Curves
hl.curve("easeOutQuint",   { type = "bezier", points = { { 0.23, 1 },    { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear",         { type = "bezier", points = { { 0, 0 },       { 1, 1 } } })
hl.curve("almostLinear",   { type = "bezier", points = { { 0.5, 0.5 },   { 0.75, 1 } } })
hl.curve("quick",          { type = "bezier", points = { { 0.15, 0 },    { 0.1, 1 } } })
hl.curve("smooth",         { type = "bezier", points = { { 0.25, 0.9 },  { 0.3, 1 } } })
hl.curve("fluidBounce",    { type = "bezier", points = { { 0.15, 0.85 }, { 0.2, 1.05 } } })

-- Animations
hl.animation({ leaf = "global",        enabled = true, speed = 10,   bezier = "default" })
hl.animation({ leaf = "border",        enabled = true, speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows",       enabled = true, speed = 6.5,  bezier = "fluidBounce" })
hl.animation({ leaf = "windowsIn",     enabled = true, speed = 6.5,  bezier = "fluidBounce",    style = "popin 80%" })
hl.animation({ leaf = "windowsOut",    enabled = true, speed = 3.0,  bezier = "linear",         style = "popin 80%" })
hl.animation({ leaf = "fadeIn",        enabled = true, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut",       enabled = true, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade",          enabled = true, speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers",        enabled = true, speed = 5.5,  bezier = "fluidBounce" })
hl.animation({ leaf = "layersIn",      enabled = true, speed = 5.5,  bezier = "fluidBounce",    style = "slide" })
hl.animation({ leaf = "layersOut",     enabled = true, speed = 3.0,  bezier = "fluidBounce",    style = "fade" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true, speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces",    enabled = true, speed = 2.40, bezier = "almostLinear",   style = "fade" })
hl.animation({ leaf = "workspacesIn",  enabled = true, speed = 2.40, bezier = "easeInOutCubic", style = "slide" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 2.40, bezier = "easeInOutCubic", style = "slide" })
hl.animation({ leaf = "zoomFactor",    enabled = true, speed = 7,    bezier = "quick" })

hl.config({
    dwindle = {
        -- pseudotile = true,
        preserve_split = true,
    },
    master = {
        new_status = "master",
    },
    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo = true,
        vrr = 2,
    },
    cursor = {
        -- Crucial for NVIDIA cards to prevent micro-stuttering during cursor updates
        no_hardware_cursors = true,
    },
    render = {
        direct_scanout = 1,
    },
})

---------------
---- INPUT ----
---------------
hl.config({
    input = {
        kb_layout = "se",
        follow_mouse = 1,
        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.
        accel_profile = "flat",
        touchpad = {
            natural_scroll = false,
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
})

-- Example per-device config
hl.device({
    name = "epic-mouse-v1",
    sensitivity = -0.5,
})

---------------------
---- KEYBINDINGS ----
---------------------
local mainMod = "SUPER" -- Sets "Windows" key as main modifier

hl.bind(mainMod .. " + N",         hl.dsp.exec_cmd("swaync-client -t"))
hl.bind(mainMod .. " + SHIFT + N", hl.dsp.exec_cmd("swaync-client -d"))
hl.bind(mainMod .. " + X",         hl.dsp.exec_cmd("wlogout"))
hl.bind(mainMod .. " + F12",         hl.dsp.exec_cmd("hyprshot -m output -m eDP-1"))
hl.bind(mainMod .. " + SHIFT + F12", hl.dsp.exec_cmd("hyprshot -m region --raw | satty --filename -"))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("pkill waybar || LC_TIME=sv_SE.UTF-8 waybar"))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = 0, action = "toggle" }))
hl.bind(mainMod .. " + A", hl.dsp.exec_cmd("kitty -e nvim"))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("zen-browser"))

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit")) -- dwindle only

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + SHIFT + left",  hl.dsp.window.swap({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.swap({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + up",    hl.dsp.window.swap({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + down",  hl.dsp.window.swap({ direction = "down" }))

-- Resize active window with keyboard (Alt + Control + HJKL)
local resizeOpts = { repeating = true }
hl.bind("ALT + CTRL + left",  hl.dsp.window.resize({ x = -30, y = 0,  relative = true }), resizeOpts)
hl.bind("ALT + CTRL + right", hl.dsp.window.resize({ x = 30,  y = 0,  relative = true }), resizeOpts)
hl.bind("ALT + CTRL + up",    hl.dsp.window.resize({ x = 0,   y = -30, relative = true }), resizeOpts)
hl.bind("ALT + CTRL + down",  hl.dsp.window.resize({ x = 0,   y = 30,  relative = true }), resizeOpts)

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness (locked + repeating, like bindel)
hl.bind("XF86AudioRaiseVolume",  hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume",  hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",         hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",      hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Requires playerctl (locked only, no repeat, like bindl)
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------
hl.window_rule({
    name = "fullscreen-gamescope",
    match = { class = "^(gamescope)$" },
    fullscreen = true,
})

hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

-- hl.window_rule({
--     name = "vscode-opacity",
--     match = { class = "^code$" },
--     opacity = "0.91, 0.91",
-- })

-- hl.window_rule({
--     name = "vesktop",
--     match = { class = "^(vesktop)$" },
--     opacity = "0.89, 0.89",
-- })

hl.window_rule({
    name = "thunar-glass",
    match = { class = "^thunar$" },
    opacity = "0.85 0.85",
})

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name = "fix-xwayland-drags",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },
    no_focus = true,
})

-- Hyprland-run windowrule
hl.window_rule({
    name = "move-hyprland-run",
    match = { class = "hyprland-run" },
    move = "20 monitor_h-120",
    float = true,
})

hl.window_rule({
    name = "gslapper-perf-override",
    match = { class = "^(gslapper)$" },
    no_blur = true,
    no_shadow = true,
    opaque = true,
    no_anim = true,
})

-- Game rules
hl.window_rule({
    name = "global-steam-gaming",
    match = { class = "^(steam_app_.*)$" },
    immediate = true,
    no_blur = true,
    no_shadow = true,
})

hl.window_rule({
    name = "global-heroic-and-xwayland-gaming",
    match = { class = "^(XWayland)$", fullscreen = true },
    immediate = true,
    no_blur = true,
    no_shadow = true,
})

hl.window_rule({
    name = "gslapper-perf-override",
    match = { class = "^(gslapper)$" },
    no_blur = true,
    no_shadow = true,
    opaque = true,
    no_anim = true,
})
