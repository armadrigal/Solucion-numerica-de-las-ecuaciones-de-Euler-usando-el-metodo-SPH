subroutine derivadaQuartic() 

  use variables 

  sigma(1)=1.0/24.0
  sigma(2)=96.0/(1199.0*pi)
  sigma(3)=1.0/(20.0*pi)
  
  do i=1,n
     
     do j=1,n
        
        if(q(i,j)>=0.0 .and. q(i,j)<1.0/2.0) then
           
           dM5(i,j)=sigma(d)*(-4.0*(5.0/2.0-q(i,j))**3+20.0*(3.0/2.0-q(i,j))**3-40.0*(1.0/2.0-q(i,j))**3)
           
        else if(q(i,j)>=1.0/2.0 .and. q(i,j)<3.0/2.0) then
           
           dM5(i,j)=sigma(d)*(-4.0*(5.0/2.0-q(i,j))**3+20.0*(3.0/2.0-q(i,j))**3)
           
        else if(q(i,j)>=3.0/2.0 .and. q(i,j)<5.0/2.0) then
           
           dM5(i,j)=sigma(d)*(-4.0*(5.0/2.0-q(i,j))**3)
           
        else if(q(i,j)>=5.0/2.0) then 
           
           dM5(i,j)=0.0
           
        end if
        
     enddo
     
  enddo
  
end subroutine
