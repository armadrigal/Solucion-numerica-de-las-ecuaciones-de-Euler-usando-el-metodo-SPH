subroutine aceleracion() 

  use variables

  A=0.0
  
  do i=1,n
     
     do j=1,n 
        
        do k=1,d 
           
           A(i,k)=A(i,k)-M(j)*((P(i)/(omega(i)*dens(i)**2))*dW(i,j,k)+(P(j)/(omega(j)*dens(j)**2))*dW(j,i,k))
           
        enddo
        
     enddo
     
  enddo
  
end subroutine aceleracion
