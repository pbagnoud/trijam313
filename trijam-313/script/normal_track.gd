extends AudioStreamPlayer
@onready var normal_track: AudioStreamPlayer = $"."

func speed_up():
	var tween = get_tree().create_tween()
	var ori=pitch_scale
	tween.tween_property(normal_track, "pitch_scale", ori*1.2,3)
	 
