decl
	integer n,d,num,flag;
enddecl
integer main(){
	print ("Starting ");
	print ("the User ");
	print ("Code");
	print ("Enter n");	//Comments
	read(n);
	d = 2;
	num = 2;
	print(num);
	num = 3;
	while num<=n do
		d = 2;
		flag = 0;
		while d<num/2 do
			if num%d==0 then
				flag = 1;
				break;
			endif;
			d = d+1;
		endwhile;
		if flag==0 then
			print(num);
		endif;
		num = num + 1;		
	endwhile;	
	return 0;
}	

