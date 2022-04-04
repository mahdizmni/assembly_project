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
.eqv    TDELAY		100

.text
.globl main

main:

li  $t0, BASE_ADDRESS

# clear whole screen 
li   $t5, 0x000000
li $t2, 0
li $t8, 31

clear:

	bge	$t2, $t8, draw
	sw	$t5, 0($t0)
	sw	$t5, 4($t0)
	sw	$t5, 8($t0)
	sw	$t5, 12($t0)
	sw	$t5, 16($t0)
	sw	$t5, 20($t0)
	sw	$t5, 24($t0)
	sw	$t5, 28($t0)
	sw	$t5, 32($t0)
	sw	$t5, 36($t0)
	sw	$t5, 40($t0)
	sw	$t5, 44($t0)
	sw	$t5, 48($t0)
	sw	$t5, 52($t0)
	sw	$t5, 56($t0)
	sw	$t5, 60($t0)
	sw	$t5, 64($t0)
	sw	$t5, 68($t0)
	sw	$t5, 72($t0)
	sw	$t5, 76($t0)
	sw	$t5, 80($t0)
	sw	$t5, 84($t0)
	sw	$t5, 88($t0)
	sw	$t5, 92($t0)
	sw	$t5, 96($t0)
	sw	$t5, 100($t0)
	sw	$t5, 104($t0)
	sw	$t5, 108($t0)
	sw	$t5, 112($t0)
	sw	$t5, 116($t0)
	sw	$t5, 120($t0)
	sw	$t5, 124($t0)
	
	addi	$t0, $t0, 128
	addi	$t2, $t2, 1
	j clear
draw:

li  $t0, BASE_ADDRESS			
# draw the level

addi	$t0, $t0, 1408		# (0, 11)

li $t5, 0xA0522D		# brown colour

# draw the platform			
sw  $t5, 0($t0) 
addi   $t0, $t0, 128
sw  $t5, 0($t0)
addi   $t0, $t0, 128
sw  $t5, 0($t0)
addi   $t0, $t0, 128
sw  $t5, 0($t0)
addi   $t0, $t0, 128
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
# draw pickup
li $t5, 0xfff220	# yellow colour
addi   $t0, $t0, -128
sw  $t5, 0($t0)
addi   $t0, $t0, -128
sw  $t5, 0($t0)
addi   $t0, $t0, -128
sw  $t5, 0($t0)


# draw floating platform starting
li $t5, 0xA0522D		# brown colour
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
addi	$t0, $t0, 3636 	# (13, 28)
sw  $t5, 0($t0)
sw  $t5, 4($t0)
sw  $t5, 8($t0)
sw  $t5, 12($t0)
sw  $t5, 16($t0)
addi	$t0, $t0, 16
sw  $t5, -128($t0)
sw  $t5, -256($t0)
addi	$t0, $t0, -256
addi	$t0, $t0, -248
sw  $t5, 0($t0)
addi	$t0, $t0, -248
sw  $t5, 0($t0)
addi	$t0, $t0, -248
sw  $t5, -264($t0)		# may show up randomly
sw  $t5, 0($t0)

addi	$t0, $t0, -248

sw  $t5, 0($t0)			# may vanish randomly 

# vanishing platform with random generator



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
addi	$t0, $t0, 1800   # (1, 14)
sw	$t5, 0($t0)
addi	$t0, $t0, -124   # (0, 13)
sw	$t5, 0($t0)
addi	$t0, $t0, -4
sw	$t5, 0($t0)
addi	$t0, $t0, -4
sw	$t5, 0($t0)

# temp keys  $t8, $t2

li  $t0, BASE_ADDRESS	# restart to base address
addi  $t0, $t0,   1672     # player (core) position initially (2, 13)	$t0
addi  $t1, $t0, 120	# pickup position (1, 31)			$t1
li  $t0, BASE_ADDRESS	# restart to base address
addi	$t6, $t0, 2204 	# (7, 17)	shooter position
addi	$t7,	$t6, 0		# copy of $t6 
li $t5, 0x800909	# red colour
sw  $t5, 0($t6)		# draw shooter


