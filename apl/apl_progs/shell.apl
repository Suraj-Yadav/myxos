integer main()
{
	integer pid;
	string command;
	command = "HI";
	while(command!="exit") do
		print ("");
		print ("Shell > ");
		read (command);
		if(command=="exit") then
			break;
		endif;
		if(command=="about") then
			print("Suraj's Shell");
			continue;
		endif;
		pid = Fork();
		if(pid!=-2) then 
			pid = Wait(pid);
		endif;
		if(pid==-2) then
			pid = Exec(command);
			if(pid==-1) then
				print("command");
				print("not Found");
				Exit();
			endif;
		endif;
	endwhile;
	
	return 0;
}