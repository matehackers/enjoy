x11 = {}

function x11.key_down(k)
    cmd('xdotool keydown' .. k)
end

function x11.key_down(k)
    cmd('xdotool keyup ' .. k)
end

function x11.key(k)
    cmd {
        down = x11.key_down,
        up = x11.key_up
    }
end

