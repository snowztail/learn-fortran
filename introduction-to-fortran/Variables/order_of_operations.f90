program order_of_operations

    implicit none

    integer ::  int1, int2
    real    ::  real1, real2

    int1=2
    int2=3
    real1=1.5
    real2=3.0

    print*, "Case A: ", -2**2**3/(3*2+(4/2)) !-(256/8)=-32
    print*, "Case B: ", real1**(int1/int2+1) !1.5**1=1.5
    print*, "Case C: ", real1+real2/2.0**int1 !1.5+3/4=2.25
    print*, "Case D: ", int2-int1+real1 !1+1.5=2.5
    print*, "Case E: ", (real1/(int1+int2))**2 !(1.5/5)**2=0.09

end program order_of_operations
