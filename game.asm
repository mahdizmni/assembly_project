#####################################################################
#
# CSCB58 Winter 2022 Assembly Final Project
# University of Toronto, Scarborough
#
# Student: Name, Student Number, UTorID, official email
#
# Bitmap Display Configuration:
# - Unit width in pixels: 4 (update this as needed)
# - Unit height in pixels: 4 (update this as needed)
# - Display width in pixels: 256 (update this as needed)
# - Display height in pixels: 256 (update this as needed)
# - Base Address for Display: 0x10008000 ($gp)
#
# Which milestones have been reached in this submission?
# (See the assignment handout for descriptions of the milestones)
# - Milestone 1/2/3 (choose the one the applies)
#
# Which approved features have been implemented for milestone 3?
# (See the assignment handout for the list of additional features)
# 1. (fill in the feature, if any)
# 2. (fill in the feature, if any)
# 3. (fill in the feature, if any)
# ... (add more if necessary)
#
# Link to video demonstration for final submission:
# - (insert YouTube / MyMedia / other URL here). Make sure we can view it!
#
# Are you OK with us sharing the video with people outside course staff?
# - yes / no / yes, and please share this project github link as well!
#
# Any additional information that the TA needs to know:
# - (write here, if any)
#
#####################################################################

.data


#  DEFINE
.eqv 	BASE_ADDRESS 	0x10008000
.eqv    TDELAY		0

.text
.globl main

main:

li  $t0, BASE_ADDRESS

# draw the level			
addi	$t0, $t0, 1920		# (0, 15)

li $t5, 0xA0522D		# brown colour

# draw the platform			
sw  $t5, 0($t0) 
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0) 
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi	$t0, $t0, 128
sw  $t5, 0($t0)
addi	$t0, $t0, 128
sw  $t5, 0($t0)
addi	$t0, $t0, 128
sw  $t5, 0($t0)
addi	$t0, $t0, 128
sw  $t5, 0($t0)
addi	$t0, $t0, 128
sw  $t5, 0($t0)
addi	$t0, $t0, 128
sw  $t5, 0($t0)
addi	$t0, $t0, 128
sw  $t5, 0($t0)
addi	$t0, $t0, 128
sw  $t5, 0($t0)
addi	$t0, $t0, 128
sw  $t5, 0($t0)
addi	$t0, $t0, 128
sw  $t5, 0($t0)
addi	$t0, $t0, 128
sw  $t5, 0($t0)
addi	$t0, $t0, 128
sw  $t5, 0($t0)
addi	$t0, $t0, 128
sw  $t5, 0($t0)
addi	$t0, $t0, 128
sw  $t5, 0($t0)
addi	$t0, $t0, 128
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi   $t0, $t0, -128
sw  $t5, 0($t0)
addi   $t0, $t0, -128
sw  $t5, 0($t0)
addi   $t0, $t0, -128
sw  $t5, 0($t0)
addi   $t0, $t0, -128
sw  $t5, 0($t0)
addi   $t0, $t0, -128
sw  $t5, 0($t0)
addi   $t0, $t0, -128
sw  $t5, 0($t0)
addi   $t0, $t0, -128
sw  $t5, 0($t0)
addi   $t0, $t0, -128
sw  $t5, 0($t0)
addi   $t0, $t0, -128
sw  $t5, 0($t0)
addi   $t0, $t0, -128
sw  $t5, 0($t0)
addi   $t0, $t0, -128
sw  $t5, 0($t0)
addi   $t0, $t0, -128
sw  $t5, 0($t0)
addi   $t0, $t0, -128
sw  $t5, 0($t0)
addi   $t0, $t0, -128
sw  $t5, 0($t0)
addi   $t0, $t0, -128
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0)
addi   $t0, $t0, 4
sw  $t5, 0($t0)



# draw floating platform starting
li  $t0, BASE_ADDRESS	# restart to base address
addi	$t0, $t0, 1984 	# (16, 15)
sw  $t5, 0($t0)
addi	$t0, $t0, 4
sw  $t5, 0($t0)
addi	$t0, $t0, 4
sw  $t5, 0($t0)
addi	$t0, $t0, 4
sw  $t5, 0($t0)
addi	$t0, $t0, 4
sw  $t5, 0($t0)

# draw floating platform 2 

li  $t0, BASE_ADDRESS	# restart to base address
addi	$t0, $t0, 3008 	# (16, 23)
sw  $t5, 0($t0)

# draw shooter
li  $t0, BASE_ADDRESS	# restart to base address
addi	$t0, $t0, 2204 	# (7, 17)
li $t5, 0x800909	# red colour
sw  $t5, 0($t0)

# draw the blades / fire

li  $t0, BASE_ADDRESS	# restart to base address
li $t5, 0x800909	# red colour
addi	$t0, $t0, 3796 	# (21, 29)
sw  $t5, 0($t0)

li  $t5, 0xFBB741		# fire colour

addi	$t0, $t0, 4 	# (22, 29)
sw  $t5, 0($t0)
li $t5, 0x800909	# red colour
addi	$t0, $t0, 4 	
sw  $t5, 0($t0)
li  $t5, 0xFBB741		# fire colour
addi	$t0, $t0, 4 	
sw  $t5, 0($t0)
li $t5, 0x800909	# red colour
addi	$t0, $t0, 4 	
sw  $t5, 0($t0)
li  $t5, 0xFBB741		# fire colour
addi	$t0, $t0, 4 	
sw  $t5, 0($t0)
li $t5, 0x800909	# red colour
addi	$t0, $t0, 4 	
sw  $t5, 0($t0)

li $t5, 0x757676	# smoke colour
addi	$t0, $t0, -132
sw  $t5, 0($t0)
addi	$t0, $t0, -8
sw  $t5, 0($t0)
addi	$t0, $t0, -8
sw  $t5, 0($t0)

# draw the charactar

li  $t0, BASE_ADDRESS	# restart to base address
li    $t5, 0xA89C90		# mushroom colour
addi	$t0, $t0, 1796   # (0, 14)
sw	$t5, 0($t0)
addi	$t0, $t0, -124   # (0, 13)
sw	$t5, 0($t0)
addi	$t0, $t0, -4
sw	$t5, 0($t0)
addi	$t0, $t0, -4
sw	$t5, 0($t0)










# Keyboard stuff
li $t9, 0xffff0000		# key press will be there
lw $t8, 0($t9)			# 1, if key has pressed
beq $t8, 1, keypress_happened
keypress_happened:
lw $t2, 4($t9) # the next word in memory stores the key that were pressed
beq $t2, 0x61, respond_to_a # ASCII code of 'a' is 0x61 or 97 in decimal
respond_to_a:

EXIT: 

	li $v0, 10
	syscall
