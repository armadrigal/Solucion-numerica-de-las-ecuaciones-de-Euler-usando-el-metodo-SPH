subroutine M4() 

	use variables 
	use parametros

	allocate(q(n,n),cubic(n,n),omega(d))

	pi=acos(-1.0)

	omega(1)=2.0/3.0
	omega(2)=10.0/(7.0*pi)
	omega(3)=1.0/pi

	do i=1,n

		do j=1,n

			if(q(i,j)>=0.0 .and. q(i,j)<=1.0) then

				cubic(i,j)=omega(d)*((1.0/4.0)*(2.0-q(i,j))**3-(1.0-q(i,j))**3)

			else if(q(i,j)>=1.0 .and. q(i,j)<=2.0) then

				cubic(i,j)=omega(d)*((1.0/4.0)*(2.0-q(i,j))**3)

			else if(q(i,j)>=2.0) then 

				cubic(i,j)=0.0

			end if

		enddo

	enddo

end subroutine
