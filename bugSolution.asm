mov ecx, [some_size_variable] ; get the size of the array
cmp ecx, 0 ;check if ecx is 0 
je error_handler ;if ecx is 0 then jump to error handler
mov eax, [ebx+ecx*4-4] ;check if the ecx value is in the bounds
cmp eax, ebx ;check the address, if it is equal to ebx then jump to error handler
je error_handler; 
mov [eax], edx ;safe memory write
jmp end
error_handler: 
; Handle the error appropriately, e.g., by setting an error flag or exiting gracefully.
end: