tool
extends EditorPlugin


func _enter_tree():
	add_autoload_singleton("Loader", "res://addons/file_loader/loader.gd")


func _exit_tree():
	remove_autoload_singleton("Loader")
