program  exercise_cubes
    implicit none

    integer ::  nCubes
    real    ::  cubeLength, cubeVolume, cubeArea

    nCubes = 5
    cubeLength = 3.2
    cubeVolume = cubeLength ** 3
    cubeArea = cubeLength ** 2 * 6

    print*, "The volume of one cube is: ", cubeVolume

    print*, "The area of all faces of one cube is: ", cubeArea

    print*, "The volume of all cubes is: ", cubeVolume * nCubes

    print*, "The area of all cubes is: ", cubeArea * nCubes

    print*, "The surface area to volume ratio: ", cubeArea / cubeVolume

end program  exercise_cubes
