extends CharacterBody2D

@export var walking_speed = 400
@export var running_speed = 800

func get_input():
  var input_direction = Input.get_vector("left", "right", "up", "down")
  if Input.is_action_just_pressed("shift"):
    velocity = input_direction * running_speed
  else:
    velocity = input_direction * walking_speed

func _physics_process(_delta):
    get_input()
    move_and_slide()
