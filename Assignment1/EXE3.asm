code    segment	
	assume  cs:code, ds:code 
main:         
	mov	ax, code         
	mov	ds, ax 
		
		mov si,1500;הגדרת מצביע שיצביע על כתובת כדי לאחסן  לתוכה מספר
		mov di ,1700;הגדרת מצביע שיצביע על כתובת כדי לאחסן  לתוכה מספר
		mov dl,[si];  בתא הזיכרון(DL הצבת מספר(באוגר
        mov al,[di];  בתא הזיכרון(AL הצבת מספר(באוגר
		mov si, 2000 ;הגדרת מצביע שיצביע על כתובת כדי לאחסן  לתוכה מספר
		mov cl,[si] ; בתא הזיכרון(CL הצבת מספר(באוגר
		mov dl,5
		mov al,6
		cmp dl,0 
		JLE T0    
		cmp al,0 
		JLE T0     
		add dl,al
		mov cl,dl
		 JMP Sof
		T0:
		cmp al,0
		JGE T2
		sub al,dl
		mov cl,al
		JMP Sof
		T2:
		 mov cl,0AAh; בתא 2000 AA כשרק אחד מהם חיובי תציב את הערך 
		Sof:
		   NOP
	mov ah,4ch
	int 21h
code    ends
        end     main

