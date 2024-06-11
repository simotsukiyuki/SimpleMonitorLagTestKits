extends Button


func _button_pressed():
	var vsync_mode = DisplayServer.window_get_vsync_mode(0)
	
	if vsync_mode == DisplayServer.VSYNC_ENABLED:
		text="V-Sync is Disabled, Click to Enable V-Sync"
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)
	else :
		text="V-Sync is Enabled, Click to Disable V-Sync"
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_ENABLED)
