.global _add_strings
.align 4

/*void add_strings(char * line1, char * line2)*/
_add_strings:
    MOV x2, x0;                     x2 is string 1
    MOV x3, x1;                     x3 is string 2
_add_strings_loop:
    LDR x4,[x2];                    load string 1 char into x4
    CMP x4, #0;                     cmp char to null
    B.EQ _add_strings_loop_next;    goto next loop if char is null
    ADD x2, x2, #1;
    B.NE _add_strings_loop;         goto top of loop
_add_strings_loop_next:
    LDR x5, [x3];                   load string 2 char into x5
    CMP x5, #0;                     cmp char the null
    B.EQ _add_strings_loop_next_2;  goto last branch
    STR x5, [x2];                   store string 2 char in string 1 char
    ADD x3, x3, #1;
    ADD x2, x2, #1;
    B.NE _add_strings_loop_next;    goto top of loop
_add_strings_loop_next_2:
    STR x5, [x2];                   store last char in string 1
    B _add_strings_end;             goto end
_add_strings_end:
    ret