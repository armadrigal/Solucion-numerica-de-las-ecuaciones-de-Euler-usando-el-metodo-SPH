subroutine quintic() 
  
  use variables 
  
  sigma(1)=1.0/120.0
  sigma(2)=7.0/(478.0*pi)
  sigma(3)=1.0/(120.0*pi)
  
  do i=1,n
     
     do j=1,n
        
        if(q(i,j)>=0.0 .and. q(i,j)<1.0) then
           
           M6(i,j)=sigma(d)*((3.0-q(i,j))**5-6.0*(2.0-q(i,j))**5+15.0*(1.0-q(i,j))**5)
           
        else if(q(i,j)>=1.0 .and. q(i,j)<2.0) then
           
           M6(i,j)=sigma(d)*((3.0-q(i,j))**5-6.0*(2.0-q(i,j))**5)
           
        else if(q(i,j)>=2.0 .and. q(i,j)<3.0) then
           
           M6(i,j)=sigma(d)*((3.0-q(i,j))**5)
           
        else if(q(i,j)>=3.0) then 
           
           M6(i,j)=0.0
           
        end if
        
     enddo
     
  enddo
  
end subroutine quintic
