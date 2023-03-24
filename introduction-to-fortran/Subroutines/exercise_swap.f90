program exercise_swap

    implicit none

    real, dimension(5)  ::  array

    array = (/1, 2, 3, 4, 5/)

    call swap(array, 1, 4)
    print*, array

    call swap(array, 1, 6)
    print*, array

    contains
    subroutine swap(array, a, b)
        real, dimension(5)  ::  array
        integer             ::  a, b
        real                ::  temp

        if ((1 <= a .and. a <= 5) .and. (1 <= b .and. b <= 5)) then
            temp = array(a)
            array(a) = array(b)
            array(b) = temp
        else
            print*, "Index out of range."
        end if
    end subroutine swap
end program exercise_swap
