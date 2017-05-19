program factorial

integer:: answer, x
print *, 'Enter the value for x'
read *, x
answer = 1

do i=x,1,-1
	answer = answer*i
end do

print *, answer
end program factorial
