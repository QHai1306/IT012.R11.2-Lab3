# Ma nguon 7 - dien nang tieu thu 3 thang voi 4 chi so
.data
prompt: .asciiz "Nhap chi so (kWh): "
m1:     .asciiz "Thang 1: "
m2:     .asciiz "Thang 2: "
m3:     .asciiz "Thang 3: "
tot:    .asciiz "Tong:    "
nl:     .asciiz "\n"

.text
.globl main
main:
    # >>> doc chi so moi vao $s0 
    li   $v0, 4
    la   $a0, prompt
    syscall
    li   $v0, 5
    syscall
    add  $s0, $v0, $zero
    # >>> doc chi so moi vao $s1
    li   $v0, 4
    la   $a0, prompt
    syscall
    li   $v0, 5
    syscall
    add  $s1, $v0, $zero
    # >>> doc chi so moi vao $s2
    li   $v0, 4
    la   $a0, prompt
    syscall
    li   $v0, 5
    syscall
    add  $s2, $v0, $zero
    # >>> doc chi so moi vao $s3
    li   $v0, 4
    la   $a0, prompt
    syscall
    li   $v0, 5
    syscall
    add  $s3, $v0, $zero
    # >>> dien nang tieu thu thang 1, vao $t0
    sub $t0, $s1, $s0 
    # >>> dien nang tieu thu thang 2, vao $t1
    sub $t1, $s2, $s1 
    # >>> dien nang tieu thu thang 3, vao $t2
    sub $t2, $s3, $s2 
    # >>> tong dien nang tieu thu, vao $t3
    sub $t3, $s3, $s0 
    # >>> in ket qua, roi newline
    # >>> thang 1
    li $v0, 4
    la $a0, m1
    syscall
    li $v0, 1
    add $a0, $t0, $zero
    syscall
    li $v0, 4
    la $a0, nl
    syscall
     # >>> thang 2
    li $v0, 4
    la $a0, m2
    syscall
    li $v0, 1
    add $a0, $t1, $zero
    syscall
    li $v0, 4
    la $a0, nl
    syscall
     # >>> thang 3
    li $v0, 4
    la $a0, m3
    syscall
    li $v0, 1
    add $a0, $t2, $zero
    syscall
    li $v0, 4
    la $a0, nl
    syscall
     # >>> tong
    li $v0, 4
    la $a0, tot
    syscall
    li $v0, 1
    add $a0, $t3, $zero
    syscall
    li $v0, 4
    la $a0, nl
    syscall
    li   $v0, 10
    syscall
