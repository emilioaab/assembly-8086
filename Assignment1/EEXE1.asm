code    segment	
	assume  cs:code, ds:code 
main:         
	mov	ax, code         
	mov	ds, ax 
		
		mov si,150h ;  הגדרת מצביע שיצביע על כתובת כדי לאחסן  לתוכה מספר
		mov di,200h;  הגדרת מצביע שיצביע על כתובת כדי לאחסן  לתוכה מספר
		mov cl,[si];  CL בשם BYTE העברת תוכן הכתובת לתוך חצי אוגר בגודל 
		mov dl,[di]; DL בשם BYTE העברת תוכן הכתובת לתוך חצי אוגר בגודל 
                mov cl, 02h ; CL לשים ערך בתוך  
                mov dl, 01h ; DL  לשים ערך בתוך 
		add cl,dl; חיבור בין חצי האוגרים
		mov bx,300h;הגדרת מצביע שיצביע על כתובת כדי לאחסן  לתוכה מספר
		mov dx ,[bx];DXבשם WORD תוכן הכתובת לתוך חצי אוגר בגודל 
		mov dx,cx;  DX שמייצג תוצאת החיבור העברתי לתוך  CX 
		add dx,dx;    הכפלת תוצאת החיבור פ-2
		mov ax,dx;     AXהעברת התוצאה של החיבור לאוגר 
	mov ah,4ch
	int 21h
code    ends
        end     main

