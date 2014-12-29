@echo off	

@ipconfig /flushdns	


@echo "basic hosts"	

@copy /y hosts C:\Windows\system32\drivers\etc\hosts	
	

@echo "google IP"

@copy /b C:\Windows\system32\drivers\etc\hosts + google  C:\Windows\system32\drivers\etc\hosts	


@echo "apple facebook twitter youtube dropbox and others ip"		

@copy /b C:\Windows\system32\drivers\etc\hosts + others  C:\Windows\system32\drivers\etc\hosts	


@echo "block ads"	

@copy /b C:\Windows\system32\drivers\etc\hosts + ads C:\Windows\system32\drivers\etc\hosts	


@echo "如果总共显示拷贝了4个文件，表示更新成功，否则你需要确认是使用管理员权限，或手动获取hosts权限，或者检查360等安全位置软件问题"	

@pause	
