subroutine derivadaKernel()

  use variables

  q=0.0
  
  do i=1,n 
     
     do j=1,n 
      
        do k=1,d 
           
           q(i,j)=q(i,j)+(R(i,k)-Rn(i,j,k))**2
           
        enddo
        
        q(i,j)=sqrt(q(i,j))/H(i)
        
     enddo
     
  enddo
  
  if(ker==4) then 
     
     call derivadaCubic()
     temp1=dM4
     
  else if(ker==5) then 
     
     call derivadaQuartic
     temp1=dM5
     
  else if(ker==6) then 
     
     call derivadaQuintic
     temp1=dM6
     
  end if
  
  do i=1,n 
     
     do j=1,n 
        
        do k=1,d 
           
           if(i/=j) then
              
              dW(i,j,k)=(R(i,k)-Rn(i,j,k))*(1.0/(q(i,j)*H(i)**(d+2)))*temp1(i,j)
              
              !print*,q(i,j),temp1(i,j)
              
           else 
              
              dW(i,j,k)=0.0
              
              !print*,q(i,j),temp1(i,j)
              
           end if
           
        enddo
        
     enddo
     
  enddo

!!!!!!!!!!!!!!!!!!!1!!!!!!!!!!!!
	!print*,'derivada kernel'

	!print*,temp1

	!print*,temp1(2,:)

	!print*,dW
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

end subroutine
