
extends Node3D

var player: CharacterBody3D
var camera: Camera3D
var timer := 120.0
var score := 0
var movement := Vector2.ZERO
var jumping := false

func _ready():
    var floor = StaticBody3D.new()
    var mesh = MeshInstance3D.new()
    var shape = CollisionShape3D.new()
    var box = BoxMesh.new()
    box.size = Vector3(26, 1, 26)
    mesh.mesh = box
    shape.shape = BoxShape3D.new()
    shape.shape.size = box.size
    floor.position.y = -0.5
    floor.add_child(mesh)
    floor.add_child(shape)
    add_child(floor)

    var light = DirectionalLight3D.new()
    light.rotation_degrees = Vector3(-45, -30, 0)
    add_child(light)

    player = CharacterBody3D.new()
    player.position.y = 2
    var body = MeshInstance3D.new()
    body.mesh = CapsuleMesh.new()
    player.add_child(body)
    var collision = CollisionShape3D.new()
    collision.shape = CapsuleShape3D.new()
    player.add_child(collision)
    add_child(player)

    camera = Camera3D.new()
    camera.position = Vector3(0, 5, 9)
    camera.rotation_degrees.x = -25
    camera.current = true
    player.add_child(camera)

func _physics_process(delta):
    if timer > 0:
        timer -= delta

    var input = Input.get_vector(
        "move_left", "move_right",
        "move_forward", "move_back"
    )
    input += movement
    input = input.limit_length(1)

    player.velocity.x = input.x * 7
    player.velocity.z = input.y * 7
    if player.is_on_floor() and jumping:
        player.velocity.y = 7
        jumping = false
    player.velocity.y -= 20 * delta
    player.move_and_slide()
