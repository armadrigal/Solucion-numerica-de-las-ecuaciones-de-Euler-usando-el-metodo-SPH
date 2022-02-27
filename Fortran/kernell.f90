subroutine kernel() 

	use variables
	use parametros

	allocate(R(n,d),H(n),W(n,n),q(n,n),temp1(n,n))

	temp1=0.0	

	do i=1,n 

		do j=1,n 

			do k=1,d 

				temp1(i,j)=temp1(i,j)+(R(i,k)-R(j,k))**2	
	
			enddo
		
			q(i,j)=sqrt(temp1(i,j))/H(i)			

		enddo

	enddo

	call M4()

end subroutine
