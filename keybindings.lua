local mainMod = "SUPER"

hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd("kitty"), { description = "Open terminal" })
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("~/.config/ml4w/settings/browser.sh"), { description = "Open browser" })
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("nautilus"), { description = "Open file manager" })
hl.bind(mainMod .. " + CTRL + E", hl.dsp.exec_cmd("~/.config/ml4w/settings/emojipicker.sh"), { description = "Open emoji picker" })
hl.bind(mainMod .. " + CTRL + C", hl.dsp.exec_cmd("~/.config/ml4w/settings/calculator.sh"), { description = "Open calculator" })

hl.bind(mainMod .. " + W", hl.dsp.window.close(), { description = "Kill active window" })

hl.bind(mainMod .. " + SHIFT + Q",
    hl.dsp.exec_cmd("hyprctl activewindow | grep pid | tr -d 'pid:' | xargs kill"),
    { description = "Kill all instances of active window" })

hl.bind(mainMod .. " + F",
    hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }),
    { description = "Fullscreen" })

hl.bind(mainMod .. " + M",
    hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }),
    { description = "Maximize" })

hl.bind(mainMod .. " + T", hl.dsp.window.float({ action = "toggle" }), { description = "Toggle floating" })

hl.bind(mainMod .. " + SHIFT + T",
    hl.dsp.exec_cmd("~/.config/ml4w/scripts/ml4w-toggle-allfloat"),
    { description = "Toggle all float" })
    
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.resize({ x = 100, y = 0, relative = true }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + left",  hl.dsp.window.resize({ x = -100, y = 0, relative = true }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + down",  hl.dsp.window.resize({ x = 0, y = 100, relative = true }), { repeating = true })
hl.bind(mainMod .. " + SHIFT + up",    hl.dsp.window.resize({ x = 0, y = -100, relative = true }), { repeating = true })

hl.bind(mainMod .. " + G", hl.dsp.group.toggle(), { description = "Toggle group" })

hl.bind(mainMod .. " + ALT + left",  hl.dsp.window.swap({ direction = "l" }))
hl.bind(mainMod .. " + ALT + right", hl.dsp.window.swap({ direction = "r" }))
hl.bind(mainMod .. " + ALT + up",    hl.dsp.window.swap({ direction = "u" }))
hl.bind(mainMod .. " + ALT + down",  hl.dsp.window.swap({ direction = "d" }))

hl.bind(mainMod .. " + CTRL + R", hl.dsp.exec_cmd("hyprctl reload"))

hl.bind(mainMod .. " + SHIFT + A", hl.dsp.exec_cmd("~/.config/hypr/scripts/toggle-animations.sh"))

hl.bind(mainMod .. " + PRINT", hl.dsp.exec_cmd("~/.config/hypr/scripts/screenshot.sh"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("~/.config/hypr/scripts/screenshot.sh"))

hl.bind(mainMod .. " + SHIFT + W", hl.dsp.exec_cmd("waypaper --random"))
hl.bind(mainMod .. " + CTRL + W", hl.dsp.exec_cmd("waypaper"))

hl.bind(mainMod .. " + ALT + W", hl.dsp.exec_cmd("~/.config/hypr/scripts/wallpaper-automation.sh"))

hl.bind(mainMod .. " + Tab",
    hl.dsp.exec_cmd("pkill rofi || rofi -show drun -replace -i"))

hl.bind(mainMod .. " + CTRL + K",
    hl.dsp.exec_cmd("~/.config/hypr/scripts/keybindings.sh"))

hl.bind(mainMod .. " + SHIFT + B",
    hl.dsp.exec_cmd("~/.config/waybar/launch.sh"))

hl.bind(mainMod .. " + CTRL + B",
    hl.dsp.exec_cmd("~/.config/waybar/toggle.sh"))

hl.bind(mainMod .. " + SHIFT + R",
    hl.dsp.exec_cmd("~/.config/hypr/scripts/loadconfig.sh"))

hl.bind(mainMod .. " + V",
    hl.dsp.exec_cmd("~/.config/ml4w/scripts/cliphist.sh"))

hl.bind(mainMod .. " + CTRL + T",
    hl.dsp.exec_cmd("~/.config/waybar/themeswitcher.sh"))

hl.bind(mainMod .. " + CTRL + S",
    hl.dsp.exec_cmd("flatpak run com.ml4w.settings"))

hl.bind(mainMod .. " + SHIFT + H",
    hl.dsp.exec_cmd("~/.config/hypr/scripts/hyprshade.sh"))

hl.bind(mainMod .. " + ALT + G",
    hl.dsp.exec_cmd("~/.config/hypr/scripts/gamemode.sh"))

hl.bind(mainMod .. " + CTRL + L",
    hl.dsp.exec_cmd("~/.config/hypr/scripts/power.sh lock"))
    
for i = 1, 10 do
    hl.bind(mainMod .. " + " .. i % 10, hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. i % 10, hl.dsp.window.move({ workspace = i }))
end

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

hl.bind("ALT + Tab",
    hl.dsp.exec_cmd("grimblast copysave output"),
    { description = "Screenshot output" }
)

-- hl.bind("ALT + Tab", hl.dsp.window.switch(), { description = "Switch window" })

hl.bind("XF86AudioRaiseVolume",
    hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"),
    { locked = true, repeating = true })

hl.bind("XF86AudioLowerVolume",
    hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
    { locked = true, repeating = true })

hl.bind("XF86AudioMute",
    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
    { locked = true })

hl.bind("XF86AudioMicMute",
    hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
    { locked = true })

hl.bind("XF86AudioPlay",
    hl.dsp.exec_cmd("playerctl play-pause"))

hl.bind("XF86AudioNext",
    hl.dsp.exec_cmd("playerctl next"))

hl.bind("XF86AudioPrev",
    hl.dsp.exec_cmd("playerctl previous"))
