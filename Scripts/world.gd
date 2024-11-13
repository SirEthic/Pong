extends Node2D

var left_score = 0
var right_score = 0

@onready var ball = $Ball
@onready var left_score_label = $Left
@onready var right_score_label = $Right

func _process(_delta):
	if ball.position.x < 0:
		right_score += 1
		reset_ball()
	elif ball.position.x > get_viewport_rect().size.x:
		left_score += 1
		reset_ball()
	
	left_score_label.text = str(left_score)
	right_score_label.text = str(right_score)

func reset_ball():
	ball.position = get_viewport_rect().size / 2
	ball._ready()
