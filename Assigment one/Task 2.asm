.text
# a -> $a0 
# adress -> $a1
addi $t0,$0,$a0
srl $s0,$t0,24 #C

jal subt:
move $s2,$v0 #$s2=c
lw $s1,0($a1) # $s1=B
add $s1,$a0,$s1
bgt $a0,$0 or $s2,$0 ,else
move $v0,$s2
jr $ra

else:
move $v0,$s2 or $a0
jr $ra