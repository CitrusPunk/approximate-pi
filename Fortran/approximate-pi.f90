! USAGE
! Install gfortran and MinGW
! Compile code with "gfortran approximate-pi.f90"
! Execute code with "./a.exe"

program approximatePi
  implicit none
  real :: x, y, distance, radius, pi, inCircle
  integer :: i, iterations
  character(*), parameter :: fmt = "(a,g0)"
  write(*, fmt) "Iterations: "
  read(*,*) iterations

  radius = 1.0
  inCircle = 0

  call random_seed()
  do i = 1, iterations 
      call random_number(x)
      call random_number(y)
      distance = sqrt(x**2 + y**2)
      if(distance < radius) inCircle = inCircle + 1
  end do
  pi = 4 * (inCircle / iterations)
  write(*, fmt) "Pi approximation: ", pi
 end