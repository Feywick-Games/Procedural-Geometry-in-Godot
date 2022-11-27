class_name Geometry
extends MeshInstance

var surface_array : Array
export var has_normals : bool = false

func _enter_tree() -> void:
	pass

func _ready() -> void:
	surface_array = []
	surface_array.resize(Mesh.ARRAY_MAX)

	var verts = PoolVector3Array(
		[
			  Vector3(-0.5,0.5,-0.5)
			, Vector3(0.5,0.5,-0.5)
			, Vector3(0.5,-0.5,-0.5)
			, Vector3(-0.5, -0.5,-0.5)
			
			, Vector3(-0.5, 0.5, 0.5)
			, Vector3(0.5,  0.5, 0.5)
			, Vector3(0.5, -0.5, 0.5)
			, Vector3(-0.5,-0.5, 0.5)
		]
	)
	# add reversal of indices
	# write camera controller
	# clarify cardinality of axis
	# explain powers of 2
	var indices = PoolIntArray(
		[
			  0,1,2,0
			, 2,3,0,2
			
			, 0,4,5,0
			, 1,0,5,1
		]
	)
	var normals = PoolVector3Array(
		[
			  Vector3.AXIS_Z
			, Vector3.AXIS_Z
			, Vector3.AXIS_Z
			, Vector3.AXIS_Z
			, Vector2.AXIS_Y
			, Vector2.AXIS_Y
			, Vector2.AXIS_Y
			, Vector2.AXIS_Y
		]
	)
	
	var uvs = PoolVector2Array(
		[
			Vector2(0,0)
			, Vector2(1,0)
			, Vector2(1,1)
			, Vector2(0,1)
			, Vector2(0,0)
			, Vector2(1,0)
			, Vector2(1,1)
			, Vector2(0,1)
		]
	)

	surface_array[Mesh.ARRAY_VERTEX] = verts
	surface_array[Mesh.ARRAY_INDEX] = indices
	if has_normals:
		surface_array[Mesh.ARRAY_NORMAL] = normals
	surface_array[Mesh.ARRAY_TEX_UV] = uvs
	mesh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES, surface_array)
#	print(Mesh.ARRAY_VERTEX)
#	print(Mesh.ARRAY_TEX_UV)
