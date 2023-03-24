program exercise_array_operators

    implicit none

    real, dimension(3)      ::  A, B, C, D
    real, dimension(3, 3)   ::  R
    real                    ::  PI, theta

    real, dimension(3,3)    :: MA, MB, MC, MD

    A = (/1, 2, 1/)
    print*, "Position A: ", A

    B = A + (/3, -4, 1/)
    print*, "Position B: ", B

    C = 2 * B
    print*, "Position C: ", C

    PI = 4.D0 * DATAN(1.D0)
    theta = PI / 4
    R(1, :) = (/cos(theta), -sin(theta), 0.0/)
    R(2, :) = (/sin(theta), cos(theta), 0.0/)
    R(3, :) = (/0.0, 0.0, 1.0/)
    D = matmul(R, C)
    print*, "Position D: ", D
    print*, "Euclidean distance from D to origin: ", norm2(D)

    ! Extension
    MA(1, :) = (/1, 2, 1/)
    MA(2, :) = (/-1, 0, 1/)
    MA(3, :) = (/-3.0, -2.0, -2.5/)
    print*, "Position MA: ", MA

    MB = MA + spread((/3,-4,1/), 1, 3)
    print*, "Position MB: ", MB

    MC = 2 * MB
    print*, "Position MC: ", MC

    ! MD = matmul(R, MC)
    MD(1, :) = matmul(R, MC(1, :))
    MD(2, :) = matmul(R, MC(2, :))
    MD(3, :) = matmul(R, MC(3, :))
    print*, "Position MD: ", MD
    print*, "Euclidean distance from MD to origin: ", norm2(MD(1, :)), norm2(MD(2, :)), norm2(MD(3, :))

end program exercise_array_operators
