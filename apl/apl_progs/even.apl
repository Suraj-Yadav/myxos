decl
	integer file;
	integer num;
	integer status;
enddecl
integer main(){
	print("Creating");
	status = Create("even.dat");
	print(status);
	if(status==-1) then
		print("Error");
	endif;
	
	print("Opening");
	file = Open("even.dat");
	print(file);
	if(file==-1) then
		print("Error");
	endif;
	
	print("Writing");
	num = 2;
	while(num<1000) do
		status = Write(file,num);
		if(status==-1) then
			print("Error");
			break;
		endif;
		num = num + 2;
	endwhile;
	
	print("Closing");
	status = Close(file);
	print(status);
	if(status==-1) then
		print("Error");
	endif;
	
	return 0;
}