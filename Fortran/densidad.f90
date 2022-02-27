subroutine densidad() 

  use variables

  do i=1,n
     
     dens(i)=0.0
     
     do j=1,n 
        
        dens(i)=dens(i)+M(j)*W(i,j)
        
     enddo
     
  enddo
  
end subroutine
