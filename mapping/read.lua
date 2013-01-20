
function key_up(k)
    cmd('xdotool keydown' .. k)
end

function key_down(k)
    cmd('xdotool keyup ' .. k)
end

function key(k)
    cmd ('xdotool key ' .. k)
end

button '3'
	explain 'Left'
	key 'Left'

button '1'
	explain 'Right'
	key 'Right'

button '4'
	explain 'Rotate left'
	cmd 'xrandr -o left'

button '5'
	explain 'Rotate right'
	cmd 'xrandr -o right'

button '9'
	explain 'Normal'
	cmd 'xrandr -o normal'

button '6'
	explain 'Full'
	key 'F11'

button '8'
	explain 'Tear down'
	key 'esc'
	key 'Alt+F4'
	notify { message = 'Destroyed' }