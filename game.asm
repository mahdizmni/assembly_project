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
frame_buffer:		.space   32800  # 32768 is the true value

#  DEFINE
.eqv 	BASE_ADDRESS 	0x10010000
.eqv    TDELAY		0

.text
.globl main

main:

li  $t0, BASE_ADDRESS

li $t9, 0xffff0000		# key press will be there
lw $t8, 0($t9)			# 1, if key has pressed
beq $t8, 1, keypress_happened

lw $t2, 4($t9) # the next word in memory stores the key that were pressed
beq $t2, 0x61, respond_to_a # ASCII code of 'a' is 0x61 or 97 in decimal

EXIT: 

	li $v0, 10
	syscall
