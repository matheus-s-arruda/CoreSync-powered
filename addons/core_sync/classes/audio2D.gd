tool
extends AudioStreamPlayer2D


var volume_base = db2linear(volume_db)


func _init():
	add_to_group("WorldAudio")
	update_volume(AudioSystem.volume_world)


func update_volume(volume : float):
	volume_db = linear2db(volume * volume_base)
