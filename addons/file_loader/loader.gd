tool
extends Node

signal loaded_file



func load_external_texture(path):
	var image = Image.new()
	image.load(path)
	var result = ImageTexture.new()
	result.create_from_image(image)
	emit_signal("loaded_file")
	return result


func load_external_mp3(path):
	var mp3_file = File.new()
	mp3_file.open(path, File.READ)
	var bytes = mp3_file.get_buffer(mp3_file.get_len())
	var stream = AudioStreamMP3.new()
	stream.data = bytes
	emit_signal("loaded_file")
	mp3_file.close()
	return stream


func load_external_wav(path):
	var wav_file = File.new()
	wav_file.open(path, File.READ)
	var bytes = wav_file.get_buffer(wav_file.get_len())
	var stream = AudioStreamMP3.new()
	stream.data = bytes
	emit_signal("loaded_file")
	wav_file.close()
	return stream


func load_external_ogg(path):
	var ogg_file = File.new()
	ogg_file.open(path, File.READ)
	var bytes = ogg_file.get_buffer(ogg_file.get_len())
	var stream = AudioStreamMP3.new()
	stream.data = bytes
	emit_signal("loaded_file")
	ogg_file.close()
	return stream


func load_external_godot_resource(path):
	var resource = ResourceLoader.load(path)
	return resource

