subroutine cambioEnergia()

  use variables
  
  dU=0.0
  
  do i=1,n 
     
     do j=1,n 
        
        do k=1,d 
           
           dU(i)=dU(i)+M(j)*(V(i,k)-V(j,k))*dW(i,j,k)
           
        enddo
        
     enddo
     
     dU(i)=(P(i)/(omega(i)*dens(i)**2))*dU(i)
     
  enddo

end subroutine cambioEnergia
