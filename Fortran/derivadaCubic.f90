subroutine derivadaCubic() 

  use variables 

  sigma(1)=2.0/3.0
  sigma(2)=10.0/(7.0*pi)
  sigma(3)=1.0/pi
  
  do i=1,n
     
     do j=1,n
        
        if(q(i,j)>=0.0 .and. q(i,j)<1.0) then
           
           dM4(i,j)=sigma(d)*((-3.0/4.0)*(2.0-q(i,j))**2+3.0*(1.0-q(i,j))**2)
           
        else if(q(i,j)>=1.0 .and. q(i,j)<2.0) then
           
           dM4(i,j)=sigma(d)*(-3.0/4.0)*(2.0-q(i,j))**2
           
        else if(q(i,j)>=2.0) then 
           
           dM4(i,j)=0.0
           
        end if
        
     enddo
     
  enddo
!!!!!!!!!!!!!!!!!!!1!!!!!!!!!!!!
  !print*,'derivada cubic'
  
  !print*,dM4(1,:)
  
  !print*,dM4(2,:)
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
end subroutine
