decl
	integer file;
	integer status;
	string txt;
enddecl
integer main()
{
	breakpoint;
	file = Open("sample.dat");
	print(file);
	
	status = 0;
	while(status==0) do
		status = Read(file, txt);
		print(txt);
		if(txt=="") then
			break;
		endif;
	endwhile;
	return 0;
}