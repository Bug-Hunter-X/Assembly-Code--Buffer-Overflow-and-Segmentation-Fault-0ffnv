mov eax, [ebx+ecx*4] ; potential buffer overflow if ecx is too large
mov [eax], edx ; potential segmentation fault if eax points to invalid memory