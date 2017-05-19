program svd

integer:: rows, cols
real,allocatable, dimension(:,:) :: a, at, ata, aat, u, s, vt
print *, 'Enter the number of rows and number of columns of your matrix:'
read *, rows,cols

allocate(a(cols, rows))
allocate(at(rows, cols))
allocate(ata(rows, rows))
allocate(aat(cols, cols))

do i=1,rows
	print *, 'Enter the elements in row', i
	read *, at(i,:)
	a(:,i) = at(i,:)
end do

do i=1, rows
	write(*, 1) a(i,:)
	1 format(5f20.2)
end do

ata = matmul(at, a)
aat = matmul(a, at)
end program svd
