tool
extends AudioStreamPlayer3D


var volume_base = db2linear(unit_db)


func _init():
	add_to_group("WorldAudio")
	update_volume(AudioSystem.volume_world)


func update_volume(volume : float):
	unit_db = linear2db(volume_base * volume)
