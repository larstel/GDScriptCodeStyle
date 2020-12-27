tool
extends EditorPlugin

var dock

func _enter_tree():
	# Initialization of the plugin goes here.
	# Load the dock scene and instance it.
	dock = preload("res://addons/gdscript_code_style/code_style_dock.tscn").instance()

	# Add the loaded scene to the docks.
	add_control_to_bottom_panel(dock, "CodeStyle")
	# Note that LEFT_UL means the left of the editor, upper-left dock.


func _exit_tree():
	# Clean-up of the plugin goes here.
	# Remove the dock.
	remove_control_from_bottom_panel(dock)
	# Erase the control from the memory.
	dock.queue_free()
