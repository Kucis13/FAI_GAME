extends CharacterBody2D

@export var speed = 100


func _physics_process(delta):
	var direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	velocity += direction * speed * delta
	
	
	
	print(velocity)
	
	if velocity == Vector2.ZERO:
		$AnimationTree.set("parameters/Idle/blend_position",Vector2(0,1))
	else:
		$AnimationTree.set("parameters/Idle/blend_position",direction)
		move_and_slide()
