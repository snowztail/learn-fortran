program exercise_loops

    implicit none

    logical    :: fizz, buzz
    integer    :: counter

    integer    :: n
    real       :: r, sum, tolerance

    ! FizzBuzz
    do counter = 1, 20
        fizz = mod(counter, 3) == 0
        buzz = mod(counter, 5) == 0
        if (fizz .and. buzz) then
            print*, "FizzBuzz"
        else if (fizz) then
            print*, "Fizz"
        else if (buzz) then
            print*, "Buzz"
        else
            print*, counter
        end if
    end do

    ! Geometric sum
    r = 0.5
    tolerance = 1e-4
    n = 0
    sum = 0
    do while (r ** n >= tolerance)
        n = n + 1
        sum = sum + r ** n
    end do
    print*, "Sum: ", sum

end program exercise_loops
