tool
extends EditorPlugin


const AUDIO3D = preload("res://addons/core_sync/classes/audio3D.gd")
const ICONE3D = preload("res://addons/core_sync/img/audio3D.svg")

const AUIDO2D = preload("res://addons/core_sync/classes/audio2D.gd")
const ICONE2D = preload("res://addons/core_sync/img/audio2D.svg")

const TIMELINE = preload("res://addons/core_sync/classes/timeline.gd")
const TIMELINE_ICON = preload("res://addons/core_sync/img/timeline.svg")

const PATTERN = preload("res://addons/core_sync/classes/pattern.gd")
const PATERN_ICON = preload("res://addons/core_sync/img/pattern.svg")

const RHYTHM = preload("res://addons/core_sync/classes/rhythm.gd")
const RHYTHM_ICON = preload("res://addons/core_sync/img/rhythm.svg")

const EVENT = preload("res://addons/core_sync/classes/event.gd")
const EVENT_ICON = preload("res://addons/core_sync/img/call.svg")


func _enter_tree():
	add_autoload_singleton("AudioSystem", "res://addons/core_sync/classes/audio_system.gd")
	add_autoload_singleton("CoreSync", "res://addons/core_sync/classes/autoload.gd")
	add_custom_type("Audio3D", "AudioStreamPlayer3D", AUDIO3D, ICONE3D)
	add_custom_type("Audio2D", "AudioStreamPlayer2D", AUIDO2D, ICONE2D)
	add_custom_type("Timeline", "Node", TIMELINE, TIMELINE_ICON)
	add_custom_type("Pattern", "Node", PATTERN, PATERN_ICON)
	add_custom_type("Rhythm", "Node", RHYTHM, RHYTHM_ICON)
	add_custom_type("RhythmEvent", "Node", EVENT, EVENT_ICON)


func _exit_tree():
	remove_autoload_singleton("AudioSystem")
	remove_autoload_singleton("CoreSync")
	remove_custom_type("Timeline")
	remove_custom_type("Pattern")
	remove_custom_type("Rhythm")
	remove_custom_type("RhythmEvent")
	remove_custom_type("Audio3D")
	remove_custom_type("Audio2D")