# game  main loop
main_loop:
	# while the player have not touched pick up (t0 + 4 != t1)
	addi	$t2, $t0, 4		# temporay
	beq	$t2, $t1, EXIT_LOOP
	
	# enemy shoot motion
		# if facing the platform, restart
		addi	$t2, $t7, 4
		lw	$t2, 0($t2)
		li $t5, 0xA0522D		# brown colour
		bne	$t5, $t2, shooter
		# clear the previous pic
		li   $t5, 0x000000
		sw   $t5, 0($t7)
		addi	$t7, $t6, 0		# reset to initial location
	shooter:
		# clear the previous pic
		li   $t5, 0x000000
		sw   $t5, 0($t7)
		# update shooter location
		addi 	$t7, $t7, 4
		# draw shooter
		li $t5, 0x800909	# red colour
		sw  $t5, 0($t7)
	
	
	
	# syscall delay
	li $v0, 32
	li $a0, TDELAY # Wait 1 second 
	syscall
	
	# get keyboard input
	Keyboard_input:
		li $t2, 0xffff0000		# key press will be there
		lw $t8, 0($t2)			# 1, if key has pressed
		beq $t8, 1, keypress_happened
		j main_loop	# * will get replaced to label after keyboard
		
		keypress_happened:
			lw $t2, 4($t2) # the next word in memory stores the key that were pressed
			beq $t2, 0x64, respond_to_d # ASCII code of 'd' 
			beq $t2, 0x61, respond_to_a # ASCII code of 'a' 
			beq $t2, 0x77, respond_to_w # ASCII code of 'w' 
			beq $t2, 0x65, respond_to_e # ASCII code of 'e' 
			beq $t2, 0x71, respond_to_q # ASCII code of 'q' 
			beq $t2, 0x70, respond_to_p # ASCII code of 'p' 

			j main_loop			# * will get replaced to label after keyboard
			
			respond_to_p:
				j	main
			
			respond_to_d:	# move right
				# if right is platform
				li	$t5, 0xA0522D		# brown colour
				addi	$t2, $t0, 8		# temporay
				lw	$t2, 0($t2)
				beq	$t2, $t5, main_loop
				# clear the left element
				li   $t5, 0x000000
				sw   $t5, -4($t0)
				# clear bottom element
				sw   $t5, 128($t0)
				# update the core
				addi 	$t0, $t0, 4
				# add right element
				li    $t5, 0xA89C90		# mushroom colour
				sw   $t5, 4($t0)
				# add bottom element
				sw   $t5, 128($t0)
				
				j Gravity
					
			respond_to_e:	# move up right
				# clear all
				# clear the left element
				li   $t5, 0x000000
				sw   $t5, -4($t0)
				# clear the right element
				sw   $t5, 4($t0)
				# clear core
				sw   $t5, 0($t0)
				# clear bottom element
				sw   $t5, 128($t0)
				# update the core
				addi 	$t0, $t0, -248
				# add core
				li    $t5, 0xA89C90		# mushroom colour
				sw   $t5, 0($t0)
				# add right element
				sw   $t5, 4($t0)
				# add left element
				sw   $t5, -4($t0)
				# add bottom element
				sw   $t5, 128($t0)
				
				j Gravity	
				
			respond_to_q:	# move up left
				
				# clear all
				# clear the left element
				li   $t5, 0x000000
				sw   $t5, -4($t0)
				# clear the right element
				sw   $t5, 4($t0)
				# clear core
				sw   $t5, 0($t0)
				# clear bottom element
				sw   $t5, 128($t0)
				# update the core
				addi 	$t0, $t0, -264
				# add core
				li    $t5, 0xA89C90		# mushroom colour
				sw   $t5, 0($t0)
				# add right element
				sw   $t5, 4($t0)
				# add left element
				sw   $t5, -4($t0)
				# add bottom element
				sw   $t5, 128($t0)
				
				j Gravity
				
			respond_to_a:	# move left
				# if left is platform
				li	$t5, 0xA0522D		# brown colour
				addi	$t2, $t0, -8		# temporay
				lw	$t2, 0($t2)
				beq	$t2, $t5, main_loop
				# clear the right element
				li   $t5, 0x000000
				sw   $t5, 4($t0)
				# clear bottom element
				sw   $t5, 128($t0)
				# update the core
				addi 	$t0, $t0, -4
				# add left element
				li    $t5, 0xA89C90		# mushroom colour
				sw   $t5, -4($t0)
				# add bottom element
				sw   $t5, 128($t0)
				
				j Gravity	
				
			respond_to_w:
				# move up 2 units
				# clear the left element
				li   $t5, 0x000000
				sw   $t5, -4($t0)
				# clear the right element
				sw   $t5, 4($t0)
				# clear bottom element
				sw   $t5, 128($t0)
				# clear core
				sw   $t5, 0($t0)
				# update the core
				addi 	$t0, $t0, -256
				# add core element
				li    $t5, 0xA89C90		# mushroom colour
				sw   $t5, 0($t0)
				# add right element
				sw   $t5, 4($t0)
				# add left element
				sw   $t5, -4($t0)
				# add bottom element
				sw   $t5, 128($t0)
				
				j Gravity	# gravity	
		
		Gravity:
			# while the bottom element is not platform, keep coming down 
			li	$t5, 0xA0522D		# brown colour
			lw	$t2, 256($t0)		# colour of bottom of the player
			beq	$t5, $t2, main_loop
			
			# syscall delay
			li $v0, 32
			li $a0, 100 # Wait 1 second 
			syscall
			
			# move down
			# clear top row
			# clear the left element
			li   $t5, 0x000000
			sw   $t5, -4($t0)
			# clear the right element
			sw   $t5, 4($t0)
			# clear core
			sw   $t5, 0($t0)
			# update the core
			addi 	$t0, $t0, 128
			li    $t5, 0xA89C90		# mushroom colour
			# add right element
			sw   $t5, 4($t0)
			# add left element
			sw   $t5, -4($t0)
			# add bottom element
			sw   $t5, 128($t0)
			
			# enemy shoot motion
		# if facing the platform, restart
		addi	$t2, $t7, 4
		lw	$t2, 0($t2)
		li $t5, 0xA0522D		# brown colour
		bne	$t5, $t2, shooter2
		# clear the previous pic
		li   $t5, 0x000000
		sw   $t5, 0($t7)
		addi	$t7, $t6, 0		# reset to initial location
	shooter2:
		# clear the previous pic
		li   $t5, 0x000000
		sw   $t5, 0($t7)
		# update shooter location
		addi 	$t7, $t7, 4
		# draw shooter
		li $t5, 0x800909	# red colour
		sw  $t5, 0($t7)
		j Gravity
			
	j main_loop

EXIT_LOOP:

# Keyboard stuff

EXIT: 

	li $v0, 10
	syscall
