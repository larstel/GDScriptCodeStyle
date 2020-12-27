tool
extends Button

func _on_Button_pressed():
	var test = EditorPlugin.new()
	var test2 = test.get_editor_interface().get_script_editor().get_current_script().get_source_code()
	print(test2)
