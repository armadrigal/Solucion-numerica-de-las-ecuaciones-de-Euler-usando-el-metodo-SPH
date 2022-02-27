subroutine inicial() 

use variables

implicit none

do i=1,n 

   U(i)=0.9
   M(i)=1.0
   
   do j=1,d
      R(i,j)=rand()!0.2*rand()+0.4
      V(i,j)=0.0
      A(i,j)=0.0
      
   enddo
   
enddo

end subroutine
