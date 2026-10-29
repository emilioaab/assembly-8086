code    segment	
	assume  cs:code, ds:code 
main:         
	mov	ax, code         
	mov	ds, ax 
		
		; 2-פ(CL+DX)הכפלת הביטוי
        mov dx,01h;DXלתת ערך לאוגר
        mov cl,02h;  CLלתת ערך לאוגר
        add cx,dx;    שווה ל 0002CXהערך באוגר  
        add cx,cx; הכפלה פ-2
        mov ax,cx;   AXבאוגר  ((CL+DX)*2) שמירת הערך של הביטוי

      ;פ-3 DL הכפלת
       mov dl,03h; 0003= DXהערך שנמצא ב
       mov cx,dx ; בהקדם DX כדי שאוכל לשתמש בהערך המקורי של , CX -ל DXהעברת הערך שיש בתןך
       add dx,dx;  2 -פ DL הכפלה של
       add dx,cx ; 3-פ DLהכפלה של
      ; AX ואת התוצאה לשמור באוגר,AXהשמור באוגר  ((CL+DX)*2) עם הביטוי   DXהשמור באוגר DL*3 חיבור הביטוי  
       add ax,dx;

	mov ah,4ch
	int 21h
code    ends
        end     main

