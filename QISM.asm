  global _start
section .text
_start:
  pop rax
  mov [__#argc], rax
  mov [__#argv], rsp
  inc rax
  mov rcx, 8
  mul rcx
  mov rcx, rsp
  add rcx, rax
  mov [__#envp], rcx
  mov BYTE [__#stck_0#97$?bool], 1
  mov BYTE [__#stck_1#100$?bool], 1
  mov BYTE [__#stck_2#130$?bool], 1
  mov BYTE [__#stck_3#174$?bool], 1
  mov BYTE [__#stck_4#178$?bool], 1
; ../.install/qinp/stdlib/error.qnp:18:30  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, __lastErrorID#1$?std.error.ID
  pop rcx
  mov [rax], rcx
; QISM.qnp:115:34  ->  Assign
  mov rax, 0
  push rax
  mov rax, inputFilename#84$p?std.String
  pop rcx
  mov [rax], rcx
; QISM.qnp:116:35  ->  Assign
  mov rax, 0
  push rax
  mov rax, outputFilename#85$p?std.String
  pop rcx
  mov [rax], rcx
; QISM.qnp:117:47  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, outputFormat#86$?OutputFormat
  pop rcx
  mov [rax], rcx
; QISM.qnp:118:21  ->  Assign
  mov al, 0
  push rax
  mov rax, verbose#87$?bool
  pop rcx
  mov [rax], cl
; QISM.qnp:119:28  ->  Assign
  mov al, 0
  push rax
  mov rax, addAnnotations#88$?bool
  pop rcx
  mov [rax], cl
; QISM.qnp:122:28  ->  Assign
  sub rsp, 8
  mov rax, argv#89$pcp?u8
  push rax
  mov rax, std.getargs.~ppcp?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, argc#90$?u64
  pop rcx
  mov [rax], rcx
; QISM.qnp:125:12  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, argi#91$?u64
  pop rcx
  mov [rax], rcx
; QISM.qnp:126:1  ->  While_Loop
__#1_WHILE_BEGIN:
__#3_LOOP_CONTINUE:
  mov rax, argv#89$pcp?u8
  mov rax, [rax]
  push rax
  mov rax, argi#91$?u64
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
  mov rax, [rax]
  mov rcx, 8
  mul rcx
  pop rcx
  add rax, rcx
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  setne al
  cmp al, 0
  je __#0_WHILE_END
; QISM.qnp:127:19  ->  Assign
  sub rsp, 8
  mov rax, argv#89$pcp?u8
  mov rax, [rax]
  push rax
  mov rax, argi#91$?u64
  mov rax, [rax]
  mov rcx, 8
  mul rcx
  pop rcx
  add rax, rcx
  mov rax, [rax]
  push rax
  mov rax, 0
  push rax
  mov rax, std.__new.~p?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, arg#92$p?std.String
  pop rcx
  mov [rax], rcx
; QISM.qnp:129:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_96
  push rax
  mov rax, arg#92$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#4_IF_NEXT
; QISM.qnp:130:18  ->  FunctionCall
  mov rax, printHelp.
  call rax
  add rsp, 0x0
; QISM.qnp:131:19  ->  FunctionCall
  mov rax, arg#92$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.delete.~p?std.String
  call rax
  add rsp, 0x8
; QISM.qnp:132:17  ->  FunctionCall
  mov rax, 0x0
  push rax
  mov rax, std.exit.~?i32
  call rax
  add rsp, 0x8
  jmp __#5_IF_END
__#4_IF_NEXT:
  sub rsp, 8
  mov rax, __#str_97
  push rax
  mov rax, arg#92$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.String.beginswith.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#6_IF_NEXT
; QISM.qnp:134:24  ->  Assign
  sub rsp, 8
  sub rsp, 8
  mov rax, arg#92$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.String.raw.~pc?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, 0x3
  mov rcx, rax
  pop rax
  add rax, rcx
  push rax
  mov rax, 0
  push rax
  mov rax, std.__new.~p?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, outputFilename#85$p?std.String
  pop rcx
  mov [rax], rcx
; QISM.qnp:135:19  ->  FunctionCall
  mov rax, arg#92$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.delete.~p?std.String
  call rax
  add rsp, 0x8
; QISM.qnp:136:9  ->  Continue
  jmp __#3_LOOP_CONTINUE
  jmp __#5_IF_END
__#6_IF_NEXT:
  sub rsp, 8
  mov rax, __#str_98
  push rax
  mov rax, arg#92$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#7_IF_NEXT
; QISM.qnp:138:17  ->  Assign
  mov al, 1
  push rax
  mov rax, verbose#87$?bool
  pop rcx
  mov [rax], cl
; QISM.qnp:139:19  ->  FunctionCall
  mov rax, arg#92$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.delete.~p?std.String
  call rax
  add rsp, 0x8
; QISM.qnp:140:9  ->  Continue
  jmp __#3_LOOP_CONTINUE
  jmp __#5_IF_END
__#7_IF_NEXT:
  sub rsp, 8
  mov rax, __#str_99
  push rax
  mov rax, arg#92$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.String.beginswith.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#8_IF_NEXT
; QISM.qnp:142:9  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_100
  push rax
  mov rax, arg#92$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#9_IF_NEXT
; QISM.qnp:143:26  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, outputFormat#86$?OutputFormat
  pop rcx
  mov [rax], rcx
  jmp __#10_IF_END
__#9_IF_NEXT:
  sub rsp, 8
  mov rax, __#str_101
  push rax
  mov rax, arg#92$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#11_IF_NEXT
; QISM.qnp:145:26  ->  Assign
  mov rax, 0x1
  push rax
  mov rax, outputFormat#86$?OutputFormat
  pop rcx
  mov [rax], rcx
  jmp __#10_IF_END
__#11_IF_NEXT:
  sub rsp, 8
  mov rax, __#str_102
  push rax
  mov rax, arg#92$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#12_IF_NEXT
; QISM.qnp:147:26  ->  Assign
  mov rax, 0x2
  push rax
  mov rax, outputFormat#86$?OutputFormat
  pop rcx
  mov [rax], rcx
  jmp __#10_IF_END
__#12_IF_NEXT:
; QISM.qnp:149:24  ->  FunctionCall
  sub rsp, 8
  mov rax, __#str_103
  push rax
  mov rax, std.println.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
; QISM.qnp:150:23  ->  FunctionCall
  mov rax, arg#92$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.delete.~p?std.String
  call rax
  add rsp, 0x8
; QISM.qnp:151:21  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.exit.~?i32
  call rax
  add rsp, 0x8
__#13_IF_NEXT:
__#10_IF_END:
; QISM.qnp:152:19  ->  FunctionCall
  mov rax, arg#92$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.delete.~p?std.String
  call rax
  add rsp, 0x8
; QISM.qnp:153:9  ->  Continue
  jmp __#3_LOOP_CONTINUE
  jmp __#5_IF_END
__#8_IF_NEXT:
  sub rsp, 8
  mov rax, __#str_104
  push rax
  mov rax, arg#92$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#14_IF_NEXT
; QISM.qnp:155:24  ->  Assign
  mov al, 1
  push rax
  mov rax, addAnnotations#88$?bool
  pop rcx
  mov [rax], cl
; QISM.qnp:156:19  ->  FunctionCall
  mov rax, arg#92$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.delete.~p?std.String
  call rax
  add rsp, 0x8
; QISM.qnp:157:9  ->  Continue
  jmp __#3_LOOP_CONTINUE
__#14_IF_NEXT:
__#5_IF_END:
; QISM.qnp:159:5  ->  If_Clause
  mov rax, inputFilename#84$p?std.String
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#15_IF_NEXT
; QISM.qnp:160:9  ->  If_Clause
  mov rax, argv#89$pcp?u8
  mov rax, [rax]
  push rax
  mov rax, argi#91$?u64
  push rax
  mov rax, 0x1
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, rcx
  mov rcx, 8
  mul rcx
  pop rcx
  add rax, rcx
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  setne al
  cmp al, 0
  je __#17_IF_NEXT
; QISM.qnp:161:24  ->  FunctionCall
  sub rsp, 8
  mov rax, __#str_105
  push rax
  mov rax, std.println.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
; QISM.qnp:162:23  ->  FunctionCall
  mov rax, arg#92$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.delete.~p?std.String
  call rax
  add rsp, 0x8
; QISM.qnp:163:21  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.exit.~?i32
  call rax
  add rsp, 0x8
__#17_IF_NEXT:
__#18_IF_END:
; QISM.qnp:165:23  ->  Assign
  mov rax, arg#92$p?std.String
  push rax
  mov rax, inputFilename#84$p?std.String
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; QISM.qnp:166:9  ->  Continue
  jmp __#3_LOOP_CONTINUE
__#15_IF_NEXT:
__#16_IF_END:
; QISM.qnp:168:16  ->  FunctionCall
  sub rsp, 8
  mov rax, __#str_106
  push rax
  mov rax, std.println.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
; QISM.qnp:169:15  ->  FunctionCall
  mov rax, arg#92$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.delete.~p?std.String
  call rax
  add rsp, 0x8
; QISM.qnp:170:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.exit.~?i32
  call rax
  add rsp, 0x8
  jmp __#1_WHILE_BEGIN
__#2_LOOP_BREAK:
__#0_WHILE_END:
; QISM.qnp:173:1  ->  If_Clause
  mov rax, inputFilename#84$p?std.String
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#19_IF_NEXT
; QISM.qnp:174:16  ->  FunctionCall
  sub rsp, 8
  mov rax, __#str_107
  push rax
  mov rax, std.println.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
; QISM.qnp:175:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.exit.~?i32
  call rax
  add rsp, 0x8
__#19_IF_NEXT:
__#20_IF_END:
; QISM.qnp:178:1  ->  If_Clause
  mov rax, outputFilename#85$p?std.String
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#21_IF_NEXT
; QISM.qnp:179:20  ->  Assign
  sub rsp, 8
  sub rsp, 8
  mov rax, inputFilename#84$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.String.raw.~pc?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, 0
  push rax
  mov rax, std.__new.~p?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, outputFilename#85$p?std.String
  pop rcx
  mov [rax], rcx
; QISM.qnp:180:27  ->  FunctionCall
  sub rsp, 8
  mov rax, __#str_108
  push rax
  mov rax, outputFilename#85$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.String.append.~p?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
__#21_IF_NEXT:
__#22_IF_END:
; QISM.qnp:183:1  ->  If_Clause
  mov rax, verbose#87$?bool
  mov al, [rax]
  cmp al, 0
  je __#23_IF_NEXT
; QISM.qnp:184:16  ->  FunctionCall
  sub rsp, 8
  mov rax, __#str_109
  push rax
  mov rax, std.println.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
; QISM.qnp:185:16  ->  FunctionCall
  sub rsp, 8
  sub rsp, 8
  mov rax, inputFilename#84$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.String.raw.~pc?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, __#str_110
  push rax
  mov rax, std.println.~pc?u8~pc?u8
  call rax
  add rsp, 0x10
  pop rax
; QISM.qnp:186:16  ->  FunctionCall
  sub rsp, 8
  sub rsp, 8
  mov rax, outputFilename#85$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.String.raw.~pc?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, __#str_111
  push rax
  mov rax, std.println.~pc?u8~pc?u8
  call rax
  add rsp, 0x10
  pop rax
; QISM.qnp:187:16  ->  FunctionCall
  sub rsp, 8
  sub rsp, 8
  mov rax, outputFormat#86$?OutputFormat
  mov rax, [rax]
  push rax
  mov rax, getOutputFormatName.~?OutputFormat
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, outputFormat#86$?OutputFormat
  mov rax, [rax]
  push rax
  mov rax, __#str_112
  push rax
  mov rax, std.println.~pc?u8~?i64~pc?u8
  call rax
  add rsp, 0x18
  pop rax
; QISM.qnp:188:16  ->  FunctionCall
  sub rsp, 8
  mov rax, verbose#87$?bool
  mov al, [rax]
  push rax
  mov rax, __#str_113
  push rax
  mov rax, std.println.~pc?u8~?bool
  call rax
  add rsp, 0x10
  pop rax
__#23_IF_NEXT:
__#24_IF_END:
; QISM.qnp:191:1  ->  If_Clause
  mov rax, verbose#87$?bool
  mov al, [rax]
  cmp al, 0
  je __#25_IF_NEXT
; QISM.qnp:191:24  ->  FunctionCall
  sub rsp, 8
  mov rax, __#str_114
  push rax
  mov rax, std.println.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
__#25_IF_NEXT:
__#26_IF_END:
; QISM.qnp:192:24  ->  Assign
  sub rsp, 8
  mov rax, inputFilename#84$p?std.String
  mov rax, [rax]
  push rax
  mov rax, readFile.~pc?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, codeText#93$p?std.String
  pop rcx
  mov [rax], rcx
; QISM.qnp:193:1  ->  If_Clause
  mov rax, codeText#93$p?std.String
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#27_IF_NEXT
; QISM.qnp:194:15  ->  FunctionCall
  mov rax, inputFilename#84$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.delete.~p?std.String
  call rax
  add rsp, 0x8
; QISM.qnp:195:15  ->  FunctionCall
  mov rax, outputFilename#85$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.delete.~p?std.String
  call rax
  add rsp, 0x8
; QISM.qnp:196:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.exit.~?i32
  call rax
  add rsp, 0x8
__#27_IF_NEXT:
__#28_IF_END:
; QISM.qnp:198:1  ->  If_Clause
  mov rax, verbose#87$?bool
  mov al, [rax]
  cmp al, 0
  je __#29_IF_NEXT
; QISM.qnp:198:24  ->  FunctionCall
  sub rsp, 8
  mov rax, __#str_115
  push rax
  mov rax, std.println.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
__#29_IF_NEXT:
__#30_IF_END:
; QISM.qnp:200:34  ->  Assign
  sub rsp, 8
  mov rax, nInstructions#94$?u64
  push rax
  mov rax, verbose#87$?bool
  mov al, [rax]
  push rax
  mov rax, inputFilename#84$p?std.String
  mov rax, [rax]
  push rax
  mov rax, codeText#93$p?std.String
  mov rax, [rax]
  push rax
  mov rax, assemble.~pc?std.String~pc?std.String~?bool~p?u64
  call rax
  add rsp, 0x20
  pop rax
  push rax
  mov rax, instructions#95$p?u32
  pop rcx
  mov [rax], rcx
; QISM.qnp:201:1  ->  If_Clause
  mov rax, instructions#95$p?u32
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#31_IF_NEXT
; QISM.qnp:202:15  ->  FunctionCall
  mov rax, codeText#93$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.delete.~p?std.String
  call rax
  add rsp, 0x8
; QISM.qnp:203:15  ->  FunctionCall
  mov rax, inputFilename#84$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.delete.~p?std.String
  call rax
  add rsp, 0x8
; QISM.qnp:204:15  ->  FunctionCall
  mov rax, outputFilename#85$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.delete.~p?std.String
  call rax
  add rsp, 0x8
; QISM.qnp:205:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.exit.~?i32
  call rax
  add rsp, 0x8
__#31_IF_NEXT:
__#32_IF_END:
; QISM.qnp:208:1  ->  If_Clause
  mov rax, verbose#87$?bool
  mov al, [rax]
  cmp al, 0
  je __#33_IF_NEXT
; QISM.qnp:208:24  ->  FunctionCall
  sub rsp, 8
  mov rax, __#str_116
  push rax
  mov rax, std.println.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
__#33_IF_NEXT:
__#34_IF_END:
; QISM.qnp:209:1  ->  If_Clause
  sub rsp, 8
  mov rax, outputFormat#86$?OutputFormat
  mov rax, [rax]
  push rax
  mov rax, nInstructions#94$?u64
  mov rax, [rax]
  push rax
  mov rax, instructions#95$p?u32
  mov rax, [rax]
  push rax
  mov rax, outputFilename#85$p?std.String
  mov rax, [rax]
  push rax
  mov rax, writeToFile.~pc?std.String~pc?u32~?u64~?OutputFormat
  call rax
  add rsp, 0x20
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#35_IF_NEXT
; QISM.qnp:210:15  ->  FunctionCall
  mov rax, codeText#93$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.delete.~p?std.String
  call rax
  add rsp, 0x8
; QISM.qnp:211:13  ->  FunctionCall
  mov rax, instructions#95$p?u32
  mov rax, [rax]
  push rax
  mov rax, std.free.~p?void
  call rax
  add rsp, 0x8
; QISM.qnp:212:15  ->  FunctionCall
  mov rax, inputFilename#84$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.delete.~p?std.String
  call rax
  add rsp, 0x8
; QISM.qnp:213:15  ->  FunctionCall
  mov rax, outputFilename#85$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.delete.~p?std.String
  call rax
  add rsp, 0x8
; QISM.qnp:214:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.exit.~?i32
  call rax
  add rsp, 0x8
__#35_IF_NEXT:
__#36_IF_END:
; QISM.qnp:218:1  ->  If_Clause
  mov rax, verbose#87$?bool
  mov al, [rax]
  cmp al, 0
  je __#37_IF_NEXT
; QISM.qnp:218:24  ->  FunctionCall
  sub rsp, 8
  mov rax, __#str_117
  push rax
  mov rax, std.println.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
__#37_IF_NEXT:
__#38_IF_END:
; QISM.qnp:219:9  ->  FunctionCall
  mov rax, codeText#93$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.free.~p?void
  call rax
  add rsp, 0x8
; QISM.qnp:220:9  ->  FunctionCall
  mov rax, instructions#95$p?u32
  mov rax, [rax]
  push rax
  mov rax, std.free.~p?void
  call rax
  add rsp, 0x8
; QISM.qnp:221:11  ->  FunctionCall
  mov rax, inputFilename#84$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.delete.~p?std.String
  call rax
  add rsp, 0x8
; QISM.qnp:222:11  ->  FunctionCall
  mov rax, outputFilename#85$p?std.String
  mov rax, [rax]
  push rax
  mov rax, std.delete.~p?std.String
  call rax
  add rsp, 0x8
; QISM.qnp:224:1  ->  If_Clause
  mov rax, verbose#87$?bool
  mov al, [rax]
  cmp al, 0
  je __#39_IF_NEXT
; QISM.qnp:224:24  ->  FunctionCall
  sub rsp, 8
  mov rax, __#str_118
  push rax
  mov rax, std.println.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
__#39_IF_NEXT:
__#40_IF_END:
; QISM.qnp:225:9  ->  FunctionCall
  mov rax, 0x0
  push rax
  mov rax, std.exit.~?i32
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/platform/linux/memory.qnp:61:39  ->  Assign
  mov rax, 0
  push rax
  mov rax, __memBlocks#122$p?std.__MemBlockHeader
  pop rcx
  mov [rax], rcx
  mov rdi, 0
  mov rax, 60
  syscall
assemble.~pc?std.String~pc?std.String~?bool~p?u64:
  push rbp
  mov rbp, rsp
  sub rsp, 0x52
; assembler.qnp:703:15  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'code#0$pc?std.String'
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  add rax, 0
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; assembler.qnp:704:19  ->  Assign
  mov rax, rbp
  add rax, 0x18 ; local 'filename#0$pc?std.String'
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  add rax, 8
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; assembler.qnp:705:18  ->  Assign
  mov rax, rbp
  add rax, 0x20 ; local 'verbose#0$?bool'
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  add rax, 16
  pop rcx
  mov cl, [rcx]
  mov [rax], cl
; assembler.qnp:706:15  ->  Assign
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  add rax, 17
  pop rcx
  mov [rax], rcx
; assembler.qnp:707:17  ->  Assign
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  add rax, 25
  pop rcx
  mov [rax], rcx
; assembler.qnp:708:20  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  add rax, 33
  pop rcx
  mov [rax], rcx
; assembler.qnp:709:21  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'code#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.length.~pc?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  add rax, 41
  pop rcx
  mov [rax], rcx
; assembler.qnp:710:24  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  add rax, 49
  pop rcx
  mov [rax], rcx
; assembler.qnp:711:24  ->  Assign
  mov al, 0
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  add rax, 65
  pop rcx
  mov [rax], cl
; assembler.qnp:712:25  ->  Assign
  mov rax, 0
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  add rax, 66
  pop rcx
  mov [rax], rcx
; assembler.qnp:714:36  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'code#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, lineCount.~pc?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, 0x4
  mov rcx, rax
  pop rax
  mul rcx
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffae ; local 'buffSize#69$?u64'
  pop rcx
  mov [rax], rcx
; assembler.qnp:715:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x20 ; local 'verbose#0$?bool'
  mov al, [rax]
  cmp al, 0
  je __#41_IF_NEXT
; assembler.qnp:715:28  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffae ; local 'buffSize#69$?u64'
  mov rax, [rax]
  push rax
  mov rax, __#str_71
  push rax
  mov rax, std.println.~pc?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
__#41_IF_NEXT:
__#42_IF_END:
; assembler.qnp:716:23  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffae ; local 'buffSize#69$?u64'
  mov rax, [rax]
  push rax
  mov rax, std.malloc.~?u64
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  add rax, 57
  pop rcx
  mov [rax], rcx
; assembler.qnp:717:5  ->  If_Clause
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  add rax, 57
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#43_IF_NEXT
; assembler.qnp:718:23  ->  FunctionCall
  sub rsp, 8
  mov rax, __#str_72
  push rax
  mov rax, handleMsgError.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
; assembler.qnp:719:9  ->  Return
  mov rax, 0
  mov [rbp + 0x30], rax
  mov rsp, rbp
  pop rbp
  ret
__#43_IF_NEXT:
__#44_IF_END:
; assembler.qnp:721:5  ->  While_Loop
__#46_WHILE_BEGIN:
__#48_LOOP_CONTINUE:
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  add rax, 33
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  add rax, 41
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, [rcx]
  setl al
  cmp al, 0
  je __#45_WHILE_END
; assembler.qnp:722:24  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  push rax
  mov rax, parseWhitespace.~p?AssemblerData
  call rax
  add rsp, 0x8
  pop rax
; assembler.qnp:724:9  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  push rax
  mov rax, parseNewline.~p?AssemblerData
  call rax
  add rsp, 0x8
  pop rax
  cmp al, 0
  je __#49_IF_NEXT
; assembler.qnp:724:33  ->  Continue
  jmp __#48_LOOP_CONTINUE
__#49_IF_NEXT:
__#50_IF_END:
; assembler.qnp:725:9  ->  If_Clause
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  add rax, 65
  mov al, [rax]
  cmp al, 0
  je __#51_IF_NEXT
; assembler.qnp:725:32  ->  Break
  jmp __#47_LOOP_BREAK
__#51_IF_NEXT:
__#52_IF_END:
; assembler.qnp:727:9  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  push rax
  mov rax, parseEntrypoint.~p?AssemblerData
  call rax
  add rsp, 0x8
  pop rax
  cmp al, 0
  je __#53_IF_NEXT
; assembler.qnp:727:36  ->  Continue
  jmp __#48_LOOP_CONTINUE
__#53_IF_NEXT:
__#54_IF_END:
; assembler.qnp:728:9  ->  If_Clause
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  add rax, 65
  mov al, [rax]
  cmp al, 0
  je __#55_IF_NEXT
; assembler.qnp:728:32  ->  Break
  jmp __#47_LOOP_BREAK
__#55_IF_NEXT:
__#56_IF_END:
; assembler.qnp:730:9  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  push rax
  mov rax, parseLabel.~p?AssemblerData
  call rax
  add rsp, 0x8
  pop rax
  cmp al, 0
  je __#57_IF_NEXT
; assembler.qnp:730:31  ->  Continue
  jmp __#48_LOOP_CONTINUE
__#57_IF_NEXT:
__#58_IF_END:
; assembler.qnp:731:9  ->  If_Clause
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  add rax, 65
  mov al, [rax]
  cmp al, 0
  je __#59_IF_NEXT
; assembler.qnp:731:32  ->  Break
  jmp __#47_LOOP_BREAK
__#59_IF_NEXT:
__#60_IF_END:
; assembler.qnp:733:9  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  push rax
  mov rax, parseInstruction.~p?AssemblerData
  call rax
  add rsp, 0x8
  pop rax
  cmp al, 0
  je __#61_IF_NEXT
; assembler.qnp:733:37  ->  Continue
  jmp __#48_LOOP_CONTINUE
__#61_IF_NEXT:
__#62_IF_END:
; assembler.qnp:734:9  ->  If_Clause
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  add rax, 65
  mov al, [rax]
  cmp al, 0
  je __#63_IF_NEXT
; assembler.qnp:734:32  ->  Break
  jmp __#47_LOOP_BREAK
__#63_IF_NEXT:
__#64_IF_END:
; assembler.qnp:736:9  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  push rax
  mov rax, parseComment.~p?AssemblerData
  call rax
  add rsp, 0x8
  pop rax
  cmp al, 0
  je __#65_IF_NEXT
; assembler.qnp:736:33  ->  Continue
  jmp __#48_LOOP_CONTINUE
__#65_IF_NEXT:
__#66_IF_END:
; assembler.qnp:737:9  ->  If_Clause
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  add rax, 65
  mov al, [rax]
  cmp al, 0
  je __#67_IF_NEXT
; assembler.qnp:737:32  ->  Break
  jmp __#47_LOOP_BREAK
__#67_IF_NEXT:
__#68_IF_END:
; assembler.qnp:739:9  ->  Return
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  add rax, 25
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  add rax, 17
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  add rax, 8
  mov rax, [rax]
  push rax
  mov rax, __#str_73
  push rax
  mov rax, handleAsmError.~pc?u8~pc?std.String~?u64~?u64~p?u32
  call rax
  add rsp, 0x28
  pop rax
  mov [rbp + 0x30], rax
  mov rsp, rbp
  pop rbp
  ret
  jmp __#46_WHILE_BEGIN
__#47_LOOP_BREAK:
__#45_WHILE_END:
; assembler.qnp:741:5  ->  If_Clause
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  add rax, 65
  mov al, [rax]
  cmp al, 0
  je __#69_IF_NEXT
; assembler.qnp:742:17  ->  FunctionCall
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, std.free.~p?void
  call rax
  add rsp, 0x8
; assembler.qnp:743:9  ->  Return
  mov rax, 0
  mov [rbp + 0x30], rax
  mov rsp, rbp
  pop rbp
  ret
__#69_IF_NEXT:
__#70_IF_END:
; assembler.qnp:745:24  ->  Assign
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  add rax, 49
  push rax
  mov rax, rbp
  add rax, 0x28 ; local 'pnInstructionsOut#0$p?u64'
  mov rax, [rax]
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; assembler.qnp:747:5  ->  Return
  mov rax, rbp
  add rax, 0xffffffffffffffb6 ; local 'data#68$?AssemblerData'
  add rax, 57
  mov rax, [rax]
  mov [rbp + 0x30], rax
  mov rsp, rbp
  pop rbp
  ret
checkOffsetRange.~p?AssemblerData~?i32~?OffsetType:
  push rbp
  mov rbp, rsp
  sub rsp, 0x10
; assembler.qnp:426:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x20 ; local 'ot#0$?OffsetType'
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#71_IF_NEXT
; assembler.qnp:427:16  ->  Assign
  mov rax, 0xffffffffffffe000
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'offMin#51$?i32'
  pop rcx
  mov [rax], ecx
; assembler.qnp:428:16  ->  Assign
  mov rax, 0x1fff
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'offMax#52$?i32'
  pop rcx
  mov [rax], ecx
; assembler.qnp:429:15  ->  Assign
  mov rax, __#str_61
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'otStr#53$pc?u8'
  pop rcx
  mov [rax], rcx
  jmp __#72_IF_END
__#71_IF_NEXT:
  mov rax, rbp
  add rax, 0x20 ; local 'ot#0$?OffsetType'
  push rax
  mov rax, 0x1
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#73_IF_NEXT
; assembler.qnp:431:16  ->  Assign
  mov rax, 0xfffffffffffff000
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'offMin#51$?i32'
  pop rcx
  mov [rax], ecx
; assembler.qnp:432:16  ->  Assign
  mov rax, 0xfff
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'offMax#52$?i32'
  pop rcx
  mov [rax], ecx
; assembler.qnp:433:15  ->  Assign
  mov rax, __#str_62
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'otStr#53$pc?u8'
  pop rcx
  mov [rax], rcx
  jmp __#72_IF_END
__#73_IF_NEXT:
  mov rax, rbp
  add rax, 0x20 ; local 'ot#0$?OffsetType'
  push rax
  mov rax, 0x2
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 1
  je __#75_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x20 ; local 'ot#0$?OffsetType'
  push rax
  mov rax, 0x3
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#75_LOGICAL_OR_SKIP:
  cmp al, 0
  je __#74_IF_NEXT
; assembler.qnp:436:16  ->  Assign
  mov rax, 0xfffffffffffe0000
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'offMin#51$?i32'
  pop rcx
  mov [rax], ecx
; assembler.qnp:437:16  ->  Assign
  mov rax, 0x1ffff
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'offMax#52$?i32'
  pop rcx
  mov [rax], ecx
; assembler.qnp:438:15  ->  Assign
  mov rax, __#str_63
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'otStr#53$pc?u8'
  pop rcx
  mov [rax], rcx
  jmp __#72_IF_END
__#74_IF_NEXT:
; assembler.qnp:440:23  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x20 ; local 'ot#0$?OffsetType'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 17
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 8
  mov rax, [rax]
  push rax
  mov rax, __#str_64
  push rax
  mov rax, handleAsmError.~pc?u8~pc?std.String~?u64~?u64~p?u32~?i32
  call rax
  add rsp, 0x30
  pop rax
; assembler.qnp:441:29  ->  Assign
  mov al, 1
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 65
  pop rcx
  mov [rax], cl
; assembler.qnp:442:9  ->  Return
  mov al, 0
  mov [rbp + 0x28], al
  mov rsp, rbp
  pop rbp
  ret
__#76_IF_NEXT:
__#72_IF_END:
; assembler.qnp:444:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'offset#0$?i32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'offMin#51$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  cmp eax, [rcx]
  setl al
  cmp al, 1
  je __#79_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x18 ; local 'offset#0$?i32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'offMax#52$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  cmp eax, [rcx]
  setg al
__#79_LOGICAL_OR_SKIP:
  cmp al, 0
  je __#77_IF_NEXT
; assembler.qnp:445:23  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'offMax#52$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'offMin#51$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'otStr#53$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'offset#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 17
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 8
  mov rax, [rax]
  push rax
  mov rax, __#str_66
  push rax
  mov rax, handleAsmError.~pc?u8~pc?std.String~?u64~?u64~p?u32~?i32~pc?u8~?i32~?i32
  call rax
  add rsp, 0x48
  pop rax
; assembler.qnp:446:29  ->  Assign
  mov al, 1
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 65
  pop rcx
  mov [rax], cl
; assembler.qnp:447:9  ->  Return
  mov al, 0
  mov [rbp + 0x28], al
  mov rsp, rbp
  pop rbp
  ret
__#77_IF_NEXT:
__#78_IF_END:
; assembler.qnp:448:5  ->  Return
  mov al, 1
  mov [rbp + 0x28], al
  mov rsp, rbp
  pop rbp
  ret
conditionFromInsCode.~?InsCode:
  push rbp
  mov rbp, rsp
; assembler.qnp:181:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0x6
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 1
  je __#82_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0xc
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#82_LOGICAL_OR_SKIP:
  cmp al, 0
  je __#80_IF_NEXT
; assembler.qnp:182:9  ->  Return
  mov rax, 0x0
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#80_IF_NEXT:
__#81_IF_END:
; assembler.qnp:183:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0x7
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 1
  je __#85_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0xd
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#85_LOGICAL_OR_SKIP:
  cmp al, 0
  je __#83_IF_NEXT
; assembler.qnp:184:9  ->  Return
  mov rax, 0x1
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#83_IF_NEXT:
__#84_IF_END:
; assembler.qnp:185:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0x8
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 1
  je __#88_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0xe
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#88_LOGICAL_OR_SKIP:
  cmp al, 0
  je __#86_IF_NEXT
; assembler.qnp:186:9  ->  Return
  mov rax, 0x2
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#86_IF_NEXT:
__#87_IF_END:
; assembler.qnp:187:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0x9
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 1
  je __#91_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0xf
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#91_LOGICAL_OR_SKIP:
  cmp al, 0
  je __#89_IF_NEXT
; assembler.qnp:188:9  ->  Return
  mov rax, 0x3
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#89_IF_NEXT:
__#90_IF_END:
; assembler.qnp:189:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0xa
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 1
  je __#94_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0x10
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#94_LOGICAL_OR_SKIP:
  cmp al, 0
  je __#92_IF_NEXT
; assembler.qnp:190:9  ->  Return
  mov rax, 0x4
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#92_IF_NEXT:
__#93_IF_END:
; assembler.qnp:191:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0xb
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 1
  je __#97_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0x11
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#97_LOGICAL_OR_SKIP:
  cmp al, 0
  je __#95_IF_NEXT
; assembler.qnp:192:9  ->  Return
  mov rax, 0x5
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#95_IF_NEXT:
__#96_IF_END:
; assembler.qnp:194:5  ->  Return
  mov rax, 0x1f
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
genInstructionBuffer.~p?u8~?u32~?OutputFormat:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; filewriter.qnp:19:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x20 ; local 'outputFormat#0$?OutputFormat'
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#98_IF_NEXT
; filewriter.qnp:20:19  ->  Assign
  mov rax, rbp
  add rax, 0x18 ; local 'instruction#0$?u32'
  push rax
  mov rax, 0x18
  mov ecx, eax
  pop rax
  mov eax, [rax]
  shr eax, cl
  push rax
  mov rax, 0xff
  mov rcx, rax
  pop rax
  and rax, rcx
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'buffer#0$p?u8'
  mov rax, [rax]
  push rax
  mov rax, 0x0
  pop rcx
  add rax, rcx
  pop rcx
  mov [rax], cl
; filewriter.qnp:21:19  ->  Assign
  mov rax, rbp
  add rax, 0x18 ; local 'instruction#0$?u32'
  push rax
  mov rax, 0x10
  mov ecx, eax
  pop rax
  mov eax, [rax]
  shr eax, cl
  push rax
  mov rax, 0xff
  mov rcx, rax
  pop rax
  and rax, rcx
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'buffer#0$p?u8'
  mov rax, [rax]
  push rax
  mov rax, 0x1
  pop rcx
  add rax, rcx
  pop rcx
  mov [rax], cl
; filewriter.qnp:22:19  ->  Assign
  mov rax, rbp
  add rax, 0x18 ; local 'instruction#0$?u32'
  push rax
  mov rax, 0x8
  mov ecx, eax
  pop rax
  mov eax, [rax]
  shr eax, cl
  push rax
  mov rax, 0xff
  mov rcx, rax
  pop rax
  and rax, rcx
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'buffer#0$p?u8'
  mov rax, [rax]
  push rax
  mov rax, 0x2
  pop rcx
  add rax, rcx
  pop rcx
  mov [rax], cl
; filewriter.qnp:23:19  ->  Assign
  mov rax, rbp
  add rax, 0x18 ; local 'instruction#0$?u32'
  push rax
  mov rax, 0x0
  mov ecx, eax
  pop rax
  mov eax, [rax]
  shr eax, cl
  push rax
  mov rax, 0xff
  mov rcx, rax
  pop rax
  and rax, rcx
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'buffer#0$p?u8'
  mov rax, [rax]
  push rax
  mov rax, 0x3
  pop rcx
  add rax, rcx
  pop rcx
  mov [rax], cl
; filewriter.qnp:24:9  ->  Return
  mov rax, 0x4
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
__#98_IF_NEXT:
__#99_IF_END:
; filewriter.qnp:25:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x20 ; local 'outputFormat#0$?OutputFormat'
  push rax
  mov rax, 0x1
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#100_IF_NEXT
; filewriter.qnp:26:24  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#73$?u64'
  pop rcx
  mov [rax], rcx
; filewriter.qnp:27:13  ->  Assign_Sum
  sub rsp, 8
  sub rsp, 8
  mov rax, 0x8
  push rax
  mov rax, 0x2
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'buffer#0$p?u8'
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#73$?u64'
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, rcx
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'instruction#0$?u32'
  push rax
  mov rax, 0x18
  mov ecx, eax
  pop rax
  mov eax, [rax]
  shr eax, cl
  push rax
  mov rax, 0xff
  mov rcx, rax
  pop rax
  and rax, rcx
  push rax
  mov rax, itos.~?i64~p?u8~?i64~?i64
  call rax
  add rsp, 0x20
  pop rax
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#73$?u64'
  pop rcx
  push rax
  mov rax, [rax]
  add rax, rcx
  mov rcx, rax
  pop rax
  mov [rax], rcx
; filewriter.qnp:28:23  ->  Assign
  mov al, 0x20
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'buffer#0$p?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#73$?u64'
  mov rcx, rax
  mov rax, [rax]
  inc rax
  mov [rcx], rax
  dec rax
  pop rcx
  add rax, rcx
  pop rcx
  mov [rax], cl
; filewriter.qnp:29:13  ->  Assign_Sum
  sub rsp, 8
  sub rsp, 8
  mov rax, 0x8
  push rax
  mov rax, 0x2
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'buffer#0$p?u8'
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#73$?u64'
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, rcx
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'instruction#0$?u32'
  push rax
  mov rax, 0x10
  mov ecx, eax
  pop rax
  mov eax, [rax]
  shr eax, cl
  push rax
  mov rax, 0xff
  mov rcx, rax
  pop rax
  and rax, rcx
  push rax
  mov rax, itos.~?i64~p?u8~?i64~?i64
  call rax
  add rsp, 0x20
  pop rax
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#73$?u64'
  pop rcx
  push rax
  mov rax, [rax]
  add rax, rcx
  mov rcx, rax
  pop rax
  mov [rax], rcx
; filewriter.qnp:30:23  ->  Assign
  mov al, 0x20
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'buffer#0$p?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#73$?u64'
  mov rcx, rax
  mov rax, [rax]
  inc rax
  mov [rcx], rax
  dec rax
  pop rcx
  add rax, rcx
  pop rcx
  mov [rax], cl
; filewriter.qnp:31:13  ->  Assign_Sum
  sub rsp, 8
  sub rsp, 8
  mov rax, 0x8
  push rax
  mov rax, 0x2
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'buffer#0$p?u8'
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#73$?u64'
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, rcx
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'instruction#0$?u32'
  push rax
  mov rax, 0x8
  mov ecx, eax
  pop rax
  mov eax, [rax]
  shr eax, cl
  push rax
  mov rax, 0xff
  mov rcx, rax
  pop rax
  and rax, rcx
  push rax
  mov rax, itos.~?i64~p?u8~?i64~?i64
  call rax
  add rsp, 0x20
  pop rax
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#73$?u64'
  pop rcx
  push rax
  mov rax, [rax]
  add rax, rcx
  mov rcx, rax
  pop rax
  mov [rax], rcx
; filewriter.qnp:32:23  ->  Assign
  mov al, 0x20
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'buffer#0$p?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#73$?u64'
  mov rcx, rax
  mov rax, [rax]
  inc rax
  mov [rcx], rax
  dec rax
  pop rcx
  add rax, rcx
  pop rcx
  mov [rax], cl
; filewriter.qnp:33:13  ->  Assign_Sum
  sub rsp, 8
  sub rsp, 8
  mov rax, 0x8
  push rax
  mov rax, 0x2
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'buffer#0$p?u8'
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#73$?u64'
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, rcx
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'instruction#0$?u32'
  push rax
  mov rax, 0x0
  mov ecx, eax
  pop rax
  mov eax, [rax]
  shr eax, cl
  push rax
  mov rax, 0xff
  mov rcx, rax
  pop rax
  and rax, rcx
  push rax
  mov rax, itos.~?i64~p?u8~?i64~?i64
  call rax
  add rsp, 0x20
  pop rax
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#73$?u64'
  pop rcx
  push rax
  mov rax, [rax]
  add rax, rcx
  mov rcx, rax
  pop rax
  mov [rax], rcx
; filewriter.qnp:34:23  ->  Assign
  mov al, 0xa
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'buffer#0$p?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#73$?u64'
  mov rcx, rax
  mov rax, [rax]
  inc rax
  mov [rcx], rax
  dec rax
  pop rcx
  add rax, rcx
  pop rcx
  mov [rax], cl
; filewriter.qnp:35:9  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#73$?u64'
  mov rax, [rax]
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
__#100_IF_NEXT:
__#101_IF_END:
; filewriter.qnp:36:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x20 ; local 'outputFormat#0$?OutputFormat'
  push rax
  mov rax, 0x2
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#102_IF_NEXT
; filewriter.qnp:37:24  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#74$?u64'
  pop rcx
  mov [rax], rcx
; filewriter.qnp:38:13  ->  Assign_Sum
  sub rsp, 8
  sub rsp, 8
  mov rax, 0x2
  push rax
  mov rax, 0x10
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'buffer#0$p?u8'
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#74$?u64'
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, rcx
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'instruction#0$?u32'
  push rax
  mov rax, 0x18
  mov ecx, eax
  pop rax
  mov eax, [rax]
  shr eax, cl
  push rax
  mov rax, 0xff
  mov rcx, rax
  pop rax
  and rax, rcx
  push rax
  mov rax, itos.~?i64~p?u8~?i64~?i64
  call rax
  add rsp, 0x20
  pop rax
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#74$?u64'
  pop rcx
  push rax
  mov rax, [rax]
  add rax, rcx
  mov rcx, rax
  pop rax
  mov [rax], rcx
; filewriter.qnp:39:23  ->  Assign
  mov al, 0x20
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'buffer#0$p?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#74$?u64'
  mov rcx, rax
  mov rax, [rax]
  inc rax
  mov [rcx], rax
  dec rax
  pop rcx
  add rax, rcx
  pop rcx
  mov [rax], cl
; filewriter.qnp:40:13  ->  Assign_Sum
  sub rsp, 8
  sub rsp, 8
  mov rax, 0x2
  push rax
  mov rax, 0x10
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'buffer#0$p?u8'
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#74$?u64'
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, rcx
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'instruction#0$?u32'
  push rax
  mov rax, 0x10
  mov ecx, eax
  pop rax
  mov eax, [rax]
  shr eax, cl
  push rax
  mov rax, 0xff
  mov rcx, rax
  pop rax
  and rax, rcx
  push rax
  mov rax, itos.~?i64~p?u8~?i64~?i64
  call rax
  add rsp, 0x20
  pop rax
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#74$?u64'
  pop rcx
  push rax
  mov rax, [rax]
  add rax, rcx
  mov rcx, rax
  pop rax
  mov [rax], rcx
; filewriter.qnp:41:23  ->  Assign
  mov al, 0x20
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'buffer#0$p?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#74$?u64'
  mov rcx, rax
  mov rax, [rax]
  inc rax
  mov [rcx], rax
  dec rax
  pop rcx
  add rax, rcx
  pop rcx
  mov [rax], cl
; filewriter.qnp:42:13  ->  Assign_Sum
  sub rsp, 8
  sub rsp, 8
  mov rax, 0x2
  push rax
  mov rax, 0x10
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'buffer#0$p?u8'
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#74$?u64'
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, rcx
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'instruction#0$?u32'
  push rax
  mov rax, 0x8
  mov ecx, eax
  pop rax
  mov eax, [rax]
  shr eax, cl
  push rax
  mov rax, 0xff
  mov rcx, rax
  pop rax
  and rax, rcx
  push rax
  mov rax, itos.~?i64~p?u8~?i64~?i64
  call rax
  add rsp, 0x20
  pop rax
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#74$?u64'
  pop rcx
  push rax
  mov rax, [rax]
  add rax, rcx
  mov rcx, rax
  pop rax
  mov [rax], rcx
; filewriter.qnp:43:23  ->  Assign
  mov al, 0x20
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'buffer#0$p?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#74$?u64'
  mov rcx, rax
  mov rax, [rax]
  inc rax
  mov [rcx], rax
  dec rax
  pop rcx
  add rax, rcx
  pop rcx
  mov [rax], cl
; filewriter.qnp:44:13  ->  Assign_Sum
  sub rsp, 8
  sub rsp, 8
  mov rax, 0x2
  push rax
  mov rax, 0x10
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'buffer#0$p?u8'
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#74$?u64'
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, rcx
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'instruction#0$?u32'
  push rax
  mov rax, 0x0
  mov ecx, eax
  pop rax
  mov eax, [rax]
  shr eax, cl
  push rax
  mov rax, 0xff
  mov rcx, rax
  pop rax
  and rax, rcx
  push rax
  mov rax, itos.~?i64~p?u8~?i64~?i64
  call rax
  add rsp, 0x20
  pop rax
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#74$?u64'
  pop rcx
  push rax
  mov rax, [rax]
  add rax, rcx
  mov rcx, rax
  pop rax
  mov [rax], rcx
; filewriter.qnp:45:23  ->  Assign
  mov al, 0xa
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'buffer#0$p?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#74$?u64'
  mov rcx, rax
  mov rax, [rax]
  inc rax
  mov [rcx], rax
  dec rax
  pop rcx
  add rax, rcx
  pop rcx
  mov [rax], cl
; filewriter.qnp:46:9  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#74$?u64'
  mov rax, [rax]
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
__#102_IF_NEXT:
__#103_IF_END:
; filewriter.qnp:48:19  ->  FunctionCall
  sub rsp, 8
  mov rax, __#str_78
  push rax
  mov rax, handleMsgError.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
; filewriter.qnp:49:5  ->  Return
  mov rax, 0x0
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
getOutputFormatName.~?OutputFormat:
  push rbp
  mov rbp, rsp
; outputformat.qnp:5:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$?OutputFormat'
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#104_IF_NEXT
; outputformat.qnp:6:9  ->  Return
  mov rax, __#str_74
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
  jmp __#105_IF_END
__#104_IF_NEXT:
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$?OutputFormat'
  push rax
  mov rax, 0x1
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#106_IF_NEXT
; outputformat.qnp:8:9  ->  Return
  mov rax, __#str_75
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
  jmp __#105_IF_END
__#106_IF_NEXT:
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$?OutputFormat'
  push rax
  mov rax, 0x2
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#107_IF_NEXT
; outputformat.qnp:10:9  ->  Return
  mov rax, __#str_76
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#107_IF_NEXT:
__#105_IF_END:
; outputformat.qnp:12:5  ->  Return
  mov rax, __#str_77
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
handleAsmError.~pc?u8~pc?std.String~?u64~?u64~p?u32:
  push rbp
  mov rbp, rsp
; errorhandler.qnp:14:16  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'message#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x28 ; local 'column#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x20 ; local 'line#0$?u64'
  mov rax, [rax]
  push rax
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'filename#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.raw.~pc?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, __#str_1
  push rax
  mov rax, std.println.~pc?u8~pc?u8~?u64~?u64~pc?u8
  call rax
  add rsp, 0x28
  pop rax
; errorhandler.qnp:15:13  ->  FunctionCall
  mov rax, rbp
  add rax, 0x30 ; local 'instructions#0$p?u32'
  mov rax, [rax]
  push rax
  mov rax, std.free.~p?void
  call rax
  add rsp, 0x8
; errorhandler.qnp:16:5  ->  Return
  mov rax, 0
  mov [rbp + 0x38], rax
  mov rsp, rbp
  pop rbp
  ret
handleAsmError.~pc?u8~pc?std.String~?u64~?u64~p?u32~?i32:
  push rbp
  mov rbp, rsp
; errorhandler.qnp:19:14  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x28 ; local 'column#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x20 ; local 'line#0$?u64'
  mov rax, [rax]
  push rax
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'filename#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.raw.~pc?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, __#str_65
  push rax
  mov rax, std.print.~pc?u8~pc?u8~?u64~?u64
  call rax
  add rsp, 0x20
  pop rax
; errorhandler.qnp:20:16  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x38 ; local '_VA_N_#6#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'message#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.println.~pc?u8~?i32
  call rax
  add rsp, 0x10
  pop rax
; errorhandler.qnp:21:13  ->  FunctionCall
  mov rax, rbp
  add rax, 0x30 ; local 'instructions#0$p?u32'
  mov rax, [rax]
  push rax
  mov rax, std.free.~p?void
  call rax
  add rsp, 0x8
; errorhandler.qnp:22:5  ->  Return
  mov rax, 0
  mov [rbp + 0x40], rax
  mov rsp, rbp
  pop rbp
  ret
handleAsmError.~pc?u8~pc?std.String~?u64~?u64~p?u32~?i32~?i32~?i32:
  push rbp
  mov rbp, rsp
; errorhandler.qnp:19:14  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x28 ; local 'column#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x20 ; local 'line#0$?u64'
  mov rax, [rax]
  push rax
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'filename#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.raw.~pc?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, __#str_65
  push rax
  mov rax, std.print.~pc?u8~pc?u8~?u64~?u64
  call rax
  add rsp, 0x20
  pop rax
; errorhandler.qnp:20:16  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x48 ; local '_VA_N_#20#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x40 ; local '_VA_N_#19#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x38 ; local '_VA_N_#18#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'message#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.println.~pc?u8~?i32~?i32~?i32
  call rax
  add rsp, 0x20
  pop rax
; errorhandler.qnp:21:13  ->  FunctionCall
  mov rax, rbp
  add rax, 0x30 ; local 'instructions#0$p?u32'
  mov rax, [rax]
  push rax
  mov rax, std.free.~p?void
  call rax
  add rsp, 0x8
; errorhandler.qnp:22:5  ->  Return
  mov rax, 0
  mov [rbp + 0x50], rax
  mov rsp, rbp
  pop rbp
  ret
handleAsmError.~pc?u8~pc?std.String~?u64~?u64~p?u32~?i32~pc?u8~?i32~?i32:
  push rbp
  mov rbp, rsp
; errorhandler.qnp:19:14  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x28 ; local 'column#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x20 ; local 'line#0$?u64'
  mov rax, [rax]
  push rax
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'filename#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.raw.~pc?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, __#str_65
  push rax
  mov rax, std.print.~pc?u8~pc?u8~?u64~?u64
  call rax
  add rsp, 0x20
  pop rax
; errorhandler.qnp:20:16  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x50 ; local '_VA_N_#13#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x48 ; local '_VA_N_#12#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x40 ; local '_VA_N_#11#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x38 ; local '_VA_N_#10#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'message#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.println.~pc?u8~?i32~pc?u8~?i32~?i32
  call rax
  add rsp, 0x28
  pop rax
; errorhandler.qnp:21:13  ->  FunctionCall
  mov rax, rbp
  add rax, 0x30 ; local 'instructions#0$p?u32'
  mov rax, [rax]
  push rax
  mov rax, std.free.~p?void
  call rax
  add rsp, 0x8
; errorhandler.qnp:22:5  ->  Return
  mov rax, 0
  mov [rbp + 0x58], rax
  mov rsp, rbp
  pop rbp
  ret
handleMsgError.~pc?u8:
  push rbp
  mov rbp, rsp
; errorhandler.qnp:5:16  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'message#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, __#str_0
  push rax
  mov rax, std.println.~pc?u8~pc?u8
  call rax
  add rsp, 0x10
  pop rax
; errorhandler.qnp:6:5  ->  Return
  mov al, 0
  mov [rbp + 0x18], al
  mov rsp, rbp
  pop rbp
  ret
insCodeFromStr.~pc?std.String:
  push rbp
  mov rbp, rsp
; assembler.qnp:91:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_2
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#108_IF_NEXT
; assembler.qnp:91:28  ->  Return
  mov rax, 0x1
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#108_IF_NEXT:
__#109_IF_END:
; assembler.qnp:92:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_3
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#110_IF_NEXT
; assembler.qnp:92:28  ->  Return
  mov rax, 0x2
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#110_IF_NEXT:
__#111_IF_END:
; assembler.qnp:93:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_4
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#112_IF_NEXT
; assembler.qnp:93:28  ->  Return
  mov rax, 0x3
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#112_IF_NEXT:
__#113_IF_END:
; assembler.qnp:94:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_5
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#114_IF_NEXT
; assembler.qnp:94:27  ->  Return
  mov rax, 0x4
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#114_IF_NEXT:
__#115_IF_END:
; assembler.qnp:95:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_6
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#116_IF_NEXT
; assembler.qnp:95:28  ->  Return
  mov rax, 0x5
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#116_IF_NEXT:
__#117_IF_END:
; assembler.qnp:96:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_7
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#118_IF_NEXT
; assembler.qnp:96:27  ->  Return
  mov rax, 0x6
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#118_IF_NEXT:
__#119_IF_END:
; assembler.qnp:97:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_8
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#120_IF_NEXT
; assembler.qnp:97:28  ->  Return
  mov rax, 0x7
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#120_IF_NEXT:
__#121_IF_END:
; assembler.qnp:98:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_9
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#122_IF_NEXT
; assembler.qnp:98:28  ->  Return
  mov rax, 0x8
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#122_IF_NEXT:
__#123_IF_END:
; assembler.qnp:99:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_10
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#124_IF_NEXT
; assembler.qnp:99:28  ->  Return
  mov rax, 0x9
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#124_IF_NEXT:
__#125_IF_END:
; assembler.qnp:100:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_11
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#126_IF_NEXT
; assembler.qnp:100:28  ->  Return
  mov rax, 0xa
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#126_IF_NEXT:
__#127_IF_END:
; assembler.qnp:101:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_12
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#128_IF_NEXT
; assembler.qnp:101:28  ->  Return
  mov rax, 0xb
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#128_IF_NEXT:
__#129_IF_END:
; assembler.qnp:102:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_13
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#130_IF_NEXT
; assembler.qnp:102:28  ->  Return
  mov rax, 0xc
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#130_IF_NEXT:
__#131_IF_END:
; assembler.qnp:103:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_14
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#132_IF_NEXT
; assembler.qnp:103:29  ->  Return
  mov rax, 0xd
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#132_IF_NEXT:
__#133_IF_END:
; assembler.qnp:104:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_15
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#134_IF_NEXT
; assembler.qnp:104:29  ->  Return
  mov rax, 0xe
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#134_IF_NEXT:
__#135_IF_END:
; assembler.qnp:105:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_16
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#136_IF_NEXT
; assembler.qnp:105:29  ->  Return
  mov rax, 0xf
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#136_IF_NEXT:
__#137_IF_END:
; assembler.qnp:106:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_17
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#138_IF_NEXT
; assembler.qnp:106:29  ->  Return
  mov rax, 0x10
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#138_IF_NEXT:
__#139_IF_END:
; assembler.qnp:107:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_18
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#140_IF_NEXT
; assembler.qnp:107:29  ->  Return
  mov rax, 0x11
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#140_IF_NEXT:
__#141_IF_END:
; assembler.qnp:108:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_19
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#142_IF_NEXT
; assembler.qnp:108:27  ->  Return
  mov rax, 0x12
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#142_IF_NEXT:
__#143_IF_END:
; assembler.qnp:109:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_20
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#144_IF_NEXT
; assembler.qnp:109:27  ->  Return
  mov rax, 0x13
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#144_IF_NEXT:
__#145_IF_END:
; assembler.qnp:110:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_21
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#146_IF_NEXT
; assembler.qnp:110:28  ->  Return
  mov rax, 0x14
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#146_IF_NEXT:
__#147_IF_END:
; assembler.qnp:111:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_22
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#148_IF_NEXT
; assembler.qnp:111:28  ->  Return
  mov rax, 0x15
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#148_IF_NEXT:
__#149_IF_END:
; assembler.qnp:112:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_23
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#150_IF_NEXT
; assembler.qnp:112:27  ->  Return
  mov rax, 0x16
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#150_IF_NEXT:
__#151_IF_END:
; assembler.qnp:113:5  ->  Return
  mov rax, 0x0
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
insTypeFromOpCode.~?OpCode:
  push rbp
  mov rbp, rsp
; assembler.qnp:136:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'oc#0$?OpCode'
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 1
  je __#154_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'oc#0$?OpCode'
  push rax
  mov rax, 0x1
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#154_LOGICAL_OR_SKIP:
  cmp al, 1
  je __#155_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'oc#0$?OpCode'
  push rax
  mov rax, 0x2
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#155_LOGICAL_OR_SKIP:
  cmp al, 1
  je __#156_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'oc#0$?OpCode'
  push rax
  mov rax, 0x3
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#156_LOGICAL_OR_SKIP:
  cmp al, 1
  je __#157_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'oc#0$?OpCode'
  push rax
  mov rax, 0x4
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#157_LOGICAL_OR_SKIP:
  cmp al, 0
  je __#152_IF_NEXT
; assembler.qnp:138:9  ->  Return
  mov rax, 0x1
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#152_IF_NEXT:
__#153_IF_END:
; assembler.qnp:139:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'oc#0$?OpCode'
  push rax
  mov rax, 0x5
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#158_IF_NEXT
; assembler.qnp:140:9  ->  Return
  mov rax, 0x2
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#158_IF_NEXT:
__#159_IF_END:
; assembler.qnp:141:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'oc#0$?OpCode'
  push rax
  mov rax, 0x6
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#160_IF_NEXT
; assembler.qnp:142:9  ->  Return
  mov rax, 0x4
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#160_IF_NEXT:
__#161_IF_END:
; assembler.qnp:143:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'oc#0$?OpCode'
  push rax
  mov rax, 0x7
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#162_IF_NEXT
; assembler.qnp:144:9  ->  Return
  mov rax, 0x3
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#162_IF_NEXT:
__#163_IF_END:
; assembler.qnp:145:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'oc#0$?OpCode'
  push rax
  mov rax, 0x8
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 1
  je __#166_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'oc#0$?OpCode'
  push rax
  mov rax, 0x9
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#166_LOGICAL_OR_SKIP:
  cmp al, 1
  je __#167_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'oc#0$?OpCode'
  push rax
  mov rax, 0xa
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#167_LOGICAL_OR_SKIP:
  cmp al, 0
  je __#164_IF_NEXT
; assembler.qnp:146:9  ->  Return
  mov rax, 0x5
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#164_IF_NEXT:
__#165_IF_END:
; assembler.qnp:148:19  ->  FunctionCall
  sub rsp, 8
  mov rax, __#str_24
  push rax
  mov rax, handleMsgError.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
; assembler.qnp:149:5  ->  Return
  mov rax, 0x0
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
isRelativeJump.~?InsCode:
  push rbp
  mov rbp, rsp
; assembler.qnp:171:5  ->  Return
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0xc
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 1
  je __#168_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0xd
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#168_LOGICAL_OR_SKIP:
  cmp al, 1
  je __#169_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0xe
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#169_LOGICAL_OR_SKIP:
  cmp al, 1
  je __#170_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0xf
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#170_LOGICAL_OR_SKIP:
  cmp al, 1
  je __#171_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0x10
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#171_LOGICAL_OR_SKIP:
  cmp al, 1
  je __#172_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0x11
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#172_LOGICAL_OR_SKIP:
  mov [rbp + 0x18], al
  mov rsp, rbp
  pop rbp
  ret
itos.~?i64~p?u8~?i64~?i64:
  push rbp
  mov rbp, rsp
  sub rsp, 0x18
; filewriter.qnp:7:25  ->  Assign
  sub rsp, 8
  sub rsp, 8
  mov rax, rbp
  add rax, 0x20 ; local 'base#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'buffer#0$p?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'num#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, std.itos.~?i64~p?u8~?i64
  call rax
  add rsp, 0x18
  pop rax
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#70$?u64'
  pop rcx
  mov [rax], rcx
; filewriter.qnp:8:23  ->  Assign
  mov rax, rbp
  add rax, 0x18 ; local 'buffer#0$p?u8'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'shiftBuffer#71$p?u8'
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; filewriter.qnp:9:5  ->  While_Loop
__#174_WHILE_BEGIN:
__#176_LOOP_CONTINUE:
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#70$?u64'
  push rax
  mov rax, rbp
  add rax, 0x28 ; local 'width#0$?i64'
  mov rax, [rax]
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#173_WHILE_END
; filewriter.qnp:10:22  ->  Assign
  mov al, 0x30
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'shiftBuffer#71$p?u8'
  mov rax, [rax]
  pop rcx
  mov [rax], cl
; filewriter.qnp:11:9  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'shiftBuffer#71$p?u8'
  push rax
  mov rax, [rax]
  add rax, 1
  mov rcx, rax
  pop rax
  mov [rax], rcx
; filewriter.qnp:12:9  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'len#70$?u64'
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
  jmp __#174_WHILE_BEGIN
__#175_LOOP_BREAK:
__#173_WHILE_END:
; filewriter.qnp:14:21  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0x20 ; local 'base#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'shiftBuffer#71$p?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'num#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, std.itos.~?i64~p?u8~?i64
  call rax
  add rsp, 0x18
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local '_#72$pc?u8'
  pop rcx
  mov [rax], rcx
; filewriter.qnp:16:5  ->  Return
  mov rax, rbp
  add rax, 0x18 ; local 'buffer#0$p?u8'
  mov rax, [rax]
  mov [rbp + 0x30], rax
  mov rsp, rbp
  pop rbp
  ret
lineCount.~pc?std.String:
  push rbp
  mov rbp, rsp
  sub rsp, 0x18
; assembler.qnp:197:22  ->  Assign
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'count#21$?u64'
  pop rcx
  mov [rax], rcx
; assembler.qnp:198:18  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'i#22$?u64'
  pop rcx
  mov [rax], rcx
; assembler.qnp:199:39  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'code#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.length.~pc?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'codeLength#23$?u64'
  pop rcx
  mov [rax], rcx
; assembler.qnp:200:5  ->  While_Loop
__#178_WHILE_BEGIN:
__#180_LOOP_CONTINUE:
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'i#22$?u64'
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'codeLength#23$?u64'
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, [rcx]
  setl al
  cmp al, 0
  je __#177_WHILE_END
; assembler.qnp:201:9  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'i#22$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'code#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.at.~pc?std.String~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov al, 0xa
  mov cl, al
  pop rax
  cmp al, cl
  sete al
  cmp al, 0
  je __#181_IF_NEXT
; assembler.qnp:202:13  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'count#21$?u64'
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
__#181_IF_NEXT:
__#182_IF_END:
; assembler.qnp:203:9  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'i#22$?u64'
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
  jmp __#178_WHILE_BEGIN
__#179_LOOP_BREAK:
__#177_WHILE_END:
; assembler.qnp:204:5  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'count#21$?u64'
  mov rax, [rax]
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
opCodeFromInsCode.~?InsCode:
  push rbp
  mov rbp, rsp
; assembler.qnp:116:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0x1
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#183_IF_NEXT
; assembler.qnp:116:27  ->  Return
  mov rax, 0x0
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#183_IF_NEXT:
__#184_IF_END:
; assembler.qnp:117:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0x2
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#185_IF_NEXT
; assembler.qnp:117:27  ->  Return
  mov rax, 0x1
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#185_IF_NEXT:
__#186_IF_END:
; assembler.qnp:118:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0x3
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#187_IF_NEXT
; assembler.qnp:118:27  ->  Return
  mov rax, 0x2
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#187_IF_NEXT:
__#188_IF_END:
; assembler.qnp:119:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0x4
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#189_IF_NEXT
; assembler.qnp:119:26  ->  Return
  mov rax, 0x3
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#189_IF_NEXT:
__#190_IF_END:
; assembler.qnp:120:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0x5
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#191_IF_NEXT
; assembler.qnp:120:27  ->  Return
  mov rax, 0x4
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#191_IF_NEXT:
__#192_IF_END:
; assembler.qnp:121:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0x6
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 1
  je __#195_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0x7
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#195_LOGICAL_OR_SKIP:
  cmp al, 1
  je __#196_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0x8
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#196_LOGICAL_OR_SKIP:
  cmp al, 1
  je __#197_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0x9
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#197_LOGICAL_OR_SKIP:
  cmp al, 1
  je __#198_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0xa
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#198_LOGICAL_OR_SKIP:
  cmp al, 1
  je __#199_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0xb
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#199_LOGICAL_OR_SKIP:
  cmp al, 1
  je __#200_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0xc
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#200_LOGICAL_OR_SKIP:
  cmp al, 1
  je __#201_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0xd
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#201_LOGICAL_OR_SKIP:
  cmp al, 1
  je __#202_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0xe
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#202_LOGICAL_OR_SKIP:
  cmp al, 1
  je __#203_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0xf
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#203_LOGICAL_OR_SKIP:
  cmp al, 1
  je __#204_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0x10
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#204_LOGICAL_OR_SKIP:
  cmp al, 1
  je __#205_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0x11
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#205_LOGICAL_OR_SKIP:
  cmp al, 0
  je __#193_IF_NEXT
; assembler.qnp:127:9  ->  Return
  mov rax, 0x5
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#193_IF_NEXT:
__#194_IF_END:
; assembler.qnp:128:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0x12
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#206_IF_NEXT
; assembler.qnp:128:26  ->  Return
  mov rax, 0x6
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#206_IF_NEXT:
__#207_IF_END:
; assembler.qnp:129:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0x13
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#208_IF_NEXT
; assembler.qnp:129:26  ->  Return
  mov rax, 0x7
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#208_IF_NEXT:
__#209_IF_END:
; assembler.qnp:130:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0x14
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#210_IF_NEXT
; assembler.qnp:130:27  ->  Return
  mov rax, 0x8
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#210_IF_NEXT:
__#211_IF_END:
; assembler.qnp:131:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0x15
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#212_IF_NEXT
; assembler.qnp:131:27  ->  Return
  mov rax, 0x9
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#212_IF_NEXT:
__#213_IF_END:
; assembler.qnp:132:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0x16
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#214_IF_NEXT
; assembler.qnp:132:26  ->  Return
  mov rax, 0xa
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#214_IF_NEXT:
__#215_IF_END:
; assembler.qnp:133:5  ->  Return
  mov rax, 0x3f
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
parseComment.~p?AssemblerData:
  push rbp
  mov rbp, rsp
  sub rsp, 0x1
; assembler.qnp:681:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_69
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseExact.~p?AssemblerData~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#216_IF_NEXT
; assembler.qnp:682:9  ->  Return
  mov al, 0
  mov [rbp + 0x18], al
  mov rsp, rbp
  pop rbp
  ret
__#216_IF_NEXT:
__#217_IF_END:
; assembler.qnp:684:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_69
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseExact.~p?AssemblerData~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#218_IF_NEXT
; assembler.qnp:685:23  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 17
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 8
  mov rax, [rax]
  push rax
  mov rax, __#str_70
  push rax
  mov rax, handleAsmError.~pc?u8~pc?std.String~?u64~?u64~p?u32
  call rax
  add rsp, 0x28
  pop rax
; assembler.qnp:686:29  ->  Assign
  mov al, 1
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 65
  pop rcx
  mov [rax], cl
; assembler.qnp:687:9  ->  Return
  mov al, 0
  mov [rbp + 0x18], al
  mov rsp, rbp
  pop rbp
  ret
__#218_IF_NEXT:
__#219_IF_END:
; assembler.qnp:691:5  ->  While_Loop
__#221_WHILE_BEGIN:
__#223_LOOP_CONTINUE:
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 33
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, std.String.at.~pc?std.String~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffff ; local 'c#67$?u8'
  pop rcx
  mov [rax], cl
  push rax
  mov al, 0xa
  mov cl, al
  pop rax
  mov al, [rax]
  cmp al, cl
  setne al
  cmp al, 0
  je __#224_LOGICAL_AND_SKIP
  mov rax, rbp
  add rax, 0xffffffffffffffff ; local 'c#67$?u8'
  push rax
  mov al, 0x0
  mov cl, al
  pop rax
  mov al, [rax]
  cmp al, cl
  setne al
__#224_LOGICAL_AND_SKIP:
  cmp al, 0
  je __#220_WHILE_END
; assembler.qnp:692:9  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 33
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
; assembler.qnp:693:9  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
  jmp __#221_WHILE_BEGIN
__#222_LOOP_BREAK:
__#220_WHILE_END:
; assembler.qnp:695:17  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseNewline.~p?AssemblerData
  call rax
  add rsp, 0x8
  pop rax
; assembler.qnp:697:5  ->  Return
  mov al, 1
  mov [rbp + 0x18], al
  mov rsp, rbp
  pop rbp
  ret
parseEntrypoint.~p?AssemblerData:
  push rbp
  mov rbp, rsp
  sub rsp, 0x9
; assembler.qnp:236:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_41
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseExact.~p?AssemblerData~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#225_IF_NEXT
; assembler.qnp:237:9  ->  Return
  mov al, 0
  mov [rbp + 0x18], al
  mov rsp, rbp
  pop rbp
  ret
__#225_IF_NEXT:
__#226_IF_END:
; assembler.qnp:239:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_42
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseExact.~p?AssemblerData~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#227_IF_NEXT
; assembler.qnp:240:23  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 17
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 8
  mov rax, [rax]
  push rax
  mov rax, __#str_43
  push rax
  mov rax, handleAsmError.~pc?u8~pc?std.String~?u64~?u64~p?u32
  call rax
  add rsp, 0x28
  pop rax
; assembler.qnp:241:29  ->  Assign
  mov al, 1
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 65
  pop rcx
  mov [rax], cl
; assembler.qnp:242:9  ->  Return
  mov al, 0
  mov [rbp + 0x18], al
  mov rsp, rbp
  pop rbp
  ret
__#227_IF_NEXT:
__#228_IF_END:
; assembler.qnp:244:5  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseWhitespace.~p?AssemblerData
  call rax
  add rsp, 0x8
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#229_IF_NEXT
; assembler.qnp:245:23  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 17
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 8
  mov rax, [rax]
  push rax
  mov rax, __#str_44
  push rax
  mov rax, handleAsmError.~pc?u8~pc?std.String~?u64~?u64~p?u32
  call rax
  add rsp, 0x28
  pop rax
; assembler.qnp:246:29  ->  Assign
  mov al, 1
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 65
  pop rcx
  mov [rax], cl
; assembler.qnp:247:9  ->  Return
  mov al, 0
  mov [rbp + 0x18], al
  mov rsp, rbp
  pop rbp
  ret
__#229_IF_NEXT:
__#230_IF_END:
; assembler.qnp:250:20  ->  Assign
  sub rsp, 8
  mov rax, 0
  push rax
  mov rax, std.__new.~p?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'name#28$p?std.String'
  pop rcx
  mov [rax], rcx
; assembler.qnp:251:5  ->  While_Loop
__#232_WHILE_BEGIN:
__#234_LOOP_CONTINUE:
  sub rsp, 8
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 33
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, std.String.at.~pc?std.String~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffff ; local 'c#27$?u8'
  pop rcx
  mov [rax], cl
  mov al, [rax]
  push rax
  mov rax, std.isalnum.~?u8
  call rax
  add rsp, 0x8
  pop rax
  cmp al, 0
  je __#231_WHILE_END
; assembler.qnp:252:9  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 33
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
; assembler.qnp:253:9  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
; assembler.qnp:254:24  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffff ; local 'c#27$?u8'
  mov al, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'name#28$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.push_back.~p?std.String~?u8
  call rax
  add rsp, 0x10
  pop rax
  jmp __#232_WHILE_BEGIN
__#233_LOOP_BREAK:
__#231_WHILE_END:
; assembler.qnp:256:5  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'name#28$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.length.~pc?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#235_IF_NEXT
; assembler.qnp:257:23  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 17
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 8
  mov rax, [rax]
  push rax
  mov rax, __#str_45
  push rax
  mov rax, handleAsmError.~pc?u8~pc?std.String~?u64~?u64~p?u32
  call rax
  add rsp, 0x28
  pop rax
; assembler.qnp:258:29  ->  Assign
  mov al, 1
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 65
  pop rcx
  mov [rax], cl
; assembler.qnp:259:9  ->  Return
  mov al, 0
  mov [rbp + 0x18], al
  mov rsp, rbp
  pop rbp
  ret
__#235_IF_NEXT:
__#236_IF_END:
; assembler.qnp:261:20  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseWhitespace.~p?AssemblerData
  call rax
  add rsp, 0x8
  pop rax
; assembler.qnp:262:5  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseNewline.~p?AssemblerData
  call rax
  add rsp, 0x8
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#237_IF_NEXT
; assembler.qnp:263:23  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 17
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 8
  mov rax, [rax]
  push rax
  mov rax, __#str_46
  push rax
  mov rax, handleAsmError.~pc?u8~pc?std.String~?u64~?u64~p?u32
  call rax
  add rsp, 0x28
  pop rax
; assembler.qnp:264:29  ->  Assign
  mov al, 1
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 65
  pop rcx
  mov [rax], cl
; assembler.qnp:265:9  ->  Return
  mov al, 0
  mov [rbp + 0x18], al
  mov rsp, rbp
  pop rbp
  ret
__#237_IF_NEXT:
__#238_IF_END:
; assembler.qnp:267:26  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'name#28$p?std.String'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 66
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; assembler.qnp:269:5  ->  Return
  mov al, 1
  mov [rbp + 0x18], al
  mov rsp, rbp
  pop rbp
  ret
parseExact.~p?AssemblerData~pc?u8:
  push rbp
  mov rbp, rsp
  sub rsp, 0x10
; assembler.qnp:216:18  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'i#25$?u64'
  pop rcx
  mov [rax], rcx
; assembler.qnp:217:36  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'str#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'strLength#26$?u64'
  pop rcx
  mov [rax], rcx
; assembler.qnp:218:5  ->  While_Loop
__#240_WHILE_BEGIN:
__#242_LOOP_CONTINUE:
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'i#25$?u64'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'strLength#26$?u64'
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, [rcx]
  setl al
  cmp al, 0
  je __#239_WHILE_END
; assembler.qnp:219:9  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 33
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'i#25$?u64'
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, [rcx]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, std.String.at.~pc?std.String~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'str#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'i#25$?u64'
  mov rax, [rax]
  pop rcx
  add rax, rcx
  mov rcx, rax
  pop rax
  cmp al, [rcx]
  setne al
  cmp al, 0
  je __#243_IF_NEXT
; assembler.qnp:220:13  ->  Return
  mov al, 0
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
__#243_IF_NEXT:
__#244_IF_END:
; assembler.qnp:221:9  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'i#25$?u64'
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
  jmp __#240_WHILE_BEGIN
__#241_LOOP_BREAK:
__#239_WHILE_END:
; assembler.qnp:222:21  ->  Assign_Sum
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'strLength#26$?u64'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 33
  pop rcx
  push rax
  mov rax, [rax]
  add rax, [rcx]
  mov rcx, rax
  pop rax
  mov [rax], rcx
; assembler.qnp:223:18  ->  Assign_Sum
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'strLength#26$?u64'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  pop rcx
  push rax
  mov rax, [rax]
  add rax, [rcx]
  mov rcx, rax
  pop rax
  mov [rax], rcx
; assembler.qnp:224:5  ->  Return
  mov al, 1
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
parseImmediate.~p?AssemblerData~p?ArgParseData~?bool:
  push rbp
  mov rbp, rsp
  sub rsp, 0x11
; assembler.qnp:594:22  ->  Assign
  sub rsp, 8
  mov rax, 0
  push rax
  mov rax, std.__new.~p?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'immStr#58$p?std.String'
  pop rcx
  mov [rax], rcx
; assembler.qnp:596:5  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 33
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, std.String.at.~pc?std.String~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov al, 0x2d
  mov cl, al
  pop rax
  cmp al, cl
  sete al
  cmp al, 0
  je __#245_IF_NEXT
; assembler.qnp:597:26  ->  FunctionCall
  sub rsp, 8
  mov al, 0x2d
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'immStr#58$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.push_back.~p?std.String~?u8
  call rax
  add rsp, 0x10
  pop rax
; assembler.qnp:598:9  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 33
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
; assembler.qnp:599:9  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
__#245_IF_NEXT:
__#246_IF_END:
; assembler.qnp:601:5  ->  While_Loop
__#248_WHILE_BEGIN:
__#250_LOOP_CONTINUE:
  sub rsp, 8
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 33
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, std.String.at.~pc?std.String~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'c#59$?u8'
  pop rcx
  mov [rax], cl
  mov al, [rax]
  push rax
  mov rax, std.isalnum.~?u8
  call rax
  add rsp, 0x8
  pop rax
  cmp al, 0
  je __#247_WHILE_END
; assembler.qnp:602:9  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 33
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
; assembler.qnp:603:9  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
; assembler.qnp:604:26  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'c#59$?u8'
  mov al, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'immStr#58$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.push_back.~p?std.String~?u8
  call rax
  add rsp, 0x10
  pop rax
  jmp __#248_WHILE_BEGIN
__#249_LOOP_BREAK:
__#247_WHILE_END:
; assembler.qnp:606:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_55
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'immStr#58$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.beginswith.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#251_IF_NEXT
; assembler.qnp:607:21  ->  Assign
  sub rsp, 8
  mov rax, 0x10
  push rax
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'immStr#58$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.raw.~pc?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, 0x2
  mov rcx, rax
  pop rax
  add rax, rcx
  push rax
  mov rax, std.stoi.~pc?u8~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'apd#0$p?ArgParseData'
  mov rax, [rax]
  add rax, 8
  pop rcx
  mov [rax], ecx
  jmp __#252_IF_END
__#251_IF_NEXT:
  sub rsp, 8
  mov rax, __#str_56
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'immStr#58$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.beginswith.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#253_IF_NEXT
; assembler.qnp:609:21  ->  Assign
  sub rsp, 8
  mov rax, 0x2
  push rax
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'immStr#58$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.raw.~pc?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, 0x2
  mov rcx, rax
  pop rax
  add rax, rcx
  push rax
  mov rax, std.stoi.~pc?u8~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'apd#0$p?ArgParseData'
  mov rax, [rax]
  add rax, 8
  pop rcx
  mov [rax], ecx
  jmp __#252_IF_END
__#253_IF_NEXT:
  sub rsp, 8
  mov rax, __#str_57
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'immStr#58$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.beginswith.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#254_IF_NEXT
; assembler.qnp:611:21  ->  Assign
  sub rsp, 8
  mov rax, 0x8
  push rax
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'immStr#58$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.raw.~pc?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, 0x1
  mov rcx, rax
  pop rax
  add rax, rcx
  push rax
  mov rax, std.stoi.~pc?u8~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'apd#0$p?ArgParseData'
  mov rax, [rax]
  add rax, 8
  pop rcx
  mov [rax], ecx
  jmp __#252_IF_END
__#254_IF_NEXT:
; assembler.qnp:613:21  ->  Assign
  sub rsp, 8
  mov rax, 0xa
  push rax
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'immStr#58$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.raw.~pc?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, std.stoi.~pc?u8~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'apd#0$p?ArgParseData'
  mov rax, [rax]
  add rax, 8
  pop rcx
  mov [rax], ecx
__#255_IF_NEXT:
__#252_IF_END:
; assembler.qnp:615:23  ->  Assign
  mov rax, 0xffffffffffc00000
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff3 ; local 'immMin#60$?i32'
  pop rcx
  mov [rax], ecx
; assembler.qnp:616:24  ->  Assign
  mov rax, 0x3fffff
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffef ; local 'immMax#61$?i32'
  pop rcx
  mov [rax], ecx
; assembler.qnp:617:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x20 ; local 'is16BitBound#0$?bool'
  mov al, [rax]
  cmp al, 0
  je __#256_IF_NEXT
; assembler.qnp:618:16  ->  Assign
  mov rax, 0xffffffffffff8000
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff3 ; local 'immMin#60$?i32'
  pop rcx
  mov [rax], ecx
; assembler.qnp:619:16  ->  Assign
  mov rax, 0x7fff
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffef ; local 'immMax#61$?i32'
  pop rcx
  mov [rax], ecx
__#256_IF_NEXT:
__#257_IF_END:
; assembler.qnp:621:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'apd#0$p?ArgParseData'
  mov rax, [rax]
  add rax, 8
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff3 ; local 'immMin#60$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  cmp eax, [rcx]
  setl al
  cmp al, 1
  je __#260_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x18 ; local 'apd#0$p?ArgParseData'
  mov rax, [rax]
  add rax, 8
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffef ; local 'immMax#61$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  cmp eax, [rcx]
  setg al
__#260_LOGICAL_OR_SKIP:
  cmp al, 0
  je __#258_IF_NEXT
; assembler.qnp:622:23  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffef ; local 'immMax#61$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff3 ; local 'immMin#60$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'apd#0$p?ArgParseData'
  mov rax, [rax]
  add rax, 8
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 17
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 8
  mov rax, [rax]
  push rax
  mov rax, __#str_67
  push rax
  mov rax, handleAsmError.~pc?u8~pc?std.String~?u64~?u64~p?u32~?i32~?i32~?i32
  call rax
  add rsp, 0x40
  pop rax
; assembler.qnp:623:29  ->  Assign
  mov al, 1
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 65
  pop rcx
  mov [rax], cl
; assembler.qnp:624:9  ->  Return
  mov al, 0
  mov [rbp + 0x28], al
  mov rsp, rbp
  pop rbp
  ret
__#258_IF_NEXT:
__#259_IF_END:
; assembler.qnp:626:5  ->  Return
  mov al, 1
  mov [rbp + 0x28], al
  mov rsp, rbp
  pop rbp
  ret
parseInsCode.~p?AssemblerData:
  push rbp
  mov rbp, rsp
  sub rsp, 0x19
; assembler.qnp:304:22  ->  Assign
  sub rsp, 8
  mov rax, 0
  push rax
  mov rax, std.__new.~p?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'insStr#31$p?std.String'
  pop rcx
  mov [rax], rcx
; assembler.qnp:307:18  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffef ; local 'i#33$?u64'
  pop rcx
  mov [rax], rcx
; assembler.qnp:308:5  ->  While_Loop
__#262_WHILE_BEGIN:
__#264_LOOP_CONTINUE:
  sub rsp, 8
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 33
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffef ; local 'i#33$?u64'
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, [rcx]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, std.String.at.~pc?std.String~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'c#32$?u8'
  pop rcx
  mov [rax], cl
  mov al, [rax]
  push rax
  mov rax, std.isalnum.~?u8
  call rax
  add rsp, 0x8
  pop rax
  cmp al, 0
  je __#261_WHILE_END
; assembler.qnp:309:26  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'c#32$?u8'
  mov al, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'insStr#31$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.push_back.~p?std.String~?u8
  call rax
  add rsp, 0x10
  pop rax
; assembler.qnp:310:9  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0xffffffffffffffef ; local 'i#33$?u64'
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
  jmp __#262_WHILE_BEGIN
__#263_LOOP_BREAK:
__#261_WHILE_END:
; assembler.qnp:312:33  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'insStr#31$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, insCodeFromStr.~pc?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe7 ; local 'insCode#34$?InsCode'
  pop rcx
  mov [rax], rcx
; assembler.qnp:313:15  ->  FunctionCall
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'insStr#31$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.delete.~p?std.String
  call rax
  add rsp, 0x8
; assembler.qnp:315:5  ->  If_Clause
  mov rax, rbp
  add rax, 0xffffffffffffffe7 ; local 'insCode#34$?InsCode'
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#265_IF_NEXT
; assembler.qnp:316:9  ->  Return
  mov rax, 0x0
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#265_IF_NEXT:
__#266_IF_END:
; assembler.qnp:318:21  ->  Assign_Sum
  mov rax, rbp
  add rax, 0xffffffffffffffef ; local 'i#33$?u64'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 33
  pop rcx
  push rax
  mov rax, [rax]
  add rax, [rcx]
  mov rcx, rax
  pop rax
  mov [rax], rcx
; assembler.qnp:319:18  ->  Assign_Sum
  mov rax, rbp
  add rax, 0xffffffffffffffef ; local 'i#33$?u64'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  pop rcx
  push rax
  mov rax, [rax]
  add rax, [rcx]
  mov rcx, rax
  pop rax
  mov [rax], rcx
; assembler.qnp:321:5  ->  Return
  mov rax, rbp
  add rax, 0xffffffffffffffe7 ; local 'insCode#34$?InsCode'
  mov rax, [rax]
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
parseInstruction.~p?AssemblerData:
  push rbp
  mov rbp, rsp
  sub rsp, 0x19
; assembler.qnp:648:31  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseInsCode.~p?AssemblerData
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'insCode#63$?InsCode'
  pop rcx
  mov [rax], rcx
; assembler.qnp:649:5  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'insCode#63$?InsCode'
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#267_IF_NEXT
; assembler.qnp:650:9  ->  Return
  mov al, 0
  mov [rbp + 0x18], al
  mov rsp, rbp
  pop rbp
  ret
__#267_IF_NEXT:
__#268_IF_END:
; assembler.qnp:652:35  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'insCode#63$?InsCode'
  mov rax, [rax]
  push rax
  mov rax, opCodeFromInsCode.~?InsCode
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'opCode#64$?OpCode'
  pop rcx
  mov [rax], rcx
; assembler.qnp:653:45  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 49
  mov rax, [rax]
  mov rcx, 4
  mul rcx
  pop rcx
  add rax, rcx
  pop rcx
  mov [rax], ecx
; assembler.qnp:654:19  ->  FunctionCall
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'opCode#64$?OpCode'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsOpCode.~p?AssemblerData~?OpCode
  call rax
  add rsp, 0x10
; assembler.qnp:656:36  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'opCode#64$?OpCode'
  mov rax, [rax]
  push rax
  mov rax, insTypeFromOpCode.~?OpCode
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'insType#65$?InsType'
  pop rcx
  mov [rax], rcx
; assembler.qnp:660:5  ->  If_Clause
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'insType#65$?InsType'
  push rax
  mov rax, 0x1
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#269_IF_NEXT
; assembler.qnp:661:17  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'insCode#63$?InsCode'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseInstructionThreeArg.~p?AssemblerData~?InsCode
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe7 ; local 'success#66$?bool'
  pop rcx
  mov [rax], cl
  jmp __#270_IF_END
__#269_IF_NEXT:
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'insType#65$?InsType'
  push rax
  mov rax, 0x2
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#271_IF_NEXT
; assembler.qnp:663:17  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'insCode#63$?InsCode'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseInstructionCondBranch.~p?AssemblerData~?InsCode
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe7 ; local 'success#66$?bool'
  pop rcx
  mov [rax], cl
  jmp __#270_IF_END
__#271_IF_NEXT:
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'insType#65$?InsType'
  push rax
  mov rax, 0x3
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#272_IF_NEXT
; assembler.qnp:665:17  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'insCode#63$?InsCode'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseInstructionMemRead.~p?AssemblerData~?InsCode
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe7 ; local 'success#66$?bool'
  pop rcx
  mov [rax], cl
  jmp __#270_IF_END
__#272_IF_NEXT:
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'insType#65$?InsType'
  push rax
  mov rax, 0x4
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#273_IF_NEXT
; assembler.qnp:667:17  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'insCode#63$?InsCode'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseInstructionMemWrite.~p?AssemblerData~?InsCode
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe7 ; local 'success#66$?bool'
  pop rcx
  mov [rax], cl
  jmp __#270_IF_END
__#273_IF_NEXT:
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'insType#65$?InsType'
  push rax
  mov rax, 0x5
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#274_IF_NEXT
; assembler.qnp:669:17  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'insCode#63$?InsCode'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseInstructionImmLoad.~p?AssemblerData~?InsCode
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe7 ; local 'success#66$?bool'
  pop rcx
  mov [rax], cl
  jmp __#270_IF_END
__#274_IF_NEXT:
; assembler.qnp:671:23  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 17
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 8
  mov rax, [rax]
  push rax
  mov rax, __#str_68
  push rax
  mov rax, handleAsmError.~pc?u8~pc?std.String~?u64~?u64~p?u32
  call rax
  add rsp, 0x28
  pop rax
; assembler.qnp:672:29  ->  Assign
  mov al, 1
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 65
  pop rcx
  mov [rax], cl
; assembler.qnp:673:17  ->  Assign
  mov al, 0
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe7 ; local 'success#66$?bool'
  pop rcx
  mov [rax], cl
__#275_IF_NEXT:
__#270_IF_END:
; assembler.qnp:675:5  ->  If_Clause
  mov rax, rbp
  add rax, 0xffffffffffffffe7 ; local 'success#66$?bool'
  mov al, [rax]
  cmp al, 0
  je __#276_IF_NEXT
; assembler.qnp:676:9  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 49
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
__#276_IF_NEXT:
__#277_IF_END:
; assembler.qnp:678:5  ->  Return
  mov rax, rbp
  add rax, 0xffffffffffffffe7 ; local 'success#66$?bool'
  mov al, [rax]
  mov [rbp + 0x18], al
  mov rsp, rbp
  pop rbp
  ret
parseInstructionCondBranch.~p?AssemblerData~?InsCode:
  push rbp
  mov rbp, rsp
  sub rsp, 0xe
; assembler.qnp:510:18  ->  Assign
  mov rax, 0x1f
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#55$?ArgParseData'
  add rax, 0
  pop rcx
  mov [rax], rcx
; assembler.qnp:511:16  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#55$?ArgParseData'
  add rax, 8
  pop rcx
  mov [rax], ecx
; assembler.qnp:512:19  ->  Assign
  mov al, 0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#55$?ArgParseData'
  add rax, 12
  pop rcx
  mov [rax], cl
; assembler.qnp:513:27  ->  Assign
  mov al, 0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#55$?ArgParseData'
  add rax, 13
  pop rcx
  mov [rax], cl
; assembler.qnp:515:5  ->  If_Clause
  sub rsp, 8
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'ic#0$?InsCode'
  mov rax, [rax]
  push rax
  mov rax, conditionFromInsCode.~?InsCode
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsCondition.~p?AssemblerData~?CondID
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#278_IF_NEXT
; assembler.qnp:516:9  ->  Return
  mov al, 0
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
__#278_IF_NEXT:
__#279_IF_END:
; assembler.qnp:518:5  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#55$?ArgParseData'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseRegOffset.~p?AssemblerData~p?ArgParseData
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#280_IF_NEXT
; assembler.qnp:519:9  ->  Return
  mov al, 0
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
__#280_IF_NEXT:
__#281_IF_END:
; assembler.qnp:521:23  ->  FunctionCall
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#55$?ArgParseData'
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsSourceReg1.~p?AssemblerData~?RegID
  call rax
  add rsp, 0x10
; assembler.qnp:522:5  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#55$?ArgParseData'
  add rax, 12
  mov al, [rax]
  cmp al, 0
  je __#282_IF_NEXT
; assembler.qnp:523:29  ->  FunctionCall
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsOffsetSelect.~p?AssemblerData~?i32
  call rax
  add rsp, 0x10
; assembler.qnp:524:9  ->  If_Clause
  sub rsp, 8
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#55$?ArgParseData'
  add rax, 8
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsOffset.~p?AssemblerData~?i32~?OffsetType
  call rax
  add rsp, 0x18
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#284_IF_NEXT
; assembler.qnp:525:13  ->  Return
  mov al, 0
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
__#284_IF_NEXT:
__#285_IF_END:
__#282_IF_NEXT:
__#283_IF_END:
; assembler.qnp:527:5  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#55$?ArgParseData'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseRegOffset.~p?AssemblerData~p?ArgParseData
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#286_IF_NEXT
; assembler.qnp:528:9  ->  Return
  mov al, 0
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
__#286_IF_NEXT:
__#287_IF_END:
; assembler.qnp:530:23  ->  FunctionCall
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#55$?ArgParseData'
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsSourceReg2.~p?AssemblerData~?RegID
  call rax
  add rsp, 0x10
; assembler.qnp:531:5  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#55$?ArgParseData'
  add rax, 12
  mov al, [rax]
  cmp al, 0
  je __#288_IF_NEXT
; assembler.qnp:532:29  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsOffsetSelect.~p?AssemblerData~?i32
  call rax
  add rsp, 0x10
; assembler.qnp:533:9  ->  If_Clause
  sub rsp, 8
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#55$?ArgParseData'
  add rax, 8
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsOffset.~p?AssemblerData~?i32~?OffsetType
  call rax
  add rsp, 0x18
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#290_IF_NEXT
; assembler.qnp:534:13  ->  Return
  mov al, 0
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
__#290_IF_NEXT:
__#291_IF_END:
__#288_IF_NEXT:
__#289_IF_END:
; assembler.qnp:536:5  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'ic#0$?InsCode'
  mov rax, [rax]
  push rax
  mov rax, isRelativeJump.~?InsCode
  call rax
  add rsp, 0x8
  pop rax
  cmp al, 0
  je __#292_IF_NEXT
; assembler.qnp:537:29  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsRelativeJump.~p?AssemblerData~?i32
  call rax
  add rsp, 0x10
  jmp __#293_IF_END
__#292_IF_NEXT:
; assembler.qnp:539:29  ->  FunctionCall
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsRelativeJump.~p?AssemblerData~?i32
  call rax
  add rsp, 0x10
__#294_IF_NEXT:
__#293_IF_END:
; assembler.qnp:541:5  ->  Return
  mov al, 1
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
parseInstructionImmLoad.~p?AssemblerData~?InsCode:
  push rbp
  mov rbp, rsp
  sub rsp, 0xe
; assembler.qnp:630:18  ->  Assign
  mov rax, 0x1f
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#62$?ArgParseData'
  add rax, 0
  pop rcx
  mov [rax], rcx
; assembler.qnp:631:16  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#62$?ArgParseData'
  add rax, 8
  pop rcx
  mov [rax], ecx
; assembler.qnp:632:19  ->  Assign
  mov al, 0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#62$?ArgParseData'
  add rax, 12
  pop rcx
  mov [rax], cl
; assembler.qnp:633:27  ->  Assign
  mov al, 0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#62$?ArgParseData'
  add rax, 13
  pop rcx
  mov [rax], cl
; assembler.qnp:635:5  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#62$?ArgParseData'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseReg.~p?AssemblerData~p?ArgParseData
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#295_IF_NEXT
; assembler.qnp:636:9  ->  Return
  mov al, 0
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
__#295_IF_NEXT:
__#296_IF_END:
; assembler.qnp:638:20  ->  FunctionCall
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#62$?ArgParseData'
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsDestReg.~p?AssemblerData~?RegID
  call rax
  add rsp, 0x10
; assembler.qnp:640:5  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0x14
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 1
  je __#299_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x18 ; local 'ic#0$?InsCode'
  push rax
  mov rax, 0x15
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#299_LOGICAL_OR_SKIP:
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#62$?ArgParseData'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseImmediate.~p?AssemblerData~p?ArgParseData~?bool
  call rax
  add rsp, 0x18
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#297_IF_NEXT
; assembler.qnp:641:9  ->  Return
  mov al, 0
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
__#297_IF_NEXT:
__#298_IF_END:
; assembler.qnp:643:22  ->  FunctionCall
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#62$?ArgParseData'
  add rax, 8
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsImmediate.~p?AssemblerData~?i32
  call rax
  add rsp, 0x10
; assembler.qnp:645:5  ->  Return
  mov al, 1
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
parseInstructionMemRead.~p?AssemblerData~?InsCode:
  push rbp
  mov rbp, rsp
  sub rsp, 0xe
; assembler.qnp:545:18  ->  Assign
  mov rax, 0x1f
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#56$?ArgParseData'
  add rax, 0
  pop rcx
  mov [rax], rcx
; assembler.qnp:546:16  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#56$?ArgParseData'
  add rax, 8
  pop rcx
  mov [rax], ecx
; assembler.qnp:547:19  ->  Assign
  mov al, 0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#56$?ArgParseData'
  add rax, 12
  pop rcx
  mov [rax], cl
; assembler.qnp:548:27  ->  Assign
  mov al, 0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#56$?ArgParseData'
  add rax, 13
  pop rcx
  mov [rax], cl
; assembler.qnp:550:5  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#56$?ArgParseData'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseReg.~p?AssemblerData~p?ArgParseData
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#300_IF_NEXT
; assembler.qnp:551:9  ->  Return
  mov al, 0
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
__#300_IF_NEXT:
__#301_IF_END:
; assembler.qnp:553:20  ->  FunctionCall
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#56$?ArgParseData'
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsDestReg.~p?AssemblerData~?RegID
  call rax
  add rsp, 0x10
; assembler.qnp:555:5  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#56$?ArgParseData'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseRegOffset.~p?AssemblerData~p?ArgParseData
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#302_IF_NEXT
; assembler.qnp:556:9  ->  Return
  mov al, 0
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
__#302_IF_NEXT:
__#303_IF_END:
; assembler.qnp:558:25  ->  FunctionCall
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsOffsetSelect.~p?AssemblerData~?i32
  call rax
  add rsp, 0x10
; assembler.qnp:560:23  ->  FunctionCall
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#56$?ArgParseData'
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsSourceReg1.~p?AssemblerData~?RegID
  call rax
  add rsp, 0x10
; assembler.qnp:561:5  ->  If_Clause
  sub rsp, 8
  mov rax, 0x2
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#56$?ArgParseData'
  add rax, 8
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsOffset.~p?AssemblerData~?i32~?OffsetType
  call rax
  add rsp, 0x18
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#304_IF_NEXT
; assembler.qnp:562:9  ->  Return
  mov al, 0
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
__#304_IF_NEXT:
__#305_IF_END:
; assembler.qnp:564:5  ->  Return
  mov al, 1
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
parseInstructionMemWrite.~p?AssemblerData~?InsCode:
  push rbp
  mov rbp, rsp
  sub rsp, 0xe
; assembler.qnp:568:18  ->  Assign
  mov rax, 0x1f
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#57$?ArgParseData'
  add rax, 0
  pop rcx
  mov [rax], rcx
; assembler.qnp:569:16  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#57$?ArgParseData'
  add rax, 8
  pop rcx
  mov [rax], ecx
; assembler.qnp:570:19  ->  Assign
  mov al, 0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#57$?ArgParseData'
  add rax, 12
  pop rcx
  mov [rax], cl
; assembler.qnp:571:27  ->  Assign
  mov al, 0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#57$?ArgParseData'
  add rax, 13
  pop rcx
  mov [rax], cl
; assembler.qnp:573:5  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#57$?ArgParseData'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseRegOffset.~p?AssemblerData~p?ArgParseData
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#306_IF_NEXT
; assembler.qnp:574:9  ->  Return
  mov al, 0
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
__#306_IF_NEXT:
__#307_IF_END:
; assembler.qnp:576:23  ->  FunctionCall
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#57$?ArgParseData'
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsSourceReg1.~p?AssemblerData~?RegID
  call rax
  add rsp, 0x10
; assembler.qnp:577:5  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#57$?ArgParseData'
  add rax, 12
  mov al, [rax]
  cmp al, 0
  je __#308_IF_NEXT
; assembler.qnp:578:29  ->  FunctionCall
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsOffsetSelect.~p?AssemblerData~?i32
  call rax
  add rsp, 0x10
; assembler.qnp:579:9  ->  If_Clause
  sub rsp, 8
  mov rax, 0x3
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#57$?ArgParseData'
  add rax, 8
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsOffset.~p?AssemblerData~?i32~?OffsetType
  call rax
  add rsp, 0x18
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#310_IF_NEXT
; assembler.qnp:580:13  ->  Return
  mov al, 0
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
__#310_IF_NEXT:
__#311_IF_END:
__#308_IF_NEXT:
__#309_IF_END:
; assembler.qnp:582:5  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#57$?ArgParseData'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseRegOffset.~p?AssemblerData~p?ArgParseData
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#312_IF_NEXT
; assembler.qnp:583:9  ->  Return
  mov al, 0
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
__#312_IF_NEXT:
__#313_IF_END:
; assembler.qnp:585:23  ->  FunctionCall
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#57$?ArgParseData'
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsSourceReg2.~p?AssemblerData~?RegID
  call rax
  add rsp, 0x10
; assembler.qnp:586:5  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#57$?ArgParseData'
  add rax, 12
  mov al, [rax]
  cmp al, 0
  je __#314_IF_NEXT
; assembler.qnp:587:29  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsOffsetSelect.~p?AssemblerData~?i32
  call rax
  add rsp, 0x10
; assembler.qnp:588:9  ->  If_Clause
  sub rsp, 8
  mov rax, 0x3
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#57$?ArgParseData'
  add rax, 8
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsOffset.~p?AssemblerData~?i32~?OffsetType
  call rax
  add rsp, 0x18
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#316_IF_NEXT
; assembler.qnp:589:13  ->  Return
  mov al, 0
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
__#316_IF_NEXT:
__#317_IF_END:
__#314_IF_NEXT:
__#315_IF_END:
; assembler.qnp:591:5  ->  Return
  mov al, 1
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
parseInstructionThreeArg.~p?AssemblerData~?InsCode:
  push rbp
  mov rbp, rsp
  sub rsp, 0xe
; assembler.qnp:478:18  ->  Assign
  mov rax, 0x1f
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#54$?ArgParseData'
  add rax, 0
  pop rcx
  mov [rax], rcx
; assembler.qnp:479:16  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#54$?ArgParseData'
  add rax, 8
  pop rcx
  mov [rax], ecx
; assembler.qnp:480:19  ->  Assign
  mov al, 0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#54$?ArgParseData'
  add rax, 12
  pop rcx
  mov [rax], cl
; assembler.qnp:481:27  ->  Assign
  mov al, 0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#54$?ArgParseData'
  add rax, 13
  pop rcx
  mov [rax], cl
; assembler.qnp:483:5  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#54$?ArgParseData'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseReg.~p?AssemblerData~p?ArgParseData
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#318_IF_NEXT
; assembler.qnp:484:9  ->  Return
  mov al, 0
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
__#318_IF_NEXT:
__#319_IF_END:
; assembler.qnp:486:20  ->  FunctionCall
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#54$?ArgParseData'
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsDestReg.~p?AssemblerData~?RegID
  call rax
  add rsp, 0x10
; assembler.qnp:488:5  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#54$?ArgParseData'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseRegOffset.~p?AssemblerData~p?ArgParseData
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#320_IF_NEXT
; assembler.qnp:489:9  ->  Return
  mov al, 0
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
__#320_IF_NEXT:
__#321_IF_END:
; assembler.qnp:491:23  ->  FunctionCall
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#54$?ArgParseData'
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsSourceReg1.~p?AssemblerData~?RegID
  call rax
  add rsp, 0x10
; assembler.qnp:492:5  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#54$?ArgParseData'
  add rax, 12
  mov al, [rax]
  cmp al, 0
  je __#322_IF_NEXT
; assembler.qnp:493:29  ->  FunctionCall
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsOffsetSelect.~p?AssemblerData~?i32
  call rax
  add rsp, 0x10
; assembler.qnp:494:9  ->  If_Clause
  sub rsp, 8
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#54$?ArgParseData'
  add rax, 8
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsOffset.~p?AssemblerData~?i32~?OffsetType
  call rax
  add rsp, 0x18
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#324_IF_NEXT
; assembler.qnp:495:13  ->  Return
  mov al, 0
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
__#324_IF_NEXT:
__#325_IF_END:
__#322_IF_NEXT:
__#323_IF_END:
; assembler.qnp:497:5  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#54$?ArgParseData'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseRegOffset.~p?AssemblerData~p?ArgParseData
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#326_IF_NEXT
; assembler.qnp:498:9  ->  Return
  mov al, 0
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
__#326_IF_NEXT:
__#327_IF_END:
; assembler.qnp:500:23  ->  FunctionCall
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#54$?ArgParseData'
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsSourceReg2.~p?AssemblerData~?RegID
  call rax
  add rsp, 0x10
; assembler.qnp:501:5  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#54$?ArgParseData'
  add rax, 12
  mov al, [rax]
  cmp al, 0
  je __#328_IF_NEXT
; assembler.qnp:502:29  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsOffsetSelect.~p?AssemblerData~?i32
  call rax
  add rsp, 0x10
; assembler.qnp:503:9  ->  If_Clause
  sub rsp, 8
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff2 ; local 'apd#54$?ArgParseData'
  add rax, 8
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsOffset.~p?AssemblerData~?i32~?OffsetType
  call rax
  add rsp, 0x18
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#330_IF_NEXT
; assembler.qnp:504:13  ->  Return
  mov al, 0
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
__#330_IF_NEXT:
__#331_IF_END:
__#328_IF_NEXT:
__#329_IF_END:
; assembler.qnp:506:5  ->  Return
  mov al, 1
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
parseLabel.~p?AssemblerData:
  push rbp
  mov rbp, rsp
  sub rsp, 0x9
; assembler.qnp:272:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_47
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseExact.~p?AssemblerData~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#332_IF_NEXT
; assembler.qnp:273:9  ->  Return
  mov al, 0
  mov [rbp + 0x18], al
  mov rsp, rbp
  pop rbp
  ret
__#332_IF_NEXT:
__#333_IF_END:
; assembler.qnp:275:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_47
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseExact.~p?AssemblerData~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#334_IF_NEXT
; assembler.qnp:276:23  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 17
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 8
  mov rax, [rax]
  push rax
  mov rax, __#str_48
  push rax
  mov rax, handleAsmError.~pc?u8~pc?std.String~?u64~?u64~p?u32
  call rax
  add rsp, 0x28
  pop rax
; assembler.qnp:277:29  ->  Assign
  mov al, 1
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 65
  pop rcx
  mov [rax], cl
; assembler.qnp:278:9  ->  Return
  mov al, 0
  mov [rbp + 0x18], al
  mov rsp, rbp
  pop rbp
  ret
__#334_IF_NEXT:
__#335_IF_END:
; assembler.qnp:281:20  ->  Assign
  sub rsp, 8
  mov rax, 0
  push rax
  mov rax, std.__new.~p?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'name#30$p?std.String'
  pop rcx
  mov [rax], rcx
; assembler.qnp:283:5  ->  While_Loop
__#337_WHILE_BEGIN:
__#339_LOOP_CONTINUE:
  sub rsp, 8
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 33
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, std.String.at.~pc?std.String~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffff ; local 'c#29$?u8'
  pop rcx
  mov [rax], cl
  mov al, [rax]
  push rax
  mov rax, std.isalnum.~?u8
  call rax
  add rsp, 0x8
  pop rax
  cmp al, 0
  je __#336_WHILE_END
; assembler.qnp:284:9  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 33
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
; assembler.qnp:285:9  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
; assembler.qnp:286:24  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffff ; local 'c#29$?u8'
  mov al, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'name#30$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.push_back.~p?std.String~?u8
  call rax
  add rsp, 0x10
  pop rax
  jmp __#337_WHILE_BEGIN
__#338_LOOP_BREAK:
__#336_WHILE_END:
; assembler.qnp:288:5  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'name#30$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.length.~pc?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#340_IF_NEXT
; assembler.qnp:289:23  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 17
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 8
  mov rax, [rax]
  push rax
  mov rax, __#str_49
  push rax
  mov rax, handleAsmError.~pc?u8~pc?std.String~?u64~?u64~p?u32
  call rax
  add rsp, 0x28
  pop rax
; assembler.qnp:290:29  ->  Assign
  mov al, 1
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 65
  pop rcx
  mov [rax], cl
; assembler.qnp:291:9  ->  Return
  mov al, 0
  mov [rbp + 0x18], al
  mov rsp, rbp
  pop rbp
  ret
__#340_IF_NEXT:
__#341_IF_END:
; assembler.qnp:293:20  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseWhitespace.~p?AssemblerData
  call rax
  add rsp, 0x8
  pop rax
; assembler.qnp:294:5  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseNewline.~p?AssemblerData
  call rax
  add rsp, 0x8
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#342_IF_NEXT
; assembler.qnp:295:23  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 17
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 8
  mov rax, [rax]
  push rax
  mov rax, __#str_50
  push rax
  mov rax, handleAsmError.~pc?u8~pc?std.String~?u64~?u64~p?u32
  call rax
  add rsp, 0x28
  pop rax
; assembler.qnp:296:29  ->  Assign
  mov al, 1
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 65
  pop rcx
  mov [rax], cl
; assembler.qnp:297:9  ->  Return
  mov al, 0
  mov [rbp + 0x18], al
  mov rsp, rbp
  pop rbp
  ret
__#342_IF_NEXT:
__#343_IF_END:
; assembler.qnp:301:5  ->  Return
  mov al, 1
  mov [rbp + 0x18], al
  mov rsp, rbp
  pop rbp
  ret
parseNewline.~p?AssemblerData:
  push rbp
  mov rbp, rsp
; assembler.qnp:227:5  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 33
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, std.String.at.~pc?std.String~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov al, 0xa
  mov cl, al
  pop rax
  cmp al, cl
  setne al
  cmp al, 0
  je __#344_IF_NEXT
; assembler.qnp:228:9  ->  Return
  mov al, 0
  mov [rbp + 0x18], al
  mov rsp, rbp
  pop rbp
  ret
__#344_IF_NEXT:
__#345_IF_END:
; assembler.qnp:230:5  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 33
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
; assembler.qnp:231:5  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 17
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
; assembler.qnp:232:18  ->  Assign
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  pop rcx
  mov [rax], rcx
; assembler.qnp:233:5  ->  Return
  mov al, 1
  mov [rbp + 0x18], al
  mov rsp, rbp
  pop rbp
  ret
parseReg.~p?AssemblerData~p?ArgParseData:
  push rbp
  mov rbp, rsp
  sub rsp, 0x9
; assembler.qnp:324:5  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseWhitespace.~p?AssemblerData
  call rax
  add rsp, 0x8
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#346_IF_NEXT
; assembler.qnp:325:23  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 17
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 8
  mov rax, [rax]
  push rax
  mov rax, __#str_51
  push rax
  mov rax, handleAsmError.~pc?u8~pc?std.String~?u64~?u64~p?u32
  call rax
  add rsp, 0x28
  pop rax
; assembler.qnp:326:29  ->  Assign
  mov al, 1
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 65
  pop rcx
  mov [rax], cl
; assembler.qnp:327:9  ->  Return
  mov al, 0
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
__#346_IF_NEXT:
__#347_IF_END:
; assembler.qnp:329:20  ->  Assign
  sub rsp, 8
  mov rax, 0
  push rax
  mov rax, std.__new.~p?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'name#35$p?std.String'
  pop rcx
  mov [rax], rcx
; assembler.qnp:331:5  ->  While_Loop
__#349_WHILE_BEGIN:
__#351_LOOP_CONTINUE:
  sub rsp, 8
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 33
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, std.String.at.~pc?std.String~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'c#36$?u8'
  pop rcx
  mov [rax], cl
  mov al, [rax]
  push rax
  mov rax, std.isalnum.~?u8
  call rax
  add rsp, 0x8
  pop rax
  cmp al, 0
  je __#348_WHILE_END
; assembler.qnp:332:9  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 33
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
; assembler.qnp:333:9  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
; assembler.qnp:334:24  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'c#36$?u8'
  mov al, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'name#35$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.push_back.~p?std.String~?u8
  call rax
  add rsp, 0x10
  pop rax
  jmp __#349_WHILE_BEGIN
__#350_LOOP_BREAK:
__#348_WHILE_END:
; assembler.qnp:336:19  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'name#35$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, regIDFromStr.~pc?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'apd#0$p?ArgParseData'
  mov rax, [rax]
  add rax, 0
  pop rcx
  mov [rax], rcx
; assembler.qnp:337:15  ->  FunctionCall
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'name#35$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.delete.~p?std.String
  call rax
  add rsp, 0x8
; assembler.qnp:339:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'apd#0$p?ArgParseData'
  mov rax, [rax]
  add rax, 0
  push rax
  mov rax, 0x1f
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#352_IF_NEXT
; assembler.qnp:340:23  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 17
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 8
  mov rax, [rax]
  push rax
  mov rax, __#str_52
  push rax
  mov rax, handleAsmError.~pc?u8~pc?std.String~?u64~?u64~p?u32
  call rax
  add rsp, 0x28
  pop rax
; assembler.qnp:341:29  ->  Assign
  mov al, 1
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 65
  pop rcx
  mov [rax], cl
; assembler.qnp:342:9  ->  Return
  mov al, 0
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
__#352_IF_NEXT:
__#353_IF_END:
; assembler.qnp:344:5  ->  Return
  mov al, 1
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
parseRegOffset.~p?AssemblerData~p?ArgParseData:
  push rbp
  mov rbp, rsp
  sub rsp, 0x9
; assembler.qnp:347:5  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'apd#0$p?ArgParseData'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseReg.~p?AssemblerData~p?ArgParseData
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#354_IF_NEXT
; assembler.qnp:348:9  ->  Return
  mov al, 0
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
__#354_IF_NEXT:
__#355_IF_END:
; assembler.qnp:350:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_53
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseExact.~p?AssemblerData~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#356_IF_NEXT
; assembler.qnp:351:24  ->  Assign
  mov al, 0
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'apd#0$p?ArgParseData'
  mov rax, [rax]
  add rax, 12
  pop rcx
  mov [rax], cl
; assembler.qnp:352:9  ->  Return
  mov al, 1
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
__#356_IF_NEXT:
__#357_IF_END:
; assembler.qnp:354:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'apd#0$p?ArgParseData'
  mov rax, [rax]
  add rax, 13
  mov al, [rax]
  cmp al, 0
  je __#358_IF_NEXT
; assembler.qnp:355:23  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 17
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 8
  mov rax, [rax]
  push rax
  mov rax, __#str_54
  push rax
  mov rax, handleAsmError.~pc?u8~pc?std.String~?u64~?u64~p?u32
  call rax
  add rsp, 0x28
  pop rax
; assembler.qnp:356:29  ->  Assign
  mov al, 1
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 65
  pop rcx
  mov [rax], cl
; assembler.qnp:357:9  ->  Return
  mov al, 0
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
__#358_IF_NEXT:
__#359_IF_END:
; assembler.qnp:359:28  ->  Assign
  mov al, 1
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'apd#0$p?ArgParseData'
  mov rax, [rax]
  add rax, 13
  pop rcx
  mov [rax], cl
; assembler.qnp:360:20  ->  Assign
  mov al, 1
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'apd#0$p?ArgParseData'
  mov rax, [rax]
  add rax, 12
  pop rcx
  mov [rax], cl
; assembler.qnp:362:22  ->  Assign
  sub rsp, 8
  mov rax, 0
  push rax
  mov rax, std.__new.~p?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'offStr#37$p?std.String'
  pop rcx
  mov [rax], rcx
; assembler.qnp:364:5  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 33
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, std.String.at.~pc?std.String~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov al, 0x2d
  mov cl, al
  pop rax
  cmp al, cl
  sete al
  cmp al, 0
  je __#360_IF_NEXT
; assembler.qnp:365:26  ->  FunctionCall
  sub rsp, 8
  mov al, 0x2d
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'offStr#37$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.push_back.~p?std.String~?u8
  call rax
  add rsp, 0x10
  pop rax
; assembler.qnp:366:9  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 33
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
; assembler.qnp:367:9  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
__#360_IF_NEXT:
__#361_IF_END:
; assembler.qnp:369:5  ->  While_Loop
__#363_WHILE_BEGIN:
__#365_LOOP_CONTINUE:
  sub rsp, 8
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 33
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, std.String.at.~pc?std.String~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'c#38$?u8'
  pop rcx
  mov [rax], cl
  mov al, [rax]
  push rax
  mov rax, std.isalnum.~?u8
  call rax
  add rsp, 0x8
  pop rax
  cmp al, 0
  je __#362_WHILE_END
; assembler.qnp:370:9  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 33
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
; assembler.qnp:371:9  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
; assembler.qnp:372:26  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'c#38$?u8'
  mov al, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'offStr#37$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.push_back.~p?std.String~?u8
  call rax
  add rsp, 0x10
  pop rax
  jmp __#363_WHILE_BEGIN
__#364_LOOP_BREAK:
__#362_WHILE_END:
; assembler.qnp:374:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_55
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'offStr#37$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.beginswith.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#366_IF_NEXT
; assembler.qnp:375:21  ->  Assign
  sub rsp, 8
  mov rax, 0x10
  push rax
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'offStr#37$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.raw.~pc?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, 0x2
  mov rcx, rax
  pop rax
  add rax, rcx
  push rax
  mov rax, std.stoi.~pc?u8~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'apd#0$p?ArgParseData'
  mov rax, [rax]
  add rax, 8
  pop rcx
  mov [rax], ecx
  jmp __#367_IF_END
__#366_IF_NEXT:
  sub rsp, 8
  mov rax, __#str_56
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'offStr#37$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.beginswith.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#368_IF_NEXT
; assembler.qnp:377:21  ->  Assign
  sub rsp, 8
  mov rax, 0x2
  push rax
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'offStr#37$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.raw.~pc?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, 0x2
  mov rcx, rax
  pop rax
  add rax, rcx
  push rax
  mov rax, std.stoi.~pc?u8~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'apd#0$p?ArgParseData'
  mov rax, [rax]
  add rax, 8
  pop rcx
  mov [rax], ecx
  jmp __#367_IF_END
__#368_IF_NEXT:
  sub rsp, 8
  mov rax, __#str_57
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'offStr#37$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.beginswith.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#369_IF_NEXT
; assembler.qnp:379:21  ->  Assign
  sub rsp, 8
  mov rax, 0x8
  push rax
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'offStr#37$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.raw.~pc?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, 0x1
  mov rcx, rax
  pop rax
  add rax, rcx
  push rax
  mov rax, std.stoi.~pc?u8~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'apd#0$p?ArgParseData'
  mov rax, [rax]
  add rax, 8
  pop rcx
  mov [rax], ecx
  jmp __#367_IF_END
__#369_IF_NEXT:
; assembler.qnp:381:21  ->  Assign
  sub rsp, 8
  mov rax, 0xa
  push rax
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'offStr#37$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.raw.~pc?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, std.stoi.~pc?u8~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'apd#0$p?ArgParseData'
  mov rax, [rax]
  add rax, 8
  pop rcx
  mov [rax], ecx
__#370_IF_NEXT:
__#367_IF_END:
; assembler.qnp:383:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_58
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, parseExact.~p?AssemblerData~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#371_IF_NEXT
; assembler.qnp:384:23  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 17
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 8
  mov rax, [rax]
  push rax
  mov rax, __#str_59
  push rax
  mov rax, handleAsmError.~pc?u8~pc?std.String~?u64~?u64~p?u32
  call rax
  add rsp, 0x28
  pop rax
; assembler.qnp:385:29  ->  Assign
  mov al, 1
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 65
  pop rcx
  mov [rax], cl
; assembler.qnp:386:9  ->  Return
  mov al, 0
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
__#371_IF_NEXT:
__#372_IF_END:
; assembler.qnp:388:5  ->  Return
  mov al, 1
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
parseWhitespace.~p?AssemblerData:
  push rbp
  mov rbp, rsp
  sub rsp, 0x1
; assembler.qnp:207:34  ->  Assign
  mov al, 0
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffff ; local 'parsedWhitespace#24$?bool'
  pop rcx
  mov [rax], cl
; assembler.qnp:208:5  ->  While_Loop
__#374_WHILE_BEGIN:
__#376_LOOP_CONTINUE:
  sub rsp, 8
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 33
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, std.String.at.~pc?std.String~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, std.isspace.~?u8
  call rax
  add rsp, 0x8
  pop rax
  cmp al, 0
  je __#373_WHILE_END
; assembler.qnp:209:9  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 33
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
; assembler.qnp:210:9  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
; assembler.qnp:211:26  ->  Assign
  mov al, 1
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffff ; local 'parsedWhitespace#24$?bool'
  pop rcx
  mov [rax], cl
  jmp __#374_WHILE_BEGIN
__#375_LOOP_BREAK:
__#373_WHILE_END:
; assembler.qnp:213:5  ->  Return
  mov rax, rbp
  add rax, 0xffffffffffffffff ; local 'parsedWhitespace#24$?bool'
  mov al, [rax]
  mov [rbp + 0x18], al
  mov rsp, rbp
  pop rbp
  ret
printHelp.:
  push rbp
  mov rbp, rsp
; QISM.qnp:103:16  ->  FunctionCall
  sub rsp, 8
  mov rax, __#str_87
  push rax
  mov rax, std.println.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
; QISM.qnp:104:16  ->  FunctionCall
  sub rsp, 8
  mov rax, std.println.
  call rax
  add rsp, 0x0
  pop rax
; QISM.qnp:105:16  ->  FunctionCall
  sub rsp, 8
  mov rax, __#str_88
  push rax
  mov rax, std.println.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
; QISM.qnp:106:16  ->  FunctionCall
  sub rsp, 8
  mov rax, __#str_89
  push rax
  mov rax, std.println.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
; QISM.qnp:107:16  ->  FunctionCall
  sub rsp, 8
  mov rax, __#str_90
  push rax
  mov rax, std.println.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
; QISM.qnp:108:16  ->  FunctionCall
  sub rsp, 8
  mov rax, __#str_91
  push rax
  mov rax, std.println.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
; QISM.qnp:109:16  ->  FunctionCall
  sub rsp, 8
  mov rax, __#str_92
  push rax
  mov rax, std.println.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
; QISM.qnp:110:16  ->  FunctionCall
  sub rsp, 8
  mov rax, __#str_93
  push rax
  mov rax, std.println.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
; QISM.qnp:111:16  ->  FunctionCall
  sub rsp, 8
  mov rax, __#str_94
  push rax
  mov rax, std.println.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
; QISM.qnp:112:16  ->  FunctionCall
  sub rsp, 8
  mov rax, __#str_95
  push rax
  mov rax, std.println.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
; :0:0  ->  Return
  mov rsp, rbp
  pop rbp
  ret
readFile.~pc?std.String:
  push rbp
  mov rbp, rsp
  sub rsp, 0x28
; QISM.qnp:66:20  ->  Assign
  sub rsp, 8
  mov rax, __#str_82
  push rax
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'filename#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.raw.~pc?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, 0
  push rax
  mov rax, std.__new.~p?std.File~pc?u8~pc?u8
  call rax
  add rsp, 0x18
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'file#79$p?std.File'
  pop rcx
  mov [rax], rcx
; QISM.qnp:67:5  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'file#79$p?std.File'
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#377_IF_NEXT
; QISM.qnp:68:23  ->  FunctionCall
  sub rsp, 8
  mov rax, __#str_83
  push rax
  mov rax, handleMsgError.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
; QISM.qnp:69:9  ->  Return
  mov rax, 0
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#377_IF_NEXT:
__#378_IF_END:
; QISM.qnp:71:26  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'file#79$p?std.File'
  mov rax, [rax]
  push rax
  mov rax, std.File.size.~p?std.File
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'size#80$?u64'
  pop rcx
  mov [rax], rcx
; QISM.qnp:73:5  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'size#80$?u64'
  push rax
  mov rax, 0xffffffffffffffff
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#379_IF_NEXT
; QISM.qnp:74:23  ->  FunctionCall
  sub rsp, 8
  mov rax, __#str_84
  push rax
  mov rax, handleMsgError.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
; QISM.qnp:75:19  ->  FunctionCall
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'file#79$p?std.File'
  mov rax, [rax]
  push rax
  mov rax, std.delete.~p?std.File
  call rax
  add rsp, 0x8
; QISM.qnp:76:9  ->  Return
  mov rax, 0
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#379_IF_NEXT:
__#380_IF_END:
; QISM.qnp:78:33  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'size#80$?u64'
  push rax
  mov rax, 0x1
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, rcx
  push rax
  mov rax, std.malloc.~?u64
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'buffer#81$p?u8'
  pop rcx
  mov [rax], rcx
; QISM.qnp:79:5  ->  If_Clause
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'buffer#81$p?u8'
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#381_IF_NEXT
; QISM.qnp:80:23  ->  FunctionCall
  sub rsp, 8
  mov rax, __#str_85
  push rax
  mov rax, handleMsgError.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
; QISM.qnp:81:19  ->  FunctionCall
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'file#79$p?std.File'
  mov rax, [rax]
  push rax
  mov rax, std.delete.~p?std.File
  call rax
  add rsp, 0x8
; QISM.qnp:82:9  ->  Return
  mov rax, 0
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#381_IF_NEXT:
__#382_IF_END:
; QISM.qnp:84:27  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'size#80$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'buffer#81$p?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'file#79$p?std.File'
  mov rax, [rax]
  push rax
  mov rax, std.File.read.~p?std.File~p?void~?u64
  call rax
  add rsp, 0x18
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe0 ; local 'nRead#82$?u64'
  pop rcx
  mov [rax], rcx
; QISM.qnp:85:15  ->  FunctionCall
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'file#79$p?std.File'
  mov rax, [rax]
  push rax
  mov rax, std.delete.~p?std.File
  call rax
  add rsp, 0x8
; QISM.qnp:86:5  ->  If_Clause
  mov rax, rbp
  add rax, 0xffffffffffffffe0 ; local 'nRead#82$?u64'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'size#80$?u64'
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, [rcx]
  setne al
  cmp al, 0
  je __#383_IF_NEXT
; QISM.qnp:87:23  ->  FunctionCall
  sub rsp, 8
  mov rax, __#str_86
  push rax
  mov rax, handleMsgError.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
; QISM.qnp:88:17  ->  FunctionCall
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'buffer#81$p?u8'
  mov rax, [rax]
  push rax
  mov rax, std.free.~p?void
  call rax
  add rsp, 0x8
; QISM.qnp:89:9  ->  Return
  mov rax, 0
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#383_IF_NEXT:
__#384_IF_END:
; QISM.qnp:91:18  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'buffer#81$p?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'size#80$?u64'
  mov rax, [rax]
  pop rcx
  add rax, rcx
  pop rcx
  mov [rax], cl
; QISM.qnp:93:19  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'buffer#81$p?u8'
  mov rax, [rax]
  push rax
  mov rax, 0
  push rax
  mov rax, std.__new.~p?std.String~p?u8
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffd8 ; local 'str#83$p?std.String'
  pop rcx
  mov [rax], rcx
; QISM.qnp:94:5  ->  If_Clause
  mov rax, rbp
  add rax, 0xffffffffffffffd8 ; local 'str#83$p?std.String'
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#385_IF_NEXT
; QISM.qnp:95:23  ->  FunctionCall
  sub rsp, 8
  mov rax, __#str_85
  push rax
  mov rax, handleMsgError.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
; QISM.qnp:96:17  ->  FunctionCall
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'buffer#81$p?u8'
  mov rax, [rax]
  push rax
  mov rax, std.free.~p?void
  call rax
  add rsp, 0x8
; QISM.qnp:97:9  ->  Return
  mov rax, 0
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#385_IF_NEXT:
__#386_IF_END:
; QISM.qnp:99:5  ->  Return
  mov rax, rbp
  add rax, 0xffffffffffffffd8 ; local 'str#83$p?std.String'
  mov rax, [rax]
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
regIDFromStr.~pc?std.String:
  push rbp
  mov rbp, rsp
; assembler.qnp:152:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_25
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#387_IF_NEXT
; assembler.qnp:152:29  ->  Return
  mov rax, 0x0
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#387_IF_NEXT:
__#388_IF_END:
; assembler.qnp:153:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_26
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#389_IF_NEXT
; assembler.qnp:153:27  ->  Return
  mov rax, 0x1
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#389_IF_NEXT:
__#390_IF_END:
; assembler.qnp:154:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_27
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#391_IF_NEXT
; assembler.qnp:154:27  ->  Return
  mov rax, 0x2
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#391_IF_NEXT:
__#392_IF_END:
; assembler.qnp:155:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_28
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#393_IF_NEXT
; assembler.qnp:155:27  ->  Return
  mov rax, 0x3
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#393_IF_NEXT:
__#394_IF_END:
; assembler.qnp:156:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_29
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#395_IF_NEXT
; assembler.qnp:156:27  ->  Return
  mov rax, 0x4
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#395_IF_NEXT:
__#396_IF_END:
; assembler.qnp:157:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_30
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#397_IF_NEXT
; assembler.qnp:157:27  ->  Return
  mov rax, 0x5
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#397_IF_NEXT:
__#398_IF_END:
; assembler.qnp:158:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_31
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#399_IF_NEXT
; assembler.qnp:158:27  ->  Return
  mov rax, 0x6
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#399_IF_NEXT:
__#400_IF_END:
; assembler.qnp:159:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_32
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#401_IF_NEXT
; assembler.qnp:159:27  ->  Return
  mov rax, 0x7
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#401_IF_NEXT:
__#402_IF_END:
; assembler.qnp:160:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_33
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#403_IF_NEXT
; assembler.qnp:160:27  ->  Return
  mov rax, 0x8
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#403_IF_NEXT:
__#404_IF_END:
; assembler.qnp:161:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_34
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#405_IF_NEXT
; assembler.qnp:161:27  ->  Return
  mov rax, 0x9
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#405_IF_NEXT:
__#406_IF_END:
; assembler.qnp:162:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_35
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#407_IF_NEXT
; assembler.qnp:162:27  ->  Return
  mov rax, 0xa
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#407_IF_NEXT:
__#408_IF_END:
; assembler.qnp:163:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_36
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#409_IF_NEXT
; assembler.qnp:163:27  ->  Return
  mov rax, 0xb
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#409_IF_NEXT:
__#410_IF_END:
; assembler.qnp:164:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_37
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#411_IF_NEXT
; assembler.qnp:164:27  ->  Return
  mov rax, 0xc
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#411_IF_NEXT:
__#412_IF_END:
; assembler.qnp:165:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_38
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#413_IF_NEXT
; assembler.qnp:165:27  ->  Return
  mov rax, 0xd
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#413_IF_NEXT:
__#414_IF_END:
; assembler.qnp:166:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_39
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#415_IF_NEXT
; assembler.qnp:166:27  ->  Return
  mov rax, 0xe
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#415_IF_NEXT:
__#416_IF_END:
; assembler.qnp:167:5  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_40
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.equals.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  je __#417_IF_NEXT
; assembler.qnp:167:28  ->  Return
  mov rax, 0xf
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#417_IF_NEXT:
__#418_IF_END:
; assembler.qnp:168:5  ->  Return
  mov rax, 0x1f
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
std.File.__delete__.~p?std.File:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:69:11  ->  FunctionCall
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.File'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, std.__fclose.~?i64
  call rax
  add rsp, 0x8
; :0:0  ->  Return
  mov rsp, rbp
  pop rbp
  ret
std.File.__new__.~p?std.File~pc?u8~pc?u8:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:63:16  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0x20 ; local 'mode#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'filename#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.__fopen.~pc?u8~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.File'
  mov rax, [rax]
  add rax, 0
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:64:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.File'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#419_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:65:4  ->  Return
  mov al, 0
  mov [rbp + 0x28], al
  mov rsp, rbp
  pop rbp
  ret
__#419_IF_NEXT:
__#420_IF_END:
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:66:3  ->  Return
  mov al, 1
  mov [rbp + 0x28], al
  mov rsp, rbp
  pop rbp
  ret
std.File.read.~p?std.File~p?void~?u64:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:72:3  ->  Return
  sub rsp, 8
  mov rax, rbp
  add rax, 0x20 ; local 'num#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'dest#0$p?void'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.File'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, std.__fread.~?i64~p?void~?u64
  call rax
  add rsp, 0x18
  pop rax
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
std.File.seek.~p?std.File~?u64~?std.File.Seek:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:78:3  ->  Return
  sub rsp, 8
  mov rax, rbp
  add rax, 0x20 ; local 'origin#0$?std.File.Seek'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'offset#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.File'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, std.__fseek.~?i64~?u64~?std.File.Seek
  call rax
  add rsp, 0x18
  pop rax
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
std.File.size.~p?std.File:
  push rbp
  mov rbp, rsp
  sub rsp, 0x18
; ../.install/qinp/stdlib/fileio.qnp:64:27  ->  Assign
  sub rsp, 8
  mov rax, 0x1
  push rax
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.File'
  mov rax, [rax]
  push rax
  mov rax, std.File.seek.~p?std.File~?u64~?std.File.Seek
  call rax
  add rsp, 0x18
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'currPos#191$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/fileio.qnp:65:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'currPos#191$?u64'
  push rax
  mov rax, 0xffffffffffffffff
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#421_IF_NEXT
; ../.install/qinp/stdlib/fileio.qnp:66:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#421_IF_NEXT:
__#422_IF_END:
; ../.install/qinp/stdlib/fileio.qnp:68:23  ->  Assign
  sub rsp, 8
  mov rax, 0x2
  push rax
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.File'
  mov rax, [rax]
  push rax
  mov rax, std.File.seek.~p?std.File~?u64~?std.File.Seek
  call rax
  add rsp, 0x18
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'end#192$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/fileio.qnp:69:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'end#192$?u64'
  push rax
  mov rax, 0xffffffffffffffff
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#423_IF_NEXT
; ../.install/qinp/stdlib/fileio.qnp:70:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#423_IF_NEXT:
__#424_IF_END:
; ../.install/qinp/stdlib/fileio.qnp:71:25  ->  Assign
  sub rsp, 8
  mov rax, 0x0
  push rax
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.File'
  mov rax, [rax]
  push rax
  mov rax, std.File.seek.~p?std.File~?u64~?std.File.Seek
  call rax
  add rsp, 0x18
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'begin#193$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/fileio.qnp:72:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'begin#193$?u64'
  push rax
  mov rax, 0xffffffffffffffff
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#425_IF_NEXT
; ../.install/qinp/stdlib/fileio.qnp:73:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#425_IF_NEXT:
__#426_IF_END:
; ../.install/qinp/stdlib/fileio.qnp:75:3  ->  If_Clause
  sub rsp, 8
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'currPos#191$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.File'
  mov rax, [rax]
  push rax
  mov rax, std.File.seek.~p?std.File~?u64~?std.File.Seek
  call rax
  add rsp, 0x18
  pop rax
  push rax
  mov rax, 0xffffffffffffffff
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#427_IF_NEXT
; ../.install/qinp/stdlib/fileio.qnp:76:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#427_IF_NEXT:
__#428_IF_END:
; ../.install/qinp/stdlib/fileio.qnp:78:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'end#192$?u64'
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'begin#193$?u64'
  mov rcx, rax
  pop rax
  mov rax, [rax]
  sub rax, [rcx]
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
std.File.write.~p?std.File~pc?void~?u64:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:75:3  ->  Return
  sub rsp, 8
  mov rax, rbp
  add rax, 0x20 ; local 'num#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'src#0$pc?void'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.File'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, std.__fwrite.~?i64~pc?void~?u64
  call rax
  add rsp, 0x18
  pop rax
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
std.String.__delete__.~p?std.String:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/string.qnp:330:7  ->  FunctionCall
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, std.free.~p?void
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/string.qnp:331:16  ->  Assign
  mov rax, 0
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  add rax, 0
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/string.qnp:332:18  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  add rax, 8
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/string.qnp:333:20  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  add rax, 16
  pop rcx
  mov [rax], rcx
; :0:0  ->  Return
  mov rsp, rbp
  pop rbp
  ret
std.String.__new__.~p?std.String:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/string.qnp:305:3  ->  Return
  sub rsp, 8
  mov rax, __#str_129
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.__new__.~p?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  mov [rbp + 0x18], al
  mov rsp, rbp
  pop rbp
  ret
std.String.__new__.~p?std.String~p?u8:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/string.qnp:308:16  ->  Assign
  mov rax, rbp
  add rax, 0x18 ; local 'str#0$p?u8'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  add rax, 0
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; ../.install/qinp/stdlib/string.qnp:309:18  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'str#0$p?u8'
  mov rax, [rax]
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  add rax, 8
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/string.qnp:310:20  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  add rax, 8
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  add rax, 16
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; ../.install/qinp/stdlib/string.qnp:311:3  ->  Return
  mov al, 1
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
std.String.__new__.~p?std.String~pc?u8:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/string.qnp:314:3  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'str#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'str#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.__new__.~p?std.String~pc?u8~?u64
  call rax
  add rsp, 0x18
  pop rax
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
std.String.__new__.~p?std.String~pc?u8~?u64:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/string.qnp:317:18  ->  Assign
  mov rax, rbp
  add rax, 0x20 ; local 'num#0$?u64'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  add rax, 8
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; ../.install/qinp/stdlib/string.qnp:318:20  ->  Assign
  mov rax, rbp
  add rax, 0x20 ; local 'num#0$?u64'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  add rax, 16
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; ../.install/qinp/stdlib/string.qnp:319:16  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  add rax, 8
  push rax
  mov rax, 0x1
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, rcx
  push rax
  mov rax, std.malloc.~?u64
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  add rax, 0
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/string.qnp:320:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#429_IF_NEXT
; ../.install/qinp/stdlib/string.qnp:321:4  ->  Return
  mov al, 0
  mov [rbp + 0x28], al
  mov rsp, rbp
  pop rbp
  ret
__#429_IF_NEXT:
__#430_IF_END:
; ../.install/qinp/stdlib/string.qnp:322:9  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  add rax, 8
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'str#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, std.memcpy.~p?void~pc?void~?u64
  call rax
  add rsp, 0x18
  pop rax
; ../.install/qinp/stdlib/string.qnp:323:32  ->  Assign
  mov al, 0x0
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  add rax, 8
  mov rax, [rax]
  pop rcx
  add rax, rcx
  pop rcx
  mov [rax], cl
; ../.install/qinp/stdlib/string.qnp:324:3  ->  Return
  mov al, 1
  mov [rbp + 0x28], al
  mov rsp, rbp
  pop rbp
  ret
std.String.append.~p?std.String~pc?std.String:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/string.qnp:347:3  ->  Return
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'other#0$pc?std.String'
  mov rax, [rax]
  add rax, 8
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'other#0$pc?std.String'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.append.~p?std.String~pc?u8~?u64
  call rax
  add rsp, 0x18
  pop rax
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
std.String.append.~p?std.String~pc?u8:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/string.qnp:350:3  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'other#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'other#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.append.~p?std.String~pc?u8~?u64
  call rax
  add rsp, 0x18
  pop rax
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
std.String.append.~p?std.String~pc?u8~?u64:
  push rbp
  mov rbp, rsp
  sub rsp, 0x10
; ../.install/qinp/stdlib/string.qnp:353:34  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  add rax, 8
  push rax
  mov rax, rbp
  add rax, 0x20 ; local 'num#0$?u64'
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, [rcx]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'newLength#159$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/string.qnp:355:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'newLength#159$?u64'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  add rax, 16
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, [rcx]
  setle al
  cmp al, 0
  je __#431_IF_NEXT
; ../.install/qinp/stdlib/string.qnp:356:10  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x20 ; local 'num#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'other#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  add rax, 0
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  add rax, 8
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, rcx
  push rax
  mov rax, std.memcpy.~p?void~pc?void~?u64
  call rax
  add rsp, 0x18
  pop rax
; ../.install/qinp/stdlib/string.qnp:357:28  ->  Assign
  mov al, 0x0
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'newLength#159$?u64'
  mov rax, [rax]
  pop rcx
  add rax, rcx
  pop rcx
  mov [rax], cl
; ../.install/qinp/stdlib/string.qnp:358:19  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'newLength#159$?u64'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  add rax, 8
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; ../.install/qinp/stdlib/string.qnp:359:4  ->  Return
  mov al, 1
  mov [rbp + 0x28], al
  mov rsp, rbp
  pop rbp
  ret
__#431_IF_NEXT:
__#432_IF_END:
; ../.install/qinp/stdlib/string.qnp:361:28  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'newLength#159$?u64'
  push rax
  mov rax, 0x1
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, rcx
  push rax
  mov rax, std.malloc.~?u64
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'newData#160$p?u8'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/string.qnp:362:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'newData#160$p?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#433_IF_NEXT
; ../.install/qinp/stdlib/string.qnp:363:4  ->  Return
  mov al, 0
  mov [rbp + 0x28], al
  mov rsp, rbp
  pop rbp
  ret
__#433_IF_NEXT:
__#434_IF_END:
; ../.install/qinp/stdlib/string.qnp:364:9  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  add rax, 8
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'newData#160$p?u8'
  mov rax, [rax]
  push rax
  mov rax, std.memcpy.~p?void~pc?void~?u64
  call rax
  add rsp, 0x18
  pop rax
; ../.install/qinp/stdlib/string.qnp:365:9  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x20 ; local 'num#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'other#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'newData#160$p?u8'
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  add rax, 8
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, rcx
  push rax
  mov rax, std.memcpy.~p?void~pc?void~?u64
  call rax
  add rsp, 0x18
  pop rax
; ../.install/qinp/stdlib/string.qnp:366:22  ->  Assign
  mov al, 0x0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'newData#160$p?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'newLength#159$?u64'
  mov rax, [rax]
  pop rcx
  add rax, rcx
  pop rcx
  mov [rax], cl
; ../.install/qinp/stdlib/string.qnp:367:19  ->  FunctionCall
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.__delete__.~p?std.String
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/string.qnp:368:16  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'newData#160$p?u8'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  add rax, 0
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; ../.install/qinp/stdlib/string.qnp:369:18  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'newLength#159$?u64'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  add rax, 8
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; ../.install/qinp/stdlib/string.qnp:370:3  ->  Return
  mov al, 1
  mov [rbp + 0x28], al
  mov rsp, rbp
  pop rbp
  ret
std.String.at.~pc?std.String~?u64:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/string.qnp:412:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'index#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$pc?std.String'
  mov rax, [rax]
  add rax, 8
  mov rcx, rax
  pop rax
  cmp rax, [rcx]
  setge al
  cmp al, 0
  je __#435_IF_NEXT
; ../.install/qinp/stdlib/string.qnp:413:13  ->  FunctionCall
  mov rax, 0x5
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/string.qnp:414:4  ->  Return
  mov rax, 0
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
__#435_IF_NEXT:
__#436_IF_END:
; ../.install/qinp/stdlib/string.qnp:415:3  ->  Return
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$pc?std.String'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'index#0$?u64'
  mov rax, [rax]
  pop rcx
  add rax, rcx
  mov al, [rax]
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
std.String.beginswith.~pc?std.String~pc?u8:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/string.qnp:462:3  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'other#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'other#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.beginswith.~pc?std.String~pc?u8~?u64
  call rax
  add rsp, 0x18
  pop rax
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
std.String.beginswith.~pc?std.String~pc?u8~?u64:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/string.qnp:465:3  ->  Return
  sub rsp, 8
  mov rax, rbp
  add rax, 0x20 ; local 'num#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'other#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.find.~pc?std.String~pc?u8~?u64
  call rax
  add rsp, 0x18
  pop rax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  mov [rbp + 0x28], al
  mov rsp, rbp
  pop rbp
  ret
std.String.compare.~pc?std.String~pc?u8:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/string.qnp:401:16  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'i#166$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/string.qnp:402:3  ->  While_Loop
__#438_WHILE_BEGIN:
__#440_LOOP_CONTINUE:
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$pc?std.String'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'i#166$?u64'
  mov rax, [rax]
  pop rcx
  add rax, rcx
  mov al, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'other#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'i#166$?u64'
  mov rax, [rax]
  pop rcx
  add rax, rcx
  mov rcx, rax
  pop rax
  cmp al, [rcx]
  sete al
  cmp al, 0
  je __#441_LOGICAL_AND_SKIP
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'i#166$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$pc?std.String'
  mov rax, [rax]
  add rax, 8
  mov rcx, rax
  pop rax
  cmp rax, [rcx]
  setl al
__#441_LOGICAL_AND_SKIP:
  cmp al, 0
  je __#437_WHILE_END
; ../.install/qinp/stdlib/string.qnp:403:4  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'i#166$?u64'
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
  jmp __#438_WHILE_BEGIN
__#439_LOOP_BREAK:
__#437_WHILE_END:
; ../.install/qinp/stdlib/string.qnp:405:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$pc?std.String'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'i#166$?u64'
  mov rax, [rax]
  pop rcx
  add rax, rcx
  mov al, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'other#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'i#166$?u64'
  mov rax, [rax]
  pop rcx
  add rax, rcx
  mov rcx, rax
  pop rax
  cmp al, [rcx]
  setl al
  cmp al, 0
  je __#442_IF_NEXT
; ../.install/qinp/stdlib/string.qnp:406:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], rax
  mov rsp, rbp
  pop rbp
  ret
  jmp __#443_IF_END
__#442_IF_NEXT:
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$pc?std.String'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'i#166$?u64'
  mov rax, [rax]
  pop rcx
  add rax, rcx
  mov al, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'other#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'i#166$?u64'
  mov rax, [rax]
  pop rcx
  add rax, rcx
  mov rcx, rax
  pop rax
  cmp al, [rcx]
  setg al
  cmp al, 0
  je __#444_IF_NEXT
; ../.install/qinp/stdlib/string.qnp:408:4  ->  Return
  mov rax, 0x1
  mov [rbp + 0x20], rax
  mov rsp, rbp
  pop rbp
  ret
__#444_IF_NEXT:
__#443_IF_END:
; ../.install/qinp/stdlib/string.qnp:409:3  ->  Return
  mov rax, 0x0
  mov [rbp + 0x20], rax
  mov rsp, rbp
  pop rbp
  ret
std.String.equals.~pc?std.String~pc?u8:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/string.qnp:456:3  ->  Return
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'other#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.compare.~pc?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
std.String.find.~pc?std.String~pc?u8~?u64:
  push rbp
  mov rbp, rsp
  sub rsp, 0x10
; ../.install/qinp/stdlib/string.qnp:435:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x20 ; local 'num#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$pc?std.String'
  mov rax, [rax]
  add rax, 8
  mov rcx, rax
  pop rax
  cmp rax, [rcx]
  setg al
  cmp al, 0
  je __#445_IF_NEXT
; ../.install/qinp/stdlib/string.qnp:436:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
__#445_IF_NEXT:
__#446_IF_END:
; ../.install/qinp/stdlib/string.qnp:438:16  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'i#167$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/string.qnp:440:3  ->  While_Loop
__#448_WHILE_BEGIN:
__#450_LOOP_CONTINUE:
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'i#167$?u64'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$pc?std.String'
  mov rax, [rax]
  add rax, 8
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x20 ; local 'num#0$?u64'
  mov rcx, rax
  pop rax
  sub rax, [rcx]
  push rax
  mov rax, 0x1
  mov rcx, rax
  pop rax
  add rax, rcx
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#447_WHILE_END
; ../.install/qinp/stdlib/string.qnp:441:17  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'j#168$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/string.qnp:442:4  ->  While_Loop
__#452_WHILE_BEGIN:
__#454_LOOP_CONTINUE:
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'j#168$?u64'
  push rax
  mov rax, rbp
  add rax, 0x20 ; local 'num#0$?u64'
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, [rcx]
  setl al
  cmp al, 0
  je __#451_WHILE_END
; ../.install/qinp/stdlib/string.qnp:443:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$pc?std.String'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'i#167$?u64'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'j#168$?u64'
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, [rcx]
  pop rcx
  add rax, rcx
  mov al, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'other#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'j#168$?u64'
  mov rax, [rax]
  pop rcx
  add rax, rcx
  mov rcx, rax
  pop rax
  cmp al, [rcx]
  setne al
  cmp al, 0
  je __#455_IF_NEXT
; ../.install/qinp/stdlib/string.qnp:444:6  ->  Break
  jmp __#453_LOOP_BREAK
__#455_IF_NEXT:
__#456_IF_END:
; ../.install/qinp/stdlib/string.qnp:445:5  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'j#168$?u64'
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
  jmp __#452_WHILE_BEGIN
__#453_LOOP_BREAK:
__#451_WHILE_END:
; ../.install/qinp/stdlib/string.qnp:446:4  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'j#168$?u64'
  push rax
  mov rax, rbp
  add rax, 0x20 ; local 'num#0$?u64'
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, [rcx]
  sete al
  cmp al, 0
  je __#457_IF_NEXT
; ../.install/qinp/stdlib/string.qnp:447:5  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'i#167$?u64'
  mov rax, [rax]
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
__#457_IF_NEXT:
__#458_IF_END:
; ../.install/qinp/stdlib/string.qnp:448:4  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'i#167$?u64'
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
  jmp __#448_WHILE_BEGIN
__#449_LOOP_BREAK:
__#447_WHILE_END:
; ../.install/qinp/stdlib/string.qnp:450:3  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
std.String.length.~pc?std.String:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/string.qnp:339:3  ->  Return
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$pc?std.String'
  mov rax, [rax]
  add rax, 8
  mov rax, [rax]
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
std.String.push_back.~p?std.String~?u8:
  push rbp
  mov rbp, rsp
  sub rsp, 0x9
; ../.install/qinp/stdlib/string.qnp:373:13  ->  Assign
  sub rsp, 8
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'ch#0$?u8'
  push rax
  mov rax, 0
  push rax
  mov rax, std.__new.~p?std.String~p?u8~?u64
  call rax
  add rsp, 0x18
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'tmp#162$p?std.String'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/string.qnp:374:25  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'tmp#162$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.append.~p?std.String~pc?std.String
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'ret#163$?bool'
  pop rcx
  mov [rax], cl
; ../.install/qinp/stdlib/string.qnp:375:9  ->  FunctionCall
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'tmp#162$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.delete.~p?std.String
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/string.qnp:376:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'ret#163$?bool'
  mov al, [rax]
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
std.String.raw.~pc?std.String:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/string.qnp:336:3  ->  Return
  mov rax, rbp
  add rax, 0x10 ; local 'self#0$pc?std.String'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
std.__allocateBlock.~?u64:
  push rbp
  mov rbp, rsp
  sub rsp, 0x10
; ../.install/qinp/stdlib/platform/linux/memory.qnp:124:23  ->  Assign
  sub rsp, 8
  mov rax, 0x1000
  push rax
  mov rax, 0x18
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'minSize#0$?u64'
  mov rcx, rax
  pop rax
  add rax, [rcx]
  push rax
  mov rax, std.ceil.~?u64~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'allocSize#202$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:125:59  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'allocSize#202$?u64'
  mov rax, [rax]
  push rax
  mov rax, std.__sbrk.~?i64
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'block#203$p?std.__MemBlockHeader'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:126:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'block#203$p?std.__MemBlockHeader'
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#459_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/memory.qnp:127:4  ->  Return
  mov rax, 0
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#459_IF_NEXT:
__#460_IF_END:
; ../.install/qinp/stdlib/platform/linux/memory.qnp:130:15  ->  Assign
  mov rax, 0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'block#203$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 0
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:131:15  ->  Assign
  mov rax, 0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'block#203$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 8
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:132:19  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'allocSize#202$?u64'
  push rax
  mov rax, 0x18
  mov rcx, rax
  pop rax
  mov rax, [rax]
  sub rax, rcx
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'block#203$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 16
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:134:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'block#203$p?std.__MemBlockHeader'
  mov rax, [rax]
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
std.__brk.~?u64:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/platform/linux/memory.qnp:69:3  ->  Return
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'size#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, 0xc
  push rax
  mov rax, std.__syscall.~?u64~?u64
  call rax
  add rsp, 0x10
  pop rax
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
std.__extractFmtMod.~pc?u8~p?std.__PrintFmtMod:
  push rbp
  mov rbp, rsp
  sub rsp, 0x11
; ../.install/qinp/stdlib/stdio.qnp:350:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 1
  je __#463_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$p?std.__PrintFmtMod'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
__#463_LOGICAL_OR_SKIP:
  cmp al, 0
  je __#461_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:351:4  ->  Return
  mov rax, 0x0
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#461_IF_NEXT:
__#462_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:353:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rcx, rax
  mov rax, [rax]
  add rax, 1
  mov [rcx], rax
  sub rax, 1
  mov al, [rax]
  push rax
  mov al, 0x25
  mov cl, al
  pop rax
  cmp al, cl
  setne al
  cmp al, 0
  je __#464_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:354:4  ->  Return
  mov rax, 0x0
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#464_IF_NEXT:
__#465_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:356:16  ->  Assign
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'nChars#139$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:358:3  ->  While_Loop
__#467_WHILE_BEGIN:
__#469_LOOP_CONTINUE:
  mov al, 1
  cmp al, 0
  je __#466_WHILE_END
; ../.install/qinp/stdlib/stdio.qnp:359:13  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rcx, rax
  mov rax, [rax]
  add rax, 1
  mov [rcx], rax
  sub rax, 1
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'ch#140$c?u8'
  pop rcx
  mov cl, [rcx]
  mov [rax], cl
; ../.install/qinp/stdlib/stdio.qnp:360:4  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'ch#140$c?u8'
  mov al, [rax]
  push rax
  mov al, 0x62
  mov cl, al
  pop rax
  cmp al, cl
  sete al
  cmp al, 0
  je __#470_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:361:16  ->  Assign
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$p?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:362:5  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'nChars#139$?u64'
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
  jmp __#471_IF_END
__#470_IF_NEXT:
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'ch#140$c?u8'
  mov al, [rax]
  push rax
  mov al, 0x6f
  mov cl, al
  pop rax
  cmp al, cl
  sete al
  cmp al, 0
  je __#472_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:364:16  ->  Assign
  mov rax, 0x2
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$p?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:365:5  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'nChars#139$?u64'
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
  jmp __#471_IF_END
__#472_IF_NEXT:
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'ch#140$c?u8'
  mov al, [rax]
  push rax
  mov al, 0x64
  mov cl, al
  pop rax
  cmp al, cl
  sete al
  cmp al, 0
  je __#473_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:367:16  ->  Assign
  mov rax, 0x3
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$p?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:368:5  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'nChars#139$?u64'
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
  jmp __#471_IF_END
__#473_IF_NEXT:
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'ch#140$c?u8'
  mov al, [rax]
  push rax
  mov al, 0x78
  mov cl, al
  pop rax
  cmp al, cl
  sete al
  cmp al, 0
  je __#474_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:370:16  ->  Assign
  mov rax, 0x4
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$p?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:371:5  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'nChars#139$?u64'
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
  jmp __#471_IF_END
__#474_IF_NEXT:
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'ch#140$c?u8'
  mov al, [rax]
  push rax
  mov al, 0x63
  mov cl, al
  pop rax
  cmp al, cl
  sete al
  cmp al, 0
  je __#475_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:373:16  ->  Assign
  mov rax, 0x5
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$p?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:374:5  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'nChars#139$?u64'
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
  jmp __#471_IF_END
__#475_IF_NEXT:
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'ch#140$c?u8'
  mov al, [rax]
  push rax
  mov al, 0x73
  mov cl, al
  pop rax
  cmp al, cl
  sete al
  cmp al, 0
  je __#476_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:376:16  ->  Assign
  mov rax, 0x6
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$p?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:377:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  mov al, [rax]
  push rax
  mov al, 0x2a
  mov cl, al
  pop rax
  cmp al, cl
  sete al
  cmp al, 0
  je __#477_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:378:6  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'nChars#139$?u64'
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:379:6  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  push rax
  mov rax, [rax]
  add rax, 1
  mov rcx, rax
  pop rax
  mov [rax], rcx
  jmp __#478_IF_END
__#477_IF_NEXT:
; ../.install/qinp/stdlib/stdio.qnp:382:19  ->  Assign
  sub rsp, 8
  mov rax, 0xa
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffef ; local 'pNext#141$pc?u8'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.stoi.~pc?u8~ppc?u8~?i64
  call rax
  add rsp, 0x18
  pop rax
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$p?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 8
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:383:6  ->  If_Clause
  mov rax, rbp
  add rax, 0xffffffffffffffef ; local 'pNext#141$pc?u8'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, [rcx]
  sete al
  cmp al, 0
  je __#480_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:384:20  ->  Assign
  mov rax, 0x7fffffffffffffff
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$p?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 8
  pop rcx
  mov [rax], rcx
__#480_IF_NEXT:
__#481_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:385:13  ->  Assign_Sum
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffef ; local 'pNext#141$pc?u8'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rcx, rax
  pop rax
  mov rax, [rax]
  sub rax, [rcx]
  mov rcx, rax
  pop rax
  add rax, rcx
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'nChars#139$?u64'
  pop rcx
  push rax
  mov rax, [rax]
  add rax, rcx
  mov rcx, rax
  pop rax
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:386:13  ->  Assign
  mov rax, rbp
  add rax, 0xffffffffffffffef ; local 'pNext#141$pc?u8'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
__#479_IF_NEXT:
__#478_IF_END:
  jmp __#471_IF_END
__#476_IF_NEXT:
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'ch#140$c?u8'
  mov al, [rax]
  push rax
  mov al, 0x2d
  mov cl, al
  pop rax
  cmp al, cl
  sete al
  cmp al, 0
  je __#482_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:388:21  ->  Assign
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$p?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 16
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:389:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  mov al, [rax]
  push rax
  mov al, 0x2a
  mov cl, al
  pop rax
  cmp al, cl
  sete al
  cmp al, 0
  je __#483_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:390:6  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'nChars#139$?u64'
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:391:6  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  push rax
  mov rax, [rax]
  add rax, 1
  mov rcx, rax
  pop rax
  mov [rax], rcx
  jmp __#484_IF_END
__#483_IF_NEXT:
; ../.install/qinp/stdlib/stdio.qnp:394:23  ->  Assign
  sub rsp, 8
  mov rax, 0xa
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffef ; local 'pNext#142$pc?u8'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.stoi.~pc?u8~ppc?u8~?i64
  call rax
  add rsp, 0x18
  pop rax
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$p?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 24
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:395:13  ->  Assign_Sum
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffef ; local 'pNext#142$pc?u8'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rcx, rax
  pop rax
  mov rax, [rax]
  sub rax, [rcx]
  mov rcx, rax
  pop rax
  add rax, rcx
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'nChars#139$?u64'
  pop rcx
  push rax
  mov rax, [rax]
  add rax, rcx
  mov rcx, rax
  pop rax
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:396:13  ->  Assign
  mov rax, rbp
  add rax, 0xffffffffffffffef ; local 'pNext#142$pc?u8'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
__#485_IF_NEXT:
__#484_IF_END:
  jmp __#471_IF_END
__#482_IF_NEXT:
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'ch#140$c?u8'
  mov al, [rax]
  push rax
  mov al, 0x2b
  mov cl, al
  pop rax
  cmp al, cl
  sete al
  cmp al, 0
  je __#486_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:398:21  ->  Assign
  mov rax, 0x2
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$p?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 16
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:399:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  mov al, [rax]
  push rax
  mov al, 0x2a
  mov cl, al
  pop rax
  cmp al, cl
  sete al
  cmp al, 0
  je __#487_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:400:6  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'nChars#139$?u64'
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:401:6  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  push rax
  mov rax, [rax]
  add rax, 1
  mov rcx, rax
  pop rax
  mov [rax], rcx
  jmp __#488_IF_END
__#487_IF_NEXT:
; ../.install/qinp/stdlib/stdio.qnp:404:23  ->  Assign
  sub rsp, 8
  mov rax, 0xa
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffef ; local 'pNext#143$pc?u8'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.stoi.~pc?u8~ppc?u8~?i64
  call rax
  add rsp, 0x18
  pop rax
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$p?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 24
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:405:13  ->  Assign_Sum
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffef ; local 'pNext#143$pc?u8'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rcx, rax
  pop rax
  mov rax, [rax]
  sub rax, [rcx]
  mov rcx, rax
  pop rax
  add rax, rcx
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'nChars#139$?u64'
  pop rcx
  push rax
  mov rax, [rax]
  add rax, rcx
  mov rcx, rax
  pop rax
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:406:13  ->  Assign
  mov rax, rbp
  add rax, 0xffffffffffffffef ; local 'pNext#143$pc?u8'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
__#489_IF_NEXT:
__#488_IF_END:
  jmp __#471_IF_END
__#486_IF_NEXT:
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'ch#140$c?u8'
  mov al, [rax]
  push rax
  mov al, 0x66
  mov cl, al
  pop rax
  cmp al, cl
  sete al
  cmp al, 0
  je __#490_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:408:20  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rcx, rax
  mov rax, [rax]
  add rax, 1
  mov [rcx], rax
  sub rax, 1
  mov al, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$p?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 32
  pop rcx
  mov [rax], cl
; ../.install/qinp/stdlib/stdio.qnp:409:12  ->  Assign_Sum
  mov rax, 0x2
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'nChars#139$?u64'
  pop rcx
  push rax
  mov rax, [rax]
  add rax, rcx
  mov rcx, rax
  pop rax
  mov [rax], rcx
  jmp __#471_IF_END
__#490_IF_NEXT:
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'ch#140$c?u8'
  mov al, [rax]
  push rax
  mov al, 0x5c
  mov cl, al
  pop rax
  cmp al, cl
  sete al
  cmp al, 0
  je __#491_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:411:5  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'nChars#139$?u64'
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:412:5  ->  Break
  jmp __#468_LOOP_BREAK
  jmp __#471_IF_END
__#491_IF_NEXT:
; ../.install/qinp/stdlib/stdio.qnp:414:5  ->  Break
  jmp __#468_LOOP_BREAK
__#492_IF_NEXT:
__#471_IF_END:
  jmp __#467_WHILE_BEGIN
__#468_LOOP_BREAK:
__#466_WHILE_END:
; ../.install/qinp/stdlib/stdio.qnp:416:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'nChars#139$?u64'
  mov rax, [rax]
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
std.__fclose.~?i64:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:136:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'fd#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#493_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:137:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:138:4  ->  Return
  mov rsp, rbp
  pop rbp
  ret
__#493_IF_NEXT:
__#494_IF_END:
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:140:12  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'fd#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, 0x3
  push rax
  mov rax, std.__syscall.~?u64~?i64
  call rax
  add rsp, 0x10
  pop rax
; :0:0  ->  Return
  mov rsp, rbp
  pop rbp
  ret
std.__fopen.~pc?u8~pc?u8:
  push rbp
  mov rbp, rsp
  sub rsp, 0x10
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:83:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'filename#0$pc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 1
  je __#497_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x18 ; local 'modeStr#0$pc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
__#497_LOGICAL_OR_SKIP:
  cmp al, 0
  je __#495_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:84:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:85:4  ->  Return
  mov rax, 0
  mov [rbp + 0x20], rax
  mov rsp, rbp
  pop rbp
  ret
__#495_IF_NEXT:
__#496_IF_END:
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:88:19  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'mode#220$?i32'
  pop rcx
  mov [rax], ecx
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:89:3  ->  If_Clause
  sub rsp, 8
  mov rax, __#str_82
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'modeStr#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.strcmp.~pc?u8~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#498_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:90:10  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'flags#219$?i32'
  pop rcx
  mov [rax], ecx
  jmp __#499_IF_END
__#498_IF_NEXT:
  sub rsp, 8
  mov rax, __#str_79
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'modeStr#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.strcmp.~pc?u8~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#500_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:92:10  ->  Assign
  mov rax, 0x241
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'flags#219$?i32'
  pop rcx
  mov [rax], ecx
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:93:9  ->  Assign
  mov rax, 0x1a4
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'mode#220$?i32'
  pop rcx
  mov [rax], ecx
  jmp __#499_IF_END
__#500_IF_NEXT:
  sub rsp, 8
  mov rax, __#str_134
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'modeStr#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.strcmp.~pc?u8~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#501_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:95:10  ->  Assign
  mov rax, 0x242
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'flags#219$?i32'
  pop rcx
  mov [rax], ecx
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:96:9  ->  Assign
  mov rax, 0x1a4
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'mode#220$?i32'
  pop rcx
  mov [rax], ecx
  jmp __#499_IF_END
__#501_IF_NEXT:
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:98:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:99:4  ->  Return
  mov rax, 0
  mov [rbp + 0x20], rax
  mov rsp, rbp
  pop rbp
  ret
__#502_IF_NEXT:
__#499_IF_END:
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:101:36  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'mode#220$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'flags#219$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'filename#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, 0x2
  push rax
  mov rax, std.__syscall.~?u64~pc?u8~?i32~?i32
  call rax
  add rsp, 0x20
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'fd#225$c?i64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:103:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'fd#225$c?i64'
  mov rax, [rax]
  mov [rbp + 0x20], rax
  mov rsp, rbp
  pop rbp
  ret
std.__fread.~?i64~p?void~?u64:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:106:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'fd#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 1
  je __#505_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x18 ; local 'dest#0$p?void'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
__#505_LOGICAL_OR_SKIP:
  cmp al, 0
  je __#503_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:107:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:108:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
__#503_IF_NEXT:
__#504_IF_END:
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:110:3  ->  Return
  sub rsp, 8
  mov rax, rbp
  add rax, 0x20 ; local 'num#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'dest#0$p?void'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'fd#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, 0x0
  push rax
  mov rax, std.__syscall.~?u64~?i64~p?void~?u64
  call rax
  add rsp, 0x20
  pop rax
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
std.__freeBlock.~p?std.__MemBlockHeader:
  push rbp
  mov rbp, rsp
  sub rsp, 0x18
; ../.install/qinp/stdlib/platform/linux/memory.qnp:161:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#506_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/memory.qnp:162:4  ->  Return
  mov rsp, rbp
  pop rbp
  ret
__#506_IF_NEXT:
__#507_IF_END:
; ../.install/qinp/stdlib/platform/linux/memory.qnp:164:33  ->  Assign
  mov rax, 0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'prev#205$p?std.__MemBlockHeader'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:165:14  ->  Assign
  mov rax, __memBlocks#122$p?std.__MemBlockHeader
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'curr#206$p?std.__MemBlockHeader'
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:168:3  ->  While_Loop
__#509_WHILE_BEGIN:
__#511_LOOP_CONTINUE:
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'curr#206$p?std.__MemBlockHeader'
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  setne al
  cmp al, 0
  je __#512_LOGICAL_AND_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'curr#206$p?std.__MemBlockHeader'
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, [rcx]
  setg al
__#512_LOGICAL_AND_SKIP:
  cmp al, 0
  je __#508_WHILE_END
; ../.install/qinp/stdlib/platform/linux/memory.qnp:169:9  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'curr#206$p?std.__MemBlockHeader'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'prev#205$p?std.__MemBlockHeader'
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:170:9  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'curr#206$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 8
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'curr#206$p?std.__MemBlockHeader'
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
  jmp __#509_WHILE_BEGIN
__#510_LOOP_BREAK:
__#508_WHILE_END:
; ../.install/qinp/stdlib/platform/linux/memory.qnp:173:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'prev#205$p?std.__MemBlockHeader'
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#513_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/memory.qnp:174:16  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  push rax
  mov rax, __memBlocks#122$p?std.__MemBlockHeader
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
  jmp __#514_IF_END
__#513_IF_NEXT:
; ../.install/qinp/stdlib/platform/linux/memory.qnp:176:15  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'prev#205$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 8
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
__#515_IF_NEXT:
__#514_IF_END:
; ../.install/qinp/stdlib/platform/linux/memory.qnp:178:15  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'prev#205$p?std.__MemBlockHeader'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 0
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:179:15  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'curr#206$p?std.__MemBlockHeader'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 8
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:181:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'curr#206$p?std.__MemBlockHeader'
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  setne al
  cmp al, 0
  je __#516_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/memory.qnp:182:15  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'curr#206$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 0
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
__#516_IF_NEXT:
__#517_IF_END:
; ../.install/qinp/stdlib/platform/linux/memory.qnp:185:9  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  mov rax, [rax]
  push rax
  mov rax, std.__mergeBlocks.~p?std.__MemBlockHeader
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:188:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 8
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#520_LOGICAL_AND_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 16
  push rax
  mov rax, 0x1000
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  setge al
__#520_LOGICAL_AND_SKIP:
  cmp al, 0
  je __#521_LOGICAL_AND_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  mov rax, [rax]
  push rax
  mov rax, 0x18
  mov rcx, rax
  pop rax
  add rax, rcx
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 16
  mov rcx, rax
  pop rax
  add rax, [rcx]
  push rax
  sub rsp, 8
  mov rax, 0x0
  push rax
  mov rax, std.__brk.~?u64
  call rax
  add rsp, 0x8
  pop rax
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
__#521_LOGICAL_AND_SKIP:
  cmp al, 0
  je __#518_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/memory.qnp:189:24  ->  Assign
  sub rsp, 8
  mov rax, 0x1000
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 16
  mov rax, [rax]
  push rax
  mov rax, std.floor.~?u64~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'sizeDiff#207$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:190:20  ->  Assign_Difference
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'sizeDiff#207$?u64'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 16
  pop rcx
  push rax
  mov rax, [rax]
  sub rax, [rcx]
  mov rcx, rax
  pop rax
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:191:10  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'sizeDiff#207$?u64'
  mov rax, [rax]
  neg rax
  push rax
  mov rax, std.__sbrk.~?i64
  call rax
  add rsp, 0x8
  pop rax
__#518_IF_NEXT:
__#519_IF_END:
; :0:0  ->  Return
  mov rsp, rbp
  pop rbp
  ret
std.__fseek.~?i64~?u64~?std.File.Seek:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:120:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'fd#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#522_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:121:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:122:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
__#522_IF_NEXT:
__#523_IF_END:
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:126:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x20 ; local 'origin#0$?std.File.Seek'
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#524_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:126:41  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'uOrigin#234$?u64'
  pop rcx
  mov [rax], rcx
  jmp __#525_IF_END
__#524_IF_NEXT:
  mov rax, rbp
  add rax, 0x20 ; local 'origin#0$?std.File.Seek'
  push rax
  mov rax, 0x1
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#526_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:127:45  ->  Assign
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'uOrigin#234$?u64'
  pop rcx
  mov [rax], rcx
  jmp __#525_IF_END
__#526_IF_NEXT:
  mov rax, rbp
  add rax, 0x20 ; local 'origin#0$?std.File.Seek'
  push rax
  mov rax, 0x2
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#527_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:128:41  ->  Assign
  mov rax, 0x2
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'uOrigin#234$?u64'
  pop rcx
  mov [rax], rcx
  jmp __#525_IF_END
__#527_IF_NEXT:
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:130:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:131:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
__#528_IF_NEXT:
__#525_IF_END:
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:133:3  ->  Return
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'uOrigin#234$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'offset#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'fd#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, 0x8
  push rax
  mov rax, std.__syscall.~?u64~?i64~?u64~?u64
  call rax
  add rsp, 0x20
  pop rax
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
std.__fwrite.~?i64~pc?void~?u64:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:113:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'fd#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 1
  je __#531_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x18 ; local 'src#0$pc?void'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
__#531_LOGICAL_OR_SKIP:
  cmp al, 0
  je __#529_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:114:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:115:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
__#529_IF_NEXT:
__#530_IF_END:
; ../.install/qinp/stdlib/platform/linux/fileio.qnp:117:3  ->  Return
  sub rsp, 8
  mov rax, rbp
  add rax, 0x20 ; local 'num#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'src#0$pc?void'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'fd#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, 0x1
  push rax
  mov rax, std.__syscall.~?u64~?i64~pc?void~?u64
  call rax
  add rsp, 0x20
  pop rax
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
std.__getFreeBlock.~?u64:
  push rbp
  mov rbp, rsp
  sub rsp, 0x18
; ../.install/qinp/stdlib/platform/linux/memory.qnp:82:33  ->  Assign
  mov rax, 0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'prev#199$p?std.__MemBlockHeader'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:83:15  ->  Assign
  mov rax, __memBlocks#122$p?std.__MemBlockHeader
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'block#200$p?std.__MemBlockHeader'
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:84:3  ->  While_Loop
__#533_WHILE_BEGIN:
__#535_LOOP_CONTINUE:
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'block#200$p?std.__MemBlockHeader'
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  setne al
  cmp al, 0
  je __#532_WHILE_END
; ../.install/qinp/stdlib/platform/linux/memory.qnp:85:4  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'block#200$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 16
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'minSize#0$?u64'
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, [rcx]
  setge al
  cmp al, 0
  je __#536_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/memory.qnp:88:5  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'block#200$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 0
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  setne al
  cmp al, 0
  je __#538_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/memory.qnp:89:24  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'block#200$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 8
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'block#200$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  add rax, 8
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
__#538_IF_NEXT:
__#539_IF_END:
; ../.install/qinp/stdlib/platform/linux/memory.qnp:90:5  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'block#200$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 8
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  setne al
  cmp al, 0
  je __#540_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/memory.qnp:91:24  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'block#200$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'block#200$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 8
  mov rax, [rax]
  add rax, 0
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
__#540_IF_NEXT:
__#541_IF_END:
; ../.install/qinp/stdlib/platform/linux/memory.qnp:92:5  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'block#200$p?std.__MemBlockHeader'
  push rax
  mov rax, __memBlocks#122$p?std.__MemBlockHeader
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, [rcx]
  sete al
  cmp al, 0
  je __#542_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/memory.qnp:93:18  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'block#200$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 8
  push rax
  mov rax, __memBlocks#122$p?std.__MemBlockHeader
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
__#542_IF_NEXT:
__#543_IF_END:
; ../.install/qinp/stdlib/platform/linux/memory.qnp:94:17  ->  Assign
  mov rax, 0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'block#200$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 0
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:95:17  ->  Assign
  mov rax, 0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'block#200$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 8
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:96:5  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'block#200$p?std.__MemBlockHeader'
  mov rax, [rax]
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#536_IF_NEXT:
__#537_IF_END:
; ../.install/qinp/stdlib/platform/linux/memory.qnp:99:9  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'block#200$p?std.__MemBlockHeader'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'prev#199$p?std.__MemBlockHeader'
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:100:10  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'block#200$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 8
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'block#200$p?std.__MemBlockHeader'
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
  jmp __#533_WHILE_BEGIN
__#534_LOOP_BREAK:
__#532_WHILE_END:
; ../.install/qinp/stdlib/platform/linux/memory.qnp:103:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'prev#199$p?std.__MemBlockHeader'
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  setne al
  cmp al, 0
  je __#546_LOGICAL_AND_SKIP
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'prev#199$p?std.__MemBlockHeader'
  mov rax, [rax]
  push rax
  mov rax, 0x18
  mov rcx, rax
  pop rax
  add rax, rcx
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'prev#199$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 16
  mov rcx, rax
  pop rax
  add rax, [rcx]
  push rax
  sub rsp, 8
  mov rax, 0x0
  push rax
  mov rax, std.__brk.~?u64
  call rax
  add rsp, 0x8
  pop rax
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
__#546_LOGICAL_AND_SKIP:
  cmp al, 0
  je __#544_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/memory.qnp:106:23  ->  Assign
  sub rsp, 8
  mov rax, 0x1000
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'minSize#0$?u64'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'prev#199$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 16
  mov rcx, rax
  pop rax
  mov rax, [rax]
  sub rax, [rcx]
  push rax
  mov rax, std.ceil.~?u64~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'sizeDiff#201$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:107:4  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'sizeDiff#201$?u64'
  mov rax, [rax]
  push rax
  mov rax, std.__sbrk.~?i64
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#547_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/memory.qnp:108:5  ->  Return
  mov rax, 0
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#547_IF_NEXT:
__#548_IF_END:
; ../.install/qinp/stdlib/platform/linux/memory.qnp:109:19  ->  Assign_Sum
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'sizeDiff#201$?u64'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'prev#199$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 16
  pop rcx
  push rax
  mov rax, [rax]
  add rax, [rcx]
  mov rcx, rax
  pop rax
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:112:4  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'prev#199$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 0
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  setne al
  cmp al, 0
  je __#549_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/memory.qnp:113:22  ->  Assign
  mov rax, 0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'prev#199$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  add rax, 8
  pop rcx
  mov [rax], rcx
__#549_IF_NEXT:
__#550_IF_END:
; ../.install/qinp/stdlib/platform/linux/memory.qnp:114:15  ->  Assign
  mov rax, 0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'prev#199$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 0
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:115:4  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'prev#199$p?std.__MemBlockHeader'
  push rax
  mov rax, __memBlocks#122$p?std.__MemBlockHeader
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, [rcx]
  sete al
  cmp al, 0
  je __#551_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/memory.qnp:116:17  ->  Assign
  mov rax, 0
  push rax
  mov rax, __memBlocks#122$p?std.__MemBlockHeader
  pop rcx
  mov [rax], rcx
__#551_IF_NEXT:
__#552_IF_END:
; ../.install/qinp/stdlib/platform/linux/memory.qnp:117:4  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'prev#199$p?std.__MemBlockHeader'
  mov rax, [rax]
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#544_IF_NEXT:
__#545_IF_END:
; ../.install/qinp/stdlib/platform/linux/memory.qnp:119:3  ->  Return
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'minSize#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, std.__allocateBlock.~?u64
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
std.__getPrintLen.~?bool~pc?std.__PrintFmtMod:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/stdio.qnp:471:3  ->  Return
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?bool'
  mov al, [rax]
  cmp al, 0
  je __#554_COND_FALSE
  sub rsp, 8
  mov rax, __#str_127
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  jmp __#553_COND_END
__#554_COND_FALSE:
  sub rsp, 8
  mov rax, __#str_128
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
__#553_COND_END:
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
std.__getPrintLen.~?i32~pc?std.__PrintFmtMod:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/stdio.qnp:455:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x1
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#555_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:456:4  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, 0x2
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?i32'
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, std.itos.~?i64~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#555_IF_NEXT:
__#556_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:457:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x2
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#557_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:458:4  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, 0x8
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?i32'
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, std.itos.~?i64~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#557_IF_NEXT:
__#558_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:459:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x3
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#559_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:460:4  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, 0xa
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?i32'
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, std.itos.~?i64~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#559_IF_NEXT:
__#560_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:461:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x4
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#561_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:462:4  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, 0x10
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?i32'
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, std.itos.~?i64~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#561_IF_NEXT:
__#562_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:463:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x5
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#563_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:464:4  ->  Return
  mov rax, 0x1
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#563_IF_NEXT:
__#564_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:465:3  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, 0xa
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?i32'
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, std.itos.~?i64~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
std.__getPrintLen.~?i64~pc?std.__PrintFmtMod:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/stdio.qnp:455:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x1
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#565_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:456:4  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, 0x2
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, std.itos.~?i64~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#565_IF_NEXT:
__#566_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:457:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x2
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#567_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:458:4  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, 0x8
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, std.itos.~?i64~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#567_IF_NEXT:
__#568_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:459:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x3
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#569_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:460:4  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, 0xa
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, std.itos.~?i64~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#569_IF_NEXT:
__#570_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:461:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x4
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#571_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:462:4  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, 0x10
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, std.itos.~?i64~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#571_IF_NEXT:
__#572_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:463:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x5
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#573_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:464:4  ->  Return
  mov rax, 0x1
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#573_IF_NEXT:
__#574_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:465:3  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, 0xa
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, std.itos.~?i64~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
std.__getPrintLen.~?u64~pc?std.__PrintFmtMod:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/stdio.qnp:455:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x1
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#575_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:456:4  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, 0x2
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, std.itos.~?i64~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#575_IF_NEXT:
__#576_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:457:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x2
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#577_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:458:4  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, 0x8
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, std.itos.~?i64~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#577_IF_NEXT:
__#578_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:459:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x3
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#579_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:460:4  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, 0xa
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, std.itos.~?i64~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#579_IF_NEXT:
__#580_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:461:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x4
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#581_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:462:4  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, 0x10
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, std.itos.~?i64~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#581_IF_NEXT:
__#582_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:463:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x5
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#583_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:464:4  ->  Return
  mov rax, 0x1
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#583_IF_NEXT:
__#584_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:465:3  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, 0xa
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, std.itos.~?i64~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
std.__getPrintLen.~pc?u8~pc?std.__PrintFmtMod:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/stdio.qnp:468:3  ->  Return
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 8
  mov rax, [rax]
  push rax
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, std.min.~?u64~?u64
  call rax
  add rsp, 0x10
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
std.__initFmtMod.~p?std.__PrintFmtMod:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/stdio.qnp:448:14  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'pMod#0$p?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:449:16  ->  Assign
  mov rax, 0x7fffffffffffffff
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'pMod#0$p?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 8
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:450:19  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'pMod#0$p?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 16
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:451:20  ->  Assign
  mov rax, 0xffffffffffffffff
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'pMod#0$p?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 24
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:452:18  ->  Assign
  mov al, 0x20
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'pMod#0$p?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 32
  pop rcx
  mov [rax], cl
; :0:0  ->  Return
  mov rsp, rbp
  pop rbp
  ret
std.__mergeBlocks.~p?std.__MemBlockHeader:
  push rbp
  mov rbp, rsp
  sub rsp, 0x10
; ../.install/qinp/stdlib/platform/linux/memory.qnp:194:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#585_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/memory.qnp:195:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/platform/linux/memory.qnp:196:4  ->  Return
  mov rax, 0
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#585_IF_NEXT:
__#586_IF_END:
; ../.install/qinp/stdlib/platform/linux/memory.qnp:198:19  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'prev#208$p?std.__MemBlockHeader'
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:199:19  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 8
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'next#209$p?std.__MemBlockHeader'
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:202:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'prev#208$p?std.__MemBlockHeader'
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  setne al
  cmp al, 0
  je __#589_LOGICAL_AND_SKIP
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'prev#208$p?std.__MemBlockHeader'
  mov rax, [rax]
  push rax
  mov rax, 0x18
  mov rcx, rax
  pop rax
  add rax, rcx
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'prev#208$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 16
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  add rax, rcx
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  mov rax, [rax]
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
__#589_LOGICAL_AND_SKIP:
  cmp al, 0
  je __#587_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/memory.qnp:203:19  ->  Assign_Sum
  mov rax, 0x18
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 16
  mov rcx, rax
  pop rax
  add rax, [rcx]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'prev#208$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 16
  pop rcx
  push rax
  mov rax, [rax]
  add rax, rcx
  mov rcx, rax
  pop rax
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:204:15  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'next#209$p?std.__MemBlockHeader'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'prev#208$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 8
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:205:4  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'next#209$p?std.__MemBlockHeader'
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  setne al
  cmp al, 0
  je __#590_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/memory.qnp:206:16  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'prev#208$p?std.__MemBlockHeader'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'next#209$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 0
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
__#590_IF_NEXT:
__#591_IF_END:
; ../.install/qinp/stdlib/platform/linux/memory.qnp:207:10  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'prev#208$p?std.__MemBlockHeader'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
__#587_IF_NEXT:
__#588_IF_END:
; ../.install/qinp/stdlib/platform/linux/memory.qnp:210:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'next#209$p?std.__MemBlockHeader'
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  setne al
  cmp al, 0
  je __#594_LOGICAL_AND_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  mov rax, [rax]
  push rax
  mov rax, 0x18
  mov rcx, rax
  pop rax
  add rax, rcx
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 16
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  add rax, rcx
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'next#209$p?std.__MemBlockHeader'
  mov rax, [rax]
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
__#594_LOGICAL_AND_SKIP:
  cmp al, 0
  je __#592_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/memory.qnp:211:20  ->  Assign_Sum
  mov rax, 0x18
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'next#209$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 16
  mov rcx, rax
  pop rax
  add rax, [rcx]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 16
  pop rcx
  push rax
  mov rax, [rax]
  add rax, rcx
  mov rcx, rax
  pop rax
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:212:16  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'next#209$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 8
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 8
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:213:4  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'next#209$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 8
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  setne al
  cmp al, 0
  je __#595_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/memory.qnp:214:22  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'next#209$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 8
  mov rax, [rax]
  add rax, 0
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
__#595_IF_NEXT:
__#596_IF_END:
__#592_IF_NEXT:
__#593_IF_END:
; ../.install/qinp/stdlib/platform/linux/memory.qnp:216:3  ->  Return
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  mov rax, [rax]
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
std.__new.~p?std.File~pc?u8~pc?u8:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/memory.qnp:198:22  ->  Assign
  sub rsp, 8
  mov rax, 0x8
  push rax
  mov rax, std.malloc.~?u64
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'obj#327$p?std.File'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/memory.qnp:200:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'obj#327$p?std.File'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#597_IF_NEXT
; ../.install/qinp/stdlib/memory.qnp:201:4  ->  Return
  mov rax, 0
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
__#597_IF_NEXT:
__#598_IF_END:
; ../.install/qinp/stdlib/memory.qnp:203:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x20 ; local '_VA_N_#75#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local '_VA_N_#74#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'obj#327$p?std.File'
  mov rax, [rax]
  push rax
  mov rax, std.File.__new__.~p?std.File~pc?u8~pc?u8
  call rax
  add rsp, 0x18
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#599_IF_NEXT
; ../.install/qinp/stdlib/memory.qnp:204:8  ->  FunctionCall
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'obj#327$p?std.File'
  mov rax, [rax]
  push rax
  mov rax, std.free.~p?void
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/memory.qnp:205:4  ->  Return
  mov rax, 0
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
__#599_IF_NEXT:
__#600_IF_END:
; ../.install/qinp/stdlib/memory.qnp:207:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'obj#327$p?std.File'
  mov rax, [rax]
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
std.__new.~p?std.String:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/memory.qnp:183:22  ->  Assign
  sub rsp, 8
  mov rax, 0x18
  push rax
  mov rax, std.malloc.~?u64
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'obj#302$p?std.String'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/memory.qnp:185:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'obj#302$p?std.String'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#601_IF_NEXT
; ../.install/qinp/stdlib/memory.qnp:186:4  ->  Return
  mov rax, 0
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#601_IF_NEXT:
__#602_IF_END:
; ../.install/qinp/stdlib/memory.qnp:188:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'obj#302$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.__new__.~p?std.String
  call rax
  add rsp, 0x8
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#603_IF_NEXT
; ../.install/qinp/stdlib/memory.qnp:189:8  ->  FunctionCall
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'obj#302$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.free.~p?void
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/memory.qnp:190:4  ->  Return
  mov rax, 0
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#603_IF_NEXT:
__#604_IF_END:
; ../.install/qinp/stdlib/memory.qnp:192:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'obj#302$p?std.String'
  mov rax, [rax]
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
std.__new.~p?std.String~p?u8:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/memory.qnp:198:22  ->  Assign
  sub rsp, 8
  mov rax, 0x18
  push rax
  mov rax, std.malloc.~?u64
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'obj#328$p?std.String'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/memory.qnp:200:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'obj#328$p?std.String'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#605_IF_NEXT
; ../.install/qinp/stdlib/memory.qnp:201:4  ->  Return
  mov rax, 0
  mov [rbp + 0x20], rax
  mov rsp, rbp
  pop rbp
  ret
__#605_IF_NEXT:
__#606_IF_END:
; ../.install/qinp/stdlib/memory.qnp:203:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local '_VA_N_#76#0$p?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'obj#328$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.__new__.~p?std.String~p?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#607_IF_NEXT
; ../.install/qinp/stdlib/memory.qnp:204:8  ->  FunctionCall
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'obj#328$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.free.~p?void
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/memory.qnp:205:4  ->  Return
  mov rax, 0
  mov [rbp + 0x20], rax
  mov rsp, rbp
  pop rbp
  ret
__#607_IF_NEXT:
__#608_IF_END:
; ../.install/qinp/stdlib/memory.qnp:207:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'obj#328$p?std.String'
  mov rax, [rax]
  mov [rbp + 0x20], rax
  mov rsp, rbp
  pop rbp
  ret
std.__new.~p?std.String~p?u8~?u64:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/memory.qnp:198:22  ->  Assign
  sub rsp, 8
  mov rax, 0x18
  push rax
  mov rax, std.malloc.~?u64
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'obj#161$p?std.String'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/memory.qnp:200:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'obj#161$p?std.String'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#609_IF_NEXT
; ../.install/qinp/stdlib/memory.qnp:201:4  ->  Return
  mov rax, 0
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
__#609_IF_NEXT:
__#610_IF_END:
; ../.install/qinp/stdlib/memory.qnp:203:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x20 ; local '_VA_N_#33#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local '_VA_N_#32#0$p?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'obj#161$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.__new__.~p?std.String~pc?u8~?u64
  call rax
  add rsp, 0x18
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#611_IF_NEXT
; ../.install/qinp/stdlib/memory.qnp:204:8  ->  FunctionCall
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'obj#161$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.free.~p?void
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/memory.qnp:205:4  ->  Return
  mov rax, 0
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
__#611_IF_NEXT:
__#612_IF_END:
; ../.install/qinp/stdlib/memory.qnp:207:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'obj#161$p?std.String'
  mov rax, [rax]
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
std.__new.~p?std.String~pc?u8:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/memory.qnp:198:22  ->  Assign
  sub rsp, 8
  mov rax, 0x18
  push rax
  mov rax, std.malloc.~?u64
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'obj#331$p?std.String'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/memory.qnp:200:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'obj#331$p?std.String'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#613_IF_NEXT
; ../.install/qinp/stdlib/memory.qnp:201:4  ->  Return
  mov rax, 0
  mov [rbp + 0x20], rax
  mov rsp, rbp
  pop rbp
  ret
__#613_IF_NEXT:
__#614_IF_END:
; ../.install/qinp/stdlib/memory.qnp:203:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local '_VA_N_#77#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'obj#331$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.__new__.~p?std.String~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#615_IF_NEXT
; ../.install/qinp/stdlib/memory.qnp:204:8  ->  FunctionCall
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'obj#331$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.free.~p?void
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/memory.qnp:205:4  ->  Return
  mov rax, 0
  mov [rbp + 0x20], rax
  mov rsp, rbp
  pop rbp
  ret
__#615_IF_NEXT:
__#616_IF_END:
; ../.install/qinp/stdlib/memory.qnp:207:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'obj#331$p?std.String'
  mov rax, [rax]
  mov [rbp + 0x20], rax
  mov rsp, rbp
  pop rbp
  ret
std.__printMaxLen.~pc?u8~?u64:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/stdio.qnp:441:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#617_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:442:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:443:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#617_IF_NEXT:
__#618_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:445:3  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'len#0$?u64'
  mov rax, [rax]
  push rax
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, std.min.~?u64~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.printn.~pc?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
std.__printMod.~?bool~pc?std.__PrintFmtMod:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/stdio.qnp:438:3  ->  Return
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?bool'
  mov al, [rax]
  push rax
  mov rax, std.print.~?bool
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
std.__printMod.~?i32~pc?std.__PrintFmtMod:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/stdio.qnp:419:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x1
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#619_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:420:4  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, 0x2
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?i32'
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, std.itos.~?i64~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, std.print.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#619_IF_NEXT:
__#620_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:421:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x2
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#621_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:422:4  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, 0x8
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?i32'
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, std.itos.~?i64~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, std.print.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#621_IF_NEXT:
__#622_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:423:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x3
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#623_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:424:4  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, 0xa
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?i32'
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, std.itos.~?i64~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, std.print.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#623_IF_NEXT:
__#624_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:425:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x4
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#625_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:426:4  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, 0x10
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?i32'
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, std.itos.~?i64~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, std.print.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#625_IF_NEXT:
__#626_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:427:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x5
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#627_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:428:4  ->  Return
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, std.print.~?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#627_IF_NEXT:
__#628_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:429:3  ->  Return
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, std.print.~?i32
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
std.__printMod.~?i64~pc?std.__PrintFmtMod:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/stdio.qnp:419:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x1
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#629_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:420:4  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, 0x2
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, std.itos.~?i64~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, std.print.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#629_IF_NEXT:
__#630_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:421:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x2
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#631_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:422:4  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, 0x8
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, std.itos.~?i64~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, std.print.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#631_IF_NEXT:
__#632_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:423:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x3
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#633_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:424:4  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, 0xa
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, std.itos.~?i64~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, std.print.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#633_IF_NEXT:
__#634_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:425:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x4
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#635_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:426:4  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, 0x10
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, std.itos.~?i64~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, std.print.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#635_IF_NEXT:
__#636_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:427:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x5
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#637_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:428:4  ->  Return
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, std.print.~?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#637_IF_NEXT:
__#638_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:429:3  ->  Return
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, std.print.~?i64
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
std.__printMod.~?u64~pc?std.__PrintFmtMod:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/stdio.qnp:419:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x1
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#639_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:420:4  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, 0x2
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, std.itos.~?i64~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, std.print.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#639_IF_NEXT:
__#640_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:421:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x2
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#641_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:422:4  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, 0x8
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, std.itos.~?i64~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, std.print.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#641_IF_NEXT:
__#642_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:423:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x3
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#643_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:424:4  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, 0xa
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, std.itos.~?i64~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, std.print.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#643_IF_NEXT:
__#644_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:425:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x4
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#645_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:426:4  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, 0x10
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, std.itos.~?i64~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, std.print.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#645_IF_NEXT:
__#646_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:427:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x5
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#647_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:428:4  ->  Return
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, std.print.~?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#647_IF_NEXT:
__#648_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:429:3  ->  Return
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, std.print.~?u64
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
std.__printMod.~pc?u8~pc?std.__PrintFmtMod:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/stdio.qnp:432:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 0
  mov rax, [rax]
  push rax
  mov rax, 0x6
  mov rcx, rax
  pop rax
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#649_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:433:4  ->  Return
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'pMod#0$pc?std.__PrintFmtMod'
  mov rax, [rax]
  add rax, 8
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.__printMaxLen.~pc?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#649_IF_NEXT:
__#650_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:434:3  ->  Return
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.print.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
std.__printf.~ppc?u8~?bool:
  push rbp
  mov rbp, rsp
  sub rsp, 0x51
; ../.install/qinp/stdlib/stdio.qnp:310:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'pFormat#0$ppc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#651_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:311:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:312:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#651_IF_NEXT:
__#652_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:314:18  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'pFormat#0$ppc?u8'
  mov rax, [rax]
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#349$cpc?u8'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:315:25  ->  Assign
  sub rsp, 8
  mov al, 0x25
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#349$cpc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.strchr.~pc?u8~?u8
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'dropPos#350$cpc?u8'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:320:15  ->  FunctionCall
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#353$?std.__PrintFmtMod'
  push rax
  mov rax, std.__initFmtMod.~p?std.__PrintFmtMod
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:322:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'dropPos#350$cpc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  je __#653_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:323:18  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'dropPos#350$cpc?u8'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#349$cpc?u8'
  mov rcx, rax
  pop rax
  mov rax, [rax]
  sub rax, [rcx]
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nCharsToPrint#351$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:324:13  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#353$?std.__PrintFmtMod'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#349$cpc?u8'
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nCharsToPrint#351$?u64'
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, rcx
  push rax
  mov rax, std.__extractFmtMod.~pc?u8~p?std.__PrintFmtMod
  call rax
  add rsp, 0x10
  pop rax
  movsx rax, eax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe0 ; local 'modChars#352$?u64'
  pop rcx
  mov [rax], rcx
  jmp __#654_IF_END
__#653_IF_NEXT:
; ../.install/qinp/stdlib/stdio.qnp:326:18  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#349$cpc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nCharsToPrint#351$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:327:13  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe0 ; local 'modChars#352$?u64'
  pop rcx
  mov [rax], rcx
__#655_IF_NEXT:
__#654_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:329:12  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#349$cpc?u8'
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nCharsToPrint#351$?u64'
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, rcx
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe0 ; local 'modChars#352$?u64'
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  add rax, rcx
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'pFormat#0$ppc?u8'
  mov rax, [rax]
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:333:23  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb3 ; local 'nPadding#356$?i32'
  pop rcx
  mov [rax], ecx
; ../.install/qinp/stdlib/stdio.qnp:335:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nCharsToPrint#351$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#349$cpc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.printn.~pc?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffbb ; local 'n1#354$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#656_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:335:48  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#656_IF_NEXT:
__#657_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:337:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#353$?std.__PrintFmtMod'
  add rax, 16
  push rax
  mov rax, 0x1
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#658_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:338:4  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#353$?std.__PrintFmtMod'
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$?bool'
  mov al, [rax]
  push rax
  mov rax, std.__printMod.~?bool~pc?std.__PrintFmtMod
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb7 ; local 'n2#355$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#660_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:338:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#660_IF_NEXT:
__#661_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:339:4  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#353$?std.__PrintFmtMod'
  add rax, 24
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb7 ; local 'n2#355$?i32'
  mov eax, [rax]
  movsx rax, eax
  mov rcx, rax
  pop rax
  mov rax, [rax]
  sub rax, rcx
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#353$?std.__PrintFmtMod'
  add rax, 32
  mov al, [rax]
  push rax
  mov rax, std.printRep.~?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb3 ; local 'nPadding#356$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#662_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:339:69  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#662_IF_NEXT:
__#663_IF_END:
  jmp __#659_IF_END
__#658_IF_NEXT:
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#353$?std.__PrintFmtMod'
  add rax, 16
  push rax
  mov rax, 0x2
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#664_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:341:26  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#353$?std.__PrintFmtMod'
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$?bool'
  mov al, [rax]
  push rax
  mov rax, std.__getPrintLen.~?bool~pc?std.__PrintFmtMod
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffaf ; local 'pl#357$?i32'
  pop rcx
  mov [rax], ecx
; ../.install/qinp/stdlib/stdio.qnp:342:4  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#353$?std.__PrintFmtMod'
  add rax, 24
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffaf ; local 'pl#357$?i32'
  mov eax, [rax]
  movsx rax, eax
  mov rcx, rax
  pop rax
  mov rax, [rax]
  sub rax, rcx
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#353$?std.__PrintFmtMod'
  add rax, 32
  mov al, [rax]
  push rax
  mov rax, std.printRep.~?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb3 ; local 'nPadding#356$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#665_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:342:69  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#665_IF_NEXT:
__#666_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:343:4  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#353$?std.__PrintFmtMod'
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$?bool'
  mov al, [rax]
  push rax
  mov rax, std.__printMod.~?bool~pc?std.__PrintFmtMod
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb7 ; local 'n2#355$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#667_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:343:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#667_IF_NEXT:
__#668_IF_END:
  jmp __#659_IF_END
__#664_IF_NEXT:
; ../.install/qinp/stdlib/stdio.qnp:345:4  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#353$?std.__PrintFmtMod'
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$?bool'
  mov al, [rax]
  push rax
  mov rax, std.__printMod.~?bool~pc?std.__PrintFmtMod
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb7 ; local 'n2#355$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#670_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:345:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#670_IF_NEXT:
__#671_IF_END:
__#669_IF_NEXT:
__#659_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:347:3  ->  Return
  mov rax, rbp
  add rax, 0xffffffffffffffbb ; local 'n1#354$?i32'
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb7 ; local 'n2#355$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  add eax, [rcx]
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb3 ; local 'nPadding#356$?i32'
  mov rcx, rax
  pop rax
  add eax, [rcx]
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
std.__printf.~ppc?u8~?i32:
  push rbp
  mov rbp, rsp
  sub rsp, 0x51
; ../.install/qinp/stdlib/stdio.qnp:310:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'pFormat#0$ppc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#672_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:311:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:312:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#672_IF_NEXT:
__#673_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:314:18  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'pFormat#0$ppc?u8'
  mov rax, [rax]
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#270$cpc?u8'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:315:25  ->  Assign
  sub rsp, 8
  mov al, 0x25
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#270$cpc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.strchr.~pc?u8~?u8
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'dropPos#271$cpc?u8'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:320:15  ->  FunctionCall
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#274$?std.__PrintFmtMod'
  push rax
  mov rax, std.__initFmtMod.~p?std.__PrintFmtMod
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:322:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'dropPos#271$cpc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  je __#674_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:323:18  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'dropPos#271$cpc?u8'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#270$cpc?u8'
  mov rcx, rax
  pop rax
  mov rax, [rax]
  sub rax, [rcx]
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nCharsToPrint#272$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:324:13  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#274$?std.__PrintFmtMod'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#270$cpc?u8'
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nCharsToPrint#272$?u64'
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, rcx
  push rax
  mov rax, std.__extractFmtMod.~pc?u8~p?std.__PrintFmtMod
  call rax
  add rsp, 0x10
  pop rax
  movsx rax, eax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe0 ; local 'modChars#273$?u64'
  pop rcx
  mov [rax], rcx
  jmp __#675_IF_END
__#674_IF_NEXT:
; ../.install/qinp/stdlib/stdio.qnp:326:18  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#270$cpc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nCharsToPrint#272$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:327:13  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe0 ; local 'modChars#273$?u64'
  pop rcx
  mov [rax], rcx
__#676_IF_NEXT:
__#675_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:329:12  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#270$cpc?u8'
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nCharsToPrint#272$?u64'
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, rcx
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe0 ; local 'modChars#273$?u64'
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  add rax, rcx
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'pFormat#0$ppc?u8'
  mov rax, [rax]
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:333:23  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb3 ; local 'nPadding#277$?i32'
  pop rcx
  mov [rax], ecx
; ../.install/qinp/stdlib/stdio.qnp:335:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nCharsToPrint#272$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#270$cpc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.printn.~pc?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffbb ; local 'n1#275$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#677_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:335:48  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#677_IF_NEXT:
__#678_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:337:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#274$?std.__PrintFmtMod'
  add rax, 16
  push rax
  mov rax, 0x1
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#679_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:338:4  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#274$?std.__PrintFmtMod'
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, std.__printMod.~?i32~pc?std.__PrintFmtMod
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb7 ; local 'n2#276$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#681_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:338:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#681_IF_NEXT:
__#682_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:339:4  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#274$?std.__PrintFmtMod'
  add rax, 24
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb7 ; local 'n2#276$?i32'
  mov eax, [rax]
  movsx rax, eax
  mov rcx, rax
  pop rax
  mov rax, [rax]
  sub rax, rcx
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#274$?std.__PrintFmtMod'
  add rax, 32
  mov al, [rax]
  push rax
  mov rax, std.printRep.~?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb3 ; local 'nPadding#277$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#683_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:339:69  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#683_IF_NEXT:
__#684_IF_END:
  jmp __#680_IF_END
__#679_IF_NEXT:
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#274$?std.__PrintFmtMod'
  add rax, 16
  push rax
  mov rax, 0x2
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#685_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:341:26  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#274$?std.__PrintFmtMod'
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, std.__getPrintLen.~?i32~pc?std.__PrintFmtMod
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffaf ; local 'pl#278$?i32'
  pop rcx
  mov [rax], ecx
; ../.install/qinp/stdlib/stdio.qnp:342:4  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#274$?std.__PrintFmtMod'
  add rax, 24
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffaf ; local 'pl#278$?i32'
  mov eax, [rax]
  movsx rax, eax
  mov rcx, rax
  pop rax
  mov rax, [rax]
  sub rax, rcx
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#274$?std.__PrintFmtMod'
  add rax, 32
  mov al, [rax]
  push rax
  mov rax, std.printRep.~?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb3 ; local 'nPadding#277$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#686_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:342:69  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#686_IF_NEXT:
__#687_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:343:4  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#274$?std.__PrintFmtMod'
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, std.__printMod.~?i32~pc?std.__PrintFmtMod
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb7 ; local 'n2#276$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#688_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:343:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#688_IF_NEXT:
__#689_IF_END:
  jmp __#680_IF_END
__#685_IF_NEXT:
; ../.install/qinp/stdlib/stdio.qnp:345:4  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#274$?std.__PrintFmtMod'
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, std.__printMod.~?i32~pc?std.__PrintFmtMod
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb7 ; local 'n2#276$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#691_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:345:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#691_IF_NEXT:
__#692_IF_END:
__#690_IF_NEXT:
__#680_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:347:3  ->  Return
  mov rax, rbp
  add rax, 0xffffffffffffffbb ; local 'n1#275$?i32'
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb7 ; local 'n2#276$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  add eax, [rcx]
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb3 ; local 'nPadding#277$?i32'
  mov rcx, rax
  pop rax
  add eax, [rcx]
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
std.__printf.~ppc?u8~?i64:
  push rbp
  mov rbp, rsp
  sub rsp, 0x51
; ../.install/qinp/stdlib/stdio.qnp:310:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'pFormat#0$ppc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#693_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:311:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:312:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#693_IF_NEXT:
__#694_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:314:18  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'pFormat#0$ppc?u8'
  mov rax, [rax]
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#336$cpc?u8'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:315:25  ->  Assign
  sub rsp, 8
  mov al, 0x25
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#336$cpc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.strchr.~pc?u8~?u8
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'dropPos#337$cpc?u8'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:320:15  ->  FunctionCall
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#340$?std.__PrintFmtMod'
  push rax
  mov rax, std.__initFmtMod.~p?std.__PrintFmtMod
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:322:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'dropPos#337$cpc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  je __#695_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:323:18  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'dropPos#337$cpc?u8'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#336$cpc?u8'
  mov rcx, rax
  pop rax
  mov rax, [rax]
  sub rax, [rcx]
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nCharsToPrint#338$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:324:13  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#340$?std.__PrintFmtMod'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#336$cpc?u8'
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nCharsToPrint#338$?u64'
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, rcx
  push rax
  mov rax, std.__extractFmtMod.~pc?u8~p?std.__PrintFmtMod
  call rax
  add rsp, 0x10
  pop rax
  movsx rax, eax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe0 ; local 'modChars#339$?u64'
  pop rcx
  mov [rax], rcx
  jmp __#696_IF_END
__#695_IF_NEXT:
; ../.install/qinp/stdlib/stdio.qnp:326:18  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#336$cpc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nCharsToPrint#338$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:327:13  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe0 ; local 'modChars#339$?u64'
  pop rcx
  mov [rax], rcx
__#697_IF_NEXT:
__#696_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:329:12  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#336$cpc?u8'
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nCharsToPrint#338$?u64'
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, rcx
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe0 ; local 'modChars#339$?u64'
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  add rax, rcx
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'pFormat#0$ppc?u8'
  mov rax, [rax]
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:333:23  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb3 ; local 'nPadding#343$?i32'
  pop rcx
  mov [rax], ecx
; ../.install/qinp/stdlib/stdio.qnp:335:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nCharsToPrint#338$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#336$cpc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.printn.~pc?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffbb ; local 'n1#341$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#698_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:335:48  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#698_IF_NEXT:
__#699_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:337:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#340$?std.__PrintFmtMod'
  add rax, 16
  push rax
  mov rax, 0x1
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#700_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:338:4  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#340$?std.__PrintFmtMod'
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, std.__printMod.~?i64~pc?std.__PrintFmtMod
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb7 ; local 'n2#342$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#702_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:338:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#702_IF_NEXT:
__#703_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:339:4  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#340$?std.__PrintFmtMod'
  add rax, 24
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb7 ; local 'n2#342$?i32'
  mov eax, [rax]
  movsx rax, eax
  mov rcx, rax
  pop rax
  mov rax, [rax]
  sub rax, rcx
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#340$?std.__PrintFmtMod'
  add rax, 32
  mov al, [rax]
  push rax
  mov rax, std.printRep.~?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb3 ; local 'nPadding#343$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#704_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:339:69  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#704_IF_NEXT:
__#705_IF_END:
  jmp __#701_IF_END
__#700_IF_NEXT:
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#340$?std.__PrintFmtMod'
  add rax, 16
  push rax
  mov rax, 0x2
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#706_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:341:26  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#340$?std.__PrintFmtMod'
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, std.__getPrintLen.~?i64~pc?std.__PrintFmtMod
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffaf ; local 'pl#344$?i32'
  pop rcx
  mov [rax], ecx
; ../.install/qinp/stdlib/stdio.qnp:342:4  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#340$?std.__PrintFmtMod'
  add rax, 24
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffaf ; local 'pl#344$?i32'
  mov eax, [rax]
  movsx rax, eax
  mov rcx, rax
  pop rax
  mov rax, [rax]
  sub rax, rcx
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#340$?std.__PrintFmtMod'
  add rax, 32
  mov al, [rax]
  push rax
  mov rax, std.printRep.~?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb3 ; local 'nPadding#343$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#707_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:342:69  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#707_IF_NEXT:
__#708_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:343:4  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#340$?std.__PrintFmtMod'
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, std.__printMod.~?i64~pc?std.__PrintFmtMod
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb7 ; local 'n2#342$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#709_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:343:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#709_IF_NEXT:
__#710_IF_END:
  jmp __#701_IF_END
__#706_IF_NEXT:
; ../.install/qinp/stdlib/stdio.qnp:345:4  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#340$?std.__PrintFmtMod'
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, std.__printMod.~?i64~pc?std.__PrintFmtMod
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb7 ; local 'n2#342$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#712_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:345:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#712_IF_NEXT:
__#713_IF_END:
__#711_IF_NEXT:
__#701_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:347:3  ->  Return
  mov rax, rbp
  add rax, 0xffffffffffffffbb ; local 'n1#341$?i32'
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb7 ; local 'n2#342$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  add eax, [rcx]
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb3 ; local 'nPadding#343$?i32'
  mov rcx, rax
  pop rax
  add eax, [rcx]
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
std.__printf.~ppc?u8~?u64:
  push rbp
  mov rbp, rsp
  sub rsp, 0x51
; ../.install/qinp/stdlib/stdio.qnp:310:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'pFormat#0$ppc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#714_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:311:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:312:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#714_IF_NEXT:
__#715_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:314:18  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'pFormat#0$ppc?u8'
  mov rax, [rax]
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#291$cpc?u8'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:315:25  ->  Assign
  sub rsp, 8
  mov al, 0x25
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#291$cpc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.strchr.~pc?u8~?u8
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'dropPos#292$cpc?u8'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:320:15  ->  FunctionCall
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#295$?std.__PrintFmtMod'
  push rax
  mov rax, std.__initFmtMod.~p?std.__PrintFmtMod
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:322:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'dropPos#292$cpc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  je __#716_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:323:18  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'dropPos#292$cpc?u8'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#291$cpc?u8'
  mov rcx, rax
  pop rax
  mov rax, [rax]
  sub rax, [rcx]
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nCharsToPrint#293$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:324:13  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#295$?std.__PrintFmtMod'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#291$cpc?u8'
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nCharsToPrint#293$?u64'
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, rcx
  push rax
  mov rax, std.__extractFmtMod.~pc?u8~p?std.__PrintFmtMod
  call rax
  add rsp, 0x10
  pop rax
  movsx rax, eax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe0 ; local 'modChars#294$?u64'
  pop rcx
  mov [rax], rcx
  jmp __#717_IF_END
__#716_IF_NEXT:
; ../.install/qinp/stdlib/stdio.qnp:326:18  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#291$cpc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nCharsToPrint#293$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:327:13  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe0 ; local 'modChars#294$?u64'
  pop rcx
  mov [rax], rcx
__#718_IF_NEXT:
__#717_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:329:12  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#291$cpc?u8'
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nCharsToPrint#293$?u64'
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, rcx
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe0 ; local 'modChars#294$?u64'
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  add rax, rcx
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'pFormat#0$ppc?u8'
  mov rax, [rax]
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:333:23  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb3 ; local 'nPadding#298$?i32'
  pop rcx
  mov [rax], ecx
; ../.install/qinp/stdlib/stdio.qnp:335:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nCharsToPrint#293$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#291$cpc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.printn.~pc?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffbb ; local 'n1#296$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#719_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:335:48  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#719_IF_NEXT:
__#720_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:337:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#295$?std.__PrintFmtMod'
  add rax, 16
  push rax
  mov rax, 0x1
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#721_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:338:4  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#295$?std.__PrintFmtMod'
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, std.__printMod.~?u64~pc?std.__PrintFmtMod
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb7 ; local 'n2#297$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#723_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:338:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#723_IF_NEXT:
__#724_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:339:4  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#295$?std.__PrintFmtMod'
  add rax, 24
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb7 ; local 'n2#297$?i32'
  mov eax, [rax]
  movsx rax, eax
  mov rcx, rax
  pop rax
  mov rax, [rax]
  sub rax, rcx
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#295$?std.__PrintFmtMod'
  add rax, 32
  mov al, [rax]
  push rax
  mov rax, std.printRep.~?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb3 ; local 'nPadding#298$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#725_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:339:69  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#725_IF_NEXT:
__#726_IF_END:
  jmp __#722_IF_END
__#721_IF_NEXT:
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#295$?std.__PrintFmtMod'
  add rax, 16
  push rax
  mov rax, 0x2
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#727_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:341:26  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#295$?std.__PrintFmtMod'
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, std.__getPrintLen.~?u64~pc?std.__PrintFmtMod
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffaf ; local 'pl#299$?i32'
  pop rcx
  mov [rax], ecx
; ../.install/qinp/stdlib/stdio.qnp:342:4  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#295$?std.__PrintFmtMod'
  add rax, 24
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffaf ; local 'pl#299$?i32'
  mov eax, [rax]
  movsx rax, eax
  mov rcx, rax
  pop rax
  mov rax, [rax]
  sub rax, rcx
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#295$?std.__PrintFmtMod'
  add rax, 32
  mov al, [rax]
  push rax
  mov rax, std.printRep.~?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb3 ; local 'nPadding#298$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#728_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:342:69  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#728_IF_NEXT:
__#729_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:343:4  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#295$?std.__PrintFmtMod'
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, std.__printMod.~?u64~pc?std.__PrintFmtMod
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb7 ; local 'n2#297$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#730_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:343:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#730_IF_NEXT:
__#731_IF_END:
  jmp __#722_IF_END
__#727_IF_NEXT:
; ../.install/qinp/stdlib/stdio.qnp:345:4  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#295$?std.__PrintFmtMod'
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, std.__printMod.~?u64~pc?std.__PrintFmtMod
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb7 ; local 'n2#297$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#733_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:345:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#733_IF_NEXT:
__#734_IF_END:
__#732_IF_NEXT:
__#722_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:347:3  ->  Return
  mov rax, rbp
  add rax, 0xffffffffffffffbb ; local 'n1#296$?i32'
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb7 ; local 'n2#297$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  add eax, [rcx]
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb3 ; local 'nPadding#298$?i32'
  mov rcx, rax
  pop rax
  add eax, [rcx]
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
std.__printf.~ppc?u8~pc?u8:
  push rbp
  mov rbp, rsp
  sub rsp, 0x51
; ../.install/qinp/stdlib/stdio.qnp:310:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'pFormat#0$ppc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#735_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:311:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:312:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#735_IF_NEXT:
__#736_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:314:18  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'pFormat#0$ppc?u8'
  mov rax, [rax]
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#257$cpc?u8'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:315:25  ->  Assign
  sub rsp, 8
  mov al, 0x25
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#257$cpc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.strchr.~pc?u8~?u8
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'dropPos#258$cpc?u8'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:320:15  ->  FunctionCall
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#261$?std.__PrintFmtMod'
  push rax
  mov rax, std.__initFmtMod.~p?std.__PrintFmtMod
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:322:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'dropPos#258$cpc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  je __#737_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:323:18  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'dropPos#258$cpc?u8'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#257$cpc?u8'
  mov rcx, rax
  pop rax
  mov rax, [rax]
  sub rax, [rcx]
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nCharsToPrint#259$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:324:13  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#261$?std.__PrintFmtMod'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#257$cpc?u8'
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nCharsToPrint#259$?u64'
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, rcx
  push rax
  mov rax, std.__extractFmtMod.~pc?u8~p?std.__PrintFmtMod
  call rax
  add rsp, 0x10
  pop rax
  movsx rax, eax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe0 ; local 'modChars#260$?u64'
  pop rcx
  mov [rax], rcx
  jmp __#738_IF_END
__#737_IF_NEXT:
; ../.install/qinp/stdlib/stdio.qnp:326:18  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#257$cpc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nCharsToPrint#259$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:327:13  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe0 ; local 'modChars#260$?u64'
  pop rcx
  mov [rax], rcx
__#739_IF_NEXT:
__#738_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:329:12  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#257$cpc?u8'
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nCharsToPrint#259$?u64'
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, rcx
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe0 ; local 'modChars#260$?u64'
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  add rax, rcx
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'pFormat#0$ppc?u8'
  mov rax, [rax]
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:333:23  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb3 ; local 'nPadding#264$?i32'
  pop rcx
  mov [rax], ecx
; ../.install/qinp/stdlib/stdio.qnp:335:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nCharsToPrint#259$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'format#257$cpc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.printn.~pc?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffbb ; local 'n1#262$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#740_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:335:48  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#740_IF_NEXT:
__#741_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:337:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#261$?std.__PrintFmtMod'
  add rax, 16
  push rax
  mov rax, 0x1
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#742_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:338:4  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#261$?std.__PrintFmtMod'
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.__printMod.~pc?u8~pc?std.__PrintFmtMod
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb7 ; local 'n2#263$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#744_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:338:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#744_IF_NEXT:
__#745_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:339:4  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#261$?std.__PrintFmtMod'
  add rax, 24
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb7 ; local 'n2#263$?i32'
  mov eax, [rax]
  movsx rax, eax
  mov rcx, rax
  pop rax
  mov rax, [rax]
  sub rax, rcx
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#261$?std.__PrintFmtMod'
  add rax, 32
  mov al, [rax]
  push rax
  mov rax, std.printRep.~?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb3 ; local 'nPadding#264$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#746_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:339:69  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#746_IF_NEXT:
__#747_IF_END:
  jmp __#743_IF_END
__#742_IF_NEXT:
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#261$?std.__PrintFmtMod'
  add rax, 16
  push rax
  mov rax, 0x2
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#748_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:341:26  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#261$?std.__PrintFmtMod'
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.__getPrintLen.~pc?u8~pc?std.__PrintFmtMod
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffaf ; local 'pl#267$?i32'
  pop rcx
  mov [rax], ecx
; ../.install/qinp/stdlib/stdio.qnp:342:4  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#261$?std.__PrintFmtMod'
  add rax, 24
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffaf ; local 'pl#267$?i32'
  mov eax, [rax]
  movsx rax, eax
  mov rcx, rax
  pop rax
  mov rax, [rax]
  sub rax, rcx
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#261$?std.__PrintFmtMod'
  add rax, 32
  mov al, [rax]
  push rax
  mov rax, std.printRep.~?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb3 ; local 'nPadding#264$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#749_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:342:69  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#749_IF_NEXT:
__#750_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:343:4  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#261$?std.__PrintFmtMod'
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.__printMod.~pc?u8~pc?std.__PrintFmtMod
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb7 ; local 'n2#263$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#751_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:343:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#751_IF_NEXT:
__#752_IF_END:
  jmp __#743_IF_END
__#748_IF_NEXT:
; ../.install/qinp/stdlib/stdio.qnp:345:4  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffbf ; local 'mod#261$?std.__PrintFmtMod'
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.__printMod.~pc?u8~pc?std.__PrintFmtMod
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb7 ; local 'n2#263$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#754_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:345:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#754_IF_NEXT:
__#755_IF_END:
__#753_IF_NEXT:
__#743_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:347:3  ->  Return
  mov rax, rbp
  add rax, 0xffffffffffffffbb ; local 'n1#262$?i32'
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb7 ; local 'n2#263$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  add eax, [rcx]
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb3 ; local 'nPadding#264$?i32'
  mov rcx, rax
  pop rax
  add eax, [rcx]
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
std.__printn_unbuf.~pc?u8~?u64:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/platform/linux/stdio.qnp:20:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#756_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/stdio.qnp:21:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/platform/linux/stdio.qnp:22:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#756_IF_NEXT:
__#757_IF_END:
; ../.install/qinp/stdlib/platform/linux/stdio.qnp:24:3  ->  Return
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'num#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, 0x1
  push rax
  mov rax, std.__fwrite.~?i64~pc?void~?u64
  call rax
  add rsp, 0x18
  pop rax
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
std.__sbrk.~?i64:
  push rbp
  mov rbp, rsp
  sub rsp, 0x10
; ../.install/qinp/stdlib/platform/linux/memory.qnp:72:29  ->  Assign
  sub rsp, 8
  mov rax, 0x0
  push rax
  mov rax, std.__brk.~?u64
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'oldSize#197$c?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:73:32  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'oldSize#197$c?u64'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'increment#0$?i64'
  mov rax, [rax]
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, rcx
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'newSize#198$c?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:74:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'newSize#198$c?u64'
  mov rax, [rax]
  push rax
  mov rax, std.__brk.~?u64
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'oldSize#197$c?u64'
  mov rcx, rax
  pop rax
  cmp rax, [rcx]
  sete al
  cmp al, 0
  je __#758_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/memory.qnp:75:13  ->  FunctionCall
  mov rax, 0x3
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/platform/linux/memory.qnp:76:4  ->  Return
  mov rax, 0
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#758_IF_NEXT:
__#759_IF_END:
; ../.install/qinp/stdlib/platform/linux/memory.qnp:77:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'oldSize#197$c?u64'
  mov rax, [rax]
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
std.__syscall.~?u64~?i32:
  push rbp
  mov rbp, rsp
  sub rsp, 0x10
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:351:24  ->  Assign
  mov rax, rbp
  add rax, 0x18 ; local 'rdi#0$?i32'
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'nrdi#242$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:354:3  ->  Assembly
  mov rax, [rbp + 16]
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:354:3  ->  Assembly
  mov rdi, [rbp - 8]
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:354:3  ->  Assembly
  syscall
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:354:3  ->  Assembly
  mov [rbp - 16], rax
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:359:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'result#243$?u64'
  mov rax, [rax]
  mov [rbp + 0x20], rax
  mov rsp, rbp
  pop rbp
  ret
std.__syscall.~?u64~?i64:
  push rbp
  mov rbp, rsp
  sub rsp, 0x10
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:351:24  ->  Assign
  mov rax, rbp
  add rax, 0x18 ; local 'rdi#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'nrdi#239$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:354:3  ->  Assembly
  mov rax, [rbp + 16]
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:354:3  ->  Assembly
  mov rdi, [rbp - 8]
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:354:3  ->  Assembly
  syscall
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:354:3  ->  Assembly
  mov [rbp - 16], rax
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:359:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'result#240$?u64'
  mov rax, [rax]
  mov [rbp + 0x20], rax
  mov rsp, rbp
  pop rbp
  ret
std.__syscall.~?u64~?i64~?u64~?u64:
  push rbp
  mov rbp, rsp
  sub rsp, 0x20
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:375:24  ->  Assign
  mov rax, rbp
  add rax, 0x18 ; local 'rdi#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'nrdi#235$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:376:24  ->  Assign
  mov rax, rbp
  add rax, 0x20 ; local 'rsi#0$?u64'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'nrsi#236$?u64'
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:377:24  ->  Assign
  mov rax, rbp
  add rax, 0x28 ; local 'rdx#0$?u64'
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nrdx#237$?u64'
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:380:3  ->  Assembly
  mov rax, [rbp + 16]
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:380:3  ->  Assembly
  mov rdi, [rbp - 8]
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:380:3  ->  Assembly
  mov rsi, [rbp - 16]
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:380:3  ->  Assembly
  mov rdx, [rbp - 24]
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:380:3  ->  Assembly
  syscall
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:380:3  ->  Assembly
  mov [rbp - 32], rax
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:387:3  ->  Return
  mov rax, rbp
  add rax, 0xffffffffffffffe0 ; local 'result#238$?u64'
  mov rax, [rax]
  mov [rbp + 0x30], rax
  mov rsp, rbp
  pop rbp
  ret
std.__syscall.~?u64~?i64~p?void~?u64:
  push rbp
  mov rbp, rsp
  sub rsp, 0x20
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:375:24  ->  Assign
  mov rax, rbp
  add rax, 0x18 ; local 'rdi#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'nrdi#226$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:376:24  ->  Assign
  mov rax, rbp
  add rax, 0x20 ; local 'rsi#0$p?void'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'nrsi#227$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:377:24  ->  Assign
  mov rax, rbp
  add rax, 0x28 ; local 'rdx#0$?u64'
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nrdx#228$?u64'
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:380:3  ->  Assembly
  mov rax, [rbp + 16]
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:380:3  ->  Assembly
  mov rdi, [rbp - 8]
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:380:3  ->  Assembly
  mov rsi, [rbp - 16]
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:380:3  ->  Assembly
  mov rdx, [rbp - 24]
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:380:3  ->  Assembly
  syscall
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:380:3  ->  Assembly
  mov [rbp - 32], rax
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:387:3  ->  Return
  mov rax, rbp
  add rax, 0xffffffffffffffe0 ; local 'result#229$?u64'
  mov rax, [rax]
  mov [rbp + 0x30], rax
  mov rsp, rbp
  pop rbp
  ret
std.__syscall.~?u64~?i64~pc?void~?u64:
  push rbp
  mov rbp, rsp
  sub rsp, 0x20
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:375:24  ->  Assign
  mov rax, rbp
  add rax, 0x18 ; local 'rdi#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'nrdi#230$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:376:24  ->  Assign
  mov rax, rbp
  add rax, 0x20 ; local 'rsi#0$pc?void'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'nrsi#231$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:377:24  ->  Assign
  mov rax, rbp
  add rax, 0x28 ; local 'rdx#0$?u64'
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nrdx#232$?u64'
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:380:3  ->  Assembly
  mov rax, [rbp + 16]
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:380:3  ->  Assembly
  mov rdi, [rbp - 8]
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:380:3  ->  Assembly
  mov rsi, [rbp - 16]
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:380:3  ->  Assembly
  mov rdx, [rbp - 24]
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:380:3  ->  Assembly
  syscall
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:380:3  ->  Assembly
  mov [rbp - 32], rax
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:387:3  ->  Return
  mov rax, rbp
  add rax, 0xffffffffffffffe0 ; local 'result#233$?u64'
  mov rax, [rax]
  mov [rbp + 0x30], rax
  mov rsp, rbp
  pop rbp
  ret
std.__syscall.~?u64~?u64:
  push rbp
  mov rbp, rsp
  sub rsp, 0x10
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:351:24  ->  Assign
  mov rax, rbp
  add rax, 0x18 ; local 'rdi#0$?u64'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'nrdi#195$?u64'
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:354:3  ->  Assembly
  mov rax, [rbp + 16]
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:354:3  ->  Assembly
  mov rdi, [rbp - 8]
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:354:3  ->  Assembly
  syscall
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:354:3  ->  Assembly
  mov [rbp - 16], rax
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:359:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'result#196$?u64'
  mov rax, [rax]
  mov [rbp + 0x20], rax
  mov rsp, rbp
  pop rbp
  ret
std.__syscall.~?u64~pc?u8~?i32~?i32:
  push rbp
  mov rbp, rsp
  sub rsp, 0x20
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:375:24  ->  Assign
  mov rax, rbp
  add rax, 0x18 ; local 'rdi#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'nrdi#221$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:376:24  ->  Assign
  mov rax, rbp
  add rax, 0x20 ; local 'rsi#0$?i32'
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'nrsi#222$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:377:24  ->  Assign
  mov rax, rbp
  add rax, 0x28 ; local 'rdx#0$?i32'
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 'nrdx#223$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:380:3  ->  Assembly
  mov rax, [rbp + 16]
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:380:3  ->  Assembly
  mov rdi, [rbp - 8]
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:380:3  ->  Assembly
  mov rsi, [rbp - 16]
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:380:3  ->  Assembly
  mov rdx, [rbp - 24]
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:380:3  ->  Assembly
  syscall
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:380:3  ->  Assembly
  mov [rbp - 32], rax
; ../.install/qinp/stdlib/platform/linux/__syscall.qnp:387:3  ->  Return
  mov rax, rbp
  add rax, 0xffffffffffffffe0 ; local 'result#224$?u64'
  mov rax, [rax]
  mov [rbp + 0x30], rax
  mov rsp, rbp
  pop rbp
  ret
std.__truncateBlock.~p?std.__MemBlockHeader~?u64:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/platform/linux/memory.qnp:137:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#760_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/memory.qnp:138:4  ->  Return
  mov rsp, rbp
  pop rbp
  ret
__#760_IF_NEXT:
__#761_IF_END:
; ../.install/qinp/stdlib/platform/linux/memory.qnp:141:15  ->  Assign
  sub rsp, 8
  mov rax, 0x8
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'newBodySize#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, std.ceil.~?u64~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'newBodySize#0$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:144:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 16
  push rax
  mov rax, 0x18
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'newBodySize#0$?u64'
  mov rcx, rax
  pop rax
  add rax, [rcx]
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#762_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/memory.qnp:145:4  ->  Return
  mov rsp, rbp
  pop rbp
  ret
__#762_IF_NEXT:
__#763_IF_END:
; ../.install/qinp/stdlib/platform/linux/memory.qnp:148:97  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  mov rax, [rax]
  push rax
  mov rax, 0x18
  mov rcx, rax
  pop rax
  add rax, rcx
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'newBodySize#0$?u64'
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  add rax, rcx
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'newBlock#204$p?std.__MemBlockHeader'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:151:18  ->  Assign
  mov rax, 0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'newBlock#204$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 0
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:152:18  ->  Assign
  mov rax, 0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'newBlock#204$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 8
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:153:22  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 16
  push rax
  mov rax, 0x18
  mov rcx, rax
  pop rax
  mov rax, [rax]
  sub rax, rcx
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'newBodySize#0$?u64'
  mov rcx, rax
  pop rax
  sub rax, [rcx]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'newBlock#204$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 16
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:155:19  ->  Assign
  mov rax, rbp
  add rax, 0x18 ; local 'newBodySize#0$?u64'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'block#0$p?std.__MemBlockHeader'
  mov rax, [rax]
  add rax, 16
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:158:14  ->  FunctionCall
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'newBlock#204$p?std.__MemBlockHeader'
  mov rax, [rax]
  push rax
  mov rax, std.__freeBlock.~p?std.__MemBlockHeader
  call rax
  add rsp, 0x8
; :0:0  ->  Return
  mov rsp, rbp
  pop rbp
  ret
std.ceil.~?u64~?u64:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/math.qnp:87:3  ->  Return
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?u64'
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'multiple#0$?u64'
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, [rcx]
  push rax
  mov rax, 0x1
  mov rcx, rax
  pop rax
  sub rax, rcx
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'multiple#0$?u64'
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  xor rdx, rdx
  div rcx
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'multiple#0$?u64'
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov [rbp + 0x20], rax
  mov rsp, rbp
  pop rbp
  ret
std.delete.~p?std.File:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/memory.qnp:213:18  ->  FunctionCall
  mov rax, rbp
  add rax, 0x10 ; local 'obj#0$p?std.File'
  mov rax, [rax]
  push rax
  mov rax, std.File.__delete__.~p?std.File
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/memory.qnp:214:7  ->  FunctionCall
  mov rax, rbp
  add rax, 0x10 ; local 'obj#0$p?std.File'
  mov rax, [rax]
  push rax
  mov rax, std.free.~p?void
  call rax
  add rsp, 0x8
; :0:0  ->  Return
  mov rsp, rbp
  pop rbp
  ret
std.delete.~p?std.String:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/memory.qnp:213:18  ->  FunctionCall
  mov rax, rbp
  add rax, 0x10 ; local 'obj#0$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.__delete__.~p?std.String
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/memory.qnp:214:7  ->  FunctionCall
  mov rax, rbp
  add rax, 0x10 ; local 'obj#0$p?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.free.~p?void
  call rax
  add rsp, 0x8
; :0:0  ->  Return
  mov rsp, rbp
  pop rbp
  ret
std.error.set.~?std.error.ID:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/error.qnp:44:18  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'err#0$?std.error.ID'
  push rax
  mov rax, __lastErrorID#1$?std.error.ID
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; :0:0  ->  Return
  mov rsp, rbp
  pop rbp
  ret
std.exit.~?i32:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/platform/linux/system.qnp:14:12  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'status#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, 0x3c
  push rax
  mov rax, std.__syscall.~?u64~?i32
  call rax
  add rsp, 0x10
  pop rax
; :0:0  ->  Return
  mov rsp, rbp
  pop rbp
  ret
std.floor.~?u64~?u64:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/math.qnp:84:3  ->  Return
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?u64'
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'multiple#0$?u64'
  mov rcx, rax
  pop rax
  mov rax, [rax]
  mov rcx, [rcx]
  xor rdx, rdx
  div rcx
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'multiple#0$?u64'
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov [rbp + 0x20], rax
  mov rsp, rbp
  pop rbp
  ret
std.free.~p?void:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/platform/linux/memory.qnp:238:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'ptr#0$p?void'
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#764_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/memory.qnp:239:4  ->  Return
  mov rsp, rbp
  pop rbp
  ret
__#764_IF_NEXT:
__#765_IF_END:
; ../.install/qinp/stdlib/platform/linux/memory.qnp:242:38  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'ptr#0$p?void'
  mov rax, [rax]
  push rax
  mov rax, 0x18
  mov rcx, rax
  pop rax
  sub rax, rcx
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'block#211$p?std.__MemBlockHeader'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:245:14  ->  FunctionCall
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'block#211$p?std.__MemBlockHeader'
  mov rax, [rax]
  push rax
  mov rax, std.__freeBlock.~p?std.__MemBlockHeader
  call rax
  add rsp, 0x8
; :0:0  ->  Return
  mov rsp, rbp
  pop rbp
  ret
std.getargs.~ppcp?u8:
  push rbp
  mov rbp, rsp
  sub rsp, 0x10
; ../.install/qinp/stdlib/system.qnp:59:3  ->  Assembly
  mov rcx, [__#argc]
; ../.install/qinp/stdlib/system.qnp:59:3  ->  Assembly
  mov [rbp - 8], rcx
; ../.install/qinp/stdlib/system.qnp:63:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'pargv#0$ppcp?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#766_IF_NEXT
; ../.install/qinp/stdlib/system.qnp:63:14  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'argc#183$?u64'
  mov rax, [rax]
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#766_IF_NEXT:
__#767_IF_END:
; ../.install/qinp/stdlib/system.qnp:66:3  ->  Assembly
  mov rcx, [__#argv]
; ../.install/qinp/stdlib/system.qnp:66:3  ->  Assembly
  mov [rbp - 16], rcx
; ../.install/qinp/stdlib/system.qnp:70:10  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'argv#184$pcp?u8'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'pargv#0$ppcp?u8'
  mov rax, [rax]
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
; ../.install/qinp/stdlib/system.qnp:72:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'argc#183$?u64'
  mov rax, [rax]
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
std.isalnum.~?u8:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/string.qnp:598:3  ->  Return
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'c#0$?u8'
  mov al, [rax]
  push rax
  mov rax, std.isnum.~?u8
  call rax
  add rsp, 0x8
  pop rax
  cmp al, 1
  je __#768_LOGICAL_OR_SKIP
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'c#0$?u8'
  mov al, [rax]
  push rax
  mov rax, std.isalpha.~?u8
  call rax
  add rsp, 0x8
  pop rax
__#768_LOGICAL_OR_SKIP:
  mov [rbp + 0x18], al
  mov rsp, rbp
  pop rbp
  ret
std.isalpha.~?u8:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/string.qnp:595:3  ->  Return
  mov al, 0x61
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'c#0$?u8'
  mov rcx, rax
  pop rax
  cmp al, [rcx]
  setle al
  cmp al, 0
  je __#769_LOGICAL_AND_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'c#0$?u8'
  push rax
  mov al, 0x7a
  mov cl, al
  pop rax
  mov al, [rax]
  cmp al, cl
  setle al
__#769_LOGICAL_AND_SKIP:
  cmp al, 1
  je __#770_LOGICAL_OR_SKIP
  mov al, 0x41
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'c#0$?u8'
  mov rcx, rax
  pop rax
  cmp al, [rcx]
  setle al
  cmp al, 0
  je __#771_LOGICAL_AND_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'c#0$?u8'
  push rax
  mov al, 0x5a
  mov cl, al
  pop rax
  mov al, [rax]
  cmp al, cl
  setle al
__#771_LOGICAL_AND_SKIP:
__#770_LOGICAL_OR_SKIP:
  mov [rbp + 0x18], al
  mov rsp, rbp
  pop rbp
  ret
std.isnum.~?u8:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/string.qnp:592:3  ->  Return
  mov al, 0x30
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'c#0$?u8'
  mov rcx, rax
  pop rax
  cmp al, [rcx]
  setle al
  cmp al, 0
  je __#772_LOGICAL_AND_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'c#0$?u8'
  push rax
  mov al, 0x39
  mov cl, al
  pop rax
  mov al, [rax]
  cmp al, cl
  setle al
__#772_LOGICAL_AND_SKIP:
  mov [rbp + 0x18], al
  mov rsp, rbp
  pop rbp
  ret
std.isspace.~?u8:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/string.qnp:601:3  ->  Return
  mov rax, rbp
  add rax, 0x10 ; local 'c#0$?u8'
  push rax
  mov al, 0x20
  mov cl, al
  pop rax
  mov al, [rax]
  cmp al, cl
  sete al
  cmp al, 1
  je __#773_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'c#0$?u8'
  push rax
  mov al, 0x9
  mov cl, al
  pop rax
  mov al, [rax]
  cmp al, cl
  sete al
__#773_LOGICAL_OR_SKIP:
  mov [rbp + 0x18], al
  mov rsp, rbp
  pop rbp
  ret
std.itos.~?i64:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/string.qnp:527:3  ->  Return
  sub rsp, 8
  mov rax, 0xa
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'num#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, std.itos.~?i64~?i64
  call rax
  add rsp, 0x10
  pop rax
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
std.itos.~?i64~?i64:
  push rbp
  mov rbp, rsp
  sub rsp, 0x20
; ../.install/qinp/stdlib/string.qnp:531:3  ->  Return
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'base#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, buffer#172$a32?u8
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'num#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, std.itos.~?i64~p?u8~?i64
  call rax
  add rsp, 0x18
  pop rax
  mov [rbp + 0x20], rax
  mov rsp, rbp
  pop rbp
  ret
std.itos.~?i64~p?u8~?i64:
  push rbp
  mov rbp, rsp
  sub rsp, 0x11
; ../.install/qinp/stdlib/string.qnp:534:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'str#0$p?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 1
  je __#776_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x20 ; local 'base#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, 0x2
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
__#776_LOGICAL_OR_SKIP:
  cmp al, 1
  je __#777_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x20 ; local 'base#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, 0x24
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setg al
__#777_LOGICAL_OR_SKIP:
  cmp al, 0
  je __#774_IF_NEXT
; ../.install/qinp/stdlib/string.qnp:535:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/string.qnp:536:4  ->  Return
  mov rax, 0
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
__#774_IF_NEXT:
__#775_IF_END:
; ../.install/qinp/stdlib/string.qnp:538:35  ->  If_Clause
  mov rax, __#stck_3#174$?bool
  mov al, [rax]
  cmp al, 0
  je __#778_IF_NEXT
; ../.install/qinp/stdlib/string.qnp:538:35  ->  Assign
  mov al, 0
  push rax
  mov rax, __#stck_3#174$?bool
  pop rcx
  mov [rax], cl
; ../.install/qinp/stdlib/string.qnp:538:35  ->  Assign
  mov rax, __#str_130
  push rax
  mov rax, __baseCharsLower#173$cpc?u8
  pop rcx
  mov [rax], rcx
__#778_IF_NEXT:
__#779_IF_END:
; ../.install/qinp/stdlib/string.qnp:539:17  ->  Assign
  mov rax, rbp
  add rax, 0x18 ; local 'str#0$p?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'begin#175$cp?u8'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/string.qnp:540:24  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'num#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  setne al
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffef ; local 'negative#176$c?bool'
  pop rcx
  mov [rax], cl
; ../.install/qinp/stdlib/string.qnp:542:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xffffffffffffffef ; local 'negative#176$c?bool'
  mov al, [rax]
  cmp al, 0
  setne al
  cmp al, 0
  je __#780_IF_NEXT
; ../.install/qinp/stdlib/string.qnp:542:20  ->  Assign_Product
  mov rax, 0xffffffffffffffff
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'num#0$?i64'
  pop rcx
  push rax
  mov rax, [rax]
  imul rcx
  mov rcx, rax
  pop rax
  mov [rax], rcx
__#780_IF_NEXT:
__#781_IF_END:
; ../.install/qinp/stdlib/string.qnp:544:3  ->  Do_While_Loop
__#782_DO_WHILE_BEGIN:
; ../.install/qinp/stdlib/string.qnp:545:11  ->  Assign
  mov rax, __baseCharsLower#173$cpc?u8
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'num#0$?i64'
  push rax
  mov rax, rbp
  add rax, 0x20 ; local 'base#0$?i64'
  mov rcx, rax
  pop rax
  mov rax, [rax]
  mov rcx, [rcx]
  xor rdx, rdx
  idiv rcx
  mov rax, rdx
  pop rcx
  add rax, rcx
  mov al, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'str#0$p?u8'
  mov rcx, rax
  mov rax, [rax]
  add rax, 1
  mov [rcx], rax
  sub rax, 1
  pop rcx
  mov [rax], cl
; ../.install/qinp/stdlib/string.qnp:546:8  ->  Assign_Quotient
  mov rax, rbp
  add rax, 0x20 ; local 'base#0$?i64'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'num#0$?i64'
  pop rcx
  mov rcx, [rcx]
  push rax
  mov rax, [rax]
  xor rdx, rdx
  idiv rcx
  mov rcx, rax
  pop rax
  mov [rax], rcx
__#784_LOOP_CONTINUE:
  mov rax, rbp
  add rax, 0x10 ; local 'num#0$?i64'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  jne __#782_DO_WHILE_BEGIN
__#783_LOOP_BREAK:
; ../.install/qinp/stdlib/string.qnp:549:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xffffffffffffffef ; local 'negative#176$c?bool'
  mov al, [rax]
  cmp al, 0
  setne al
  cmp al, 0
  je __#785_IF_NEXT
; ../.install/qinp/stdlib/string.qnp:549:23  ->  Assign
  mov al, 0x2d
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'str#0$p?u8'
  mov rcx, rax
  mov rax, [rax]
  add rax, 1
  mov [rcx], rax
  sub rax, 1
  pop rcx
  mov [rax], cl
__#785_IF_NEXT:
__#786_IF_END:
; ../.install/qinp/stdlib/string.qnp:551:8  ->  Assign
  mov rax, 0
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'str#0$p?u8'
  mov rax, [rax]
  pop rcx
  mov [rax], cl
; ../.install/qinp/stdlib/string.qnp:553:3  ->  Return
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'str#0$p?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'begin#175$cp?u8'
  mov rax, [rax]
  push rax
  mov rax, std.strrev.~p?u8~p?u8
  call rax
  add rsp, 0x10
  pop rax
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
std.malloc.~?u64:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/platform/linux/memory.qnp:219:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'size#0$?u64'
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#787_IF_NEXT
; ../.install/qinp/stdlib/platform/linux/memory.qnp:220:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/platform/linux/memory.qnp:221:4  ->  Return
  mov rax, 0
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#787_IF_NEXT:
__#788_IF_END:
; ../.install/qinp/stdlib/platform/linux/memory.qnp:224:29  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'size#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, std.__getFreeBlock.~?u64
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'block#210$p?std.__MemBlockHeader'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/platform/linux/memory.qnp:227:18  ->  FunctionCall
  mov rax, rbp
  add rax, 0x10 ; local 'size#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'block#210$p?std.__MemBlockHeader'
  mov rax, [rax]
  push rax
  mov rax, std.__truncateBlock.~p?std.__MemBlockHeader~?u64
  call rax
  add rsp, 0x10
; ../.install/qinp/stdlib/platform/linux/memory.qnp:230:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'block#210$p?std.__MemBlockHeader'
  push rax
  mov rax, 0x18
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, rcx
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
std.memcpy.~p?void~pc?void~?u64:
  push rbp
  mov rbp, rsp
  sub rsp, 0x30
; ../.install/qinp/stdlib/memory.qnp:82:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'dest#0$p?void'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 1
  je __#791_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x18 ; local 'src#0$pc?void'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
__#791_LOGICAL_OR_SKIP:
  cmp al, 0
  je __#789_IF_NEXT
; ../.install/qinp/stdlib/memory.qnp:83:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/memory.qnp:84:4  ->  Return
  mov rax, 0
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
__#789_IF_NEXT:
__#790_IF_END:
; ../.install/qinp/stdlib/memory.qnp:86:27  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'dest#0$p?void'
  mov rax, [rax]
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0x20 ; local 'len#0$?u64'
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  add rax, rcx
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'd8End#102$cp?u8'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/memory.qnp:88:17  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'dest#0$p?void'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'd8#103$p?u8'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/memory.qnp:89:23  ->  Assign
  mov rax, rbp
  add rax, 0x18 ; local 'src#0$pc?void'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 's8#104$pc?u8'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/memory.qnp:91:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x20 ; local 'len#0$?u64'
  push rax
  mov rax, 0x20
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  setge al
  cmp al, 0
  je __#792_IF_NEXT
; ../.install/qinp/stdlib/memory.qnp:92:4  ->  While_Loop
__#795_WHILE_BEGIN:
__#797_LOOP_CONTINUE:
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'd8#103$p?u8'
  mov rax, [rax]
  push rax
  mov rax, 0x8
  mov rcx, rax
  pop rax
  xor rdx, rdx
  div rcx
  mov rax, rdx
  cmp rax, 0
  setne al
  cmp al, 0
  je __#794_WHILE_END
; ../.install/qinp/stdlib/memory.qnp:93:11  ->  Assign
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 's8#104$pc?u8'
  mov rcx, rax
  mov rax, [rax]
  add rax, 1
  mov [rcx], rax
  sub rax, 1
  mov al, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'd8#103$p?u8'
  mov rcx, rax
  mov rax, [rax]
  add rax, 1
  mov [rcx], rax
  sub rax, 1
  pop rcx
  mov [rax], cl
  jmp __#795_WHILE_BEGIN
__#796_LOOP_BREAK:
__#794_WHILE_END:
; ../.install/qinp/stdlib/memory.qnp:95:20  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'd8#103$p?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe0 ; local 'd64#105$p?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/memory.qnp:96:26  ->  Assign
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 's8#104$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffd8 ; local 's64#106$pc?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/memory.qnp:97:31  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'd8End#102$cp?u8'
  mov rax, [rax]
  push rax
  mov rax, 0x8
  mov rcx, rax
  pop rax
  sub rax, rcx
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffd0 ; local 'd64End#107$cp?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/memory.qnp:99:4  ->  While_Loop
__#799_WHILE_BEGIN:
__#801_LOOP_CONTINUE:
  mov rax, rbp
  add rax, 0xffffffffffffffe0 ; local 'd64#105$p?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffd0 ; local 'd64End#107$cp?u64'
  mov rcx, rax
  pop rax
  cmp rax, [rcx]
  setl al
  cmp al, 0
  je __#798_WHILE_END
; ../.install/qinp/stdlib/memory.qnp:100:12  ->  Assign
  mov rax, rbp
  add rax, 0xffffffffffffffd8 ; local 's64#106$pc?u64'
  mov rcx, rax
  mov rax, [rax]
  add rax, 8
  mov [rcx], rax
  sub rax, 8
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe0 ; local 'd64#105$p?u64'
  mov rcx, rax
  mov rax, [rax]
  add rax, 8
  mov [rcx], rax
  sub rax, 8
  pop rcx
  mov [rax], rcx
  jmp __#799_WHILE_BEGIN
__#800_LOOP_BREAK:
__#798_WHILE_END:
; ../.install/qinp/stdlib/memory.qnp:102:7  ->  Assign
  mov rax, rbp
  add rax, 0xffffffffffffffe0 ; local 'd64#105$p?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'd8#103$p?u8'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/memory.qnp:103:7  ->  Assign
  mov rax, rbp
  add rax, 0xffffffffffffffd8 ; local 's64#106$pc?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 's8#104$pc?u8'
  pop rcx
  mov [rax], rcx
__#792_IF_NEXT:
__#793_IF_END:
; ../.install/qinp/stdlib/memory.qnp:105:3  ->  While_Loop
__#803_WHILE_BEGIN:
__#805_LOOP_CONTINUE:
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'd8#103$p?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'd8End#102$cp?u8'
  mov rcx, rax
  pop rax
  cmp rax, [rcx]
  setl al
  cmp al, 0
  je __#802_WHILE_END
; ../.install/qinp/stdlib/memory.qnp:106:10  ->  Assign
  mov rax, rbp
  add rax, 0xffffffffffffffe8 ; local 's8#104$pc?u8'
  mov rcx, rax
  mov rax, [rax]
  add rax, 1
  mov [rcx], rax
  sub rax, 1
  mov al, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'd8#103$p?u8'
  mov rcx, rax
  mov rax, [rax]
  add rax, 1
  mov [rcx], rax
  sub rax, 1
  pop rcx
  mov [rax], cl
  jmp __#803_WHILE_BEGIN
__#804_LOOP_BREAK:
__#802_WHILE_END:
; ../.install/qinp/stdlib/memory.qnp:108:3  ->  Return
  mov rax, rbp
  add rax, 0x10 ; local 'dest#0$p?void'
  mov rax, [rax]
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
std.min.~?u64~?u64:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/math.qnp:60:3  ->  Return
  mov rax, rbp
  add rax, 0x10 ; local 'a#0$?u64'
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'b#0$?u64'
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, [rcx]
  setl al
  cmp al, 0
  je __#807_COND_FALSE
  mov rax, rbp
  add rax, 0x10 ; local 'a#0$?u64'
  jmp __#806_COND_END
__#807_COND_FALSE:
  mov rax, rbp
  add rax, 0x18 ; local 'b#0$?u64'
__#806_COND_END:
  mov rax, [rax]
  mov [rbp + 0x20], rax
  mov rsp, rbp
  pop rbp
  ret
std.print.~?bool:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/stdio.qnp:248:3  ->  Return
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?bool'
  mov al, [rax]
  cmp al, 0
  je __#809_COND_FALSE
  mov rax, __#str_127
  jmp __#808_COND_END
__#809_COND_FALSE:
  mov rax, __#str_128
__#808_COND_END:
  push rax
  mov rax, std.print.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x18], eax
  mov rsp, rbp
  pop rbp
  ret
std.print.~?i32:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/stdio.qnp:251:3  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?i32'
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, std.itos.~?i64
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, std.print.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x18], eax
  mov rsp, rbp
  pop rbp
  ret
std.print.~?i64:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/stdio.qnp:251:3  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, std.itos.~?i64
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, std.print.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x18], eax
  mov rsp, rbp
  pop rbp
  ret
std.print.~?u64:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/stdio.qnp:251:3  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, std.itos.~?i64
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, std.print.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x18], eax
  mov rsp, rbp
  pop rbp
  ret
std.print.~?u8:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/stdio.qnp:245:3  ->  Return
  sub rsp, 8
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'char#0$?u8'
  push rax
  mov rax, std.printn.~pc?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
  mov [rbp + 0x18], eax
  mov rsp, rbp
  pop rbp
  ret
std.print.~pc?u8:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/stdio.qnp:238:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#810_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:239:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:240:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x18], eax
  mov rsp, rbp
  pop rbp
  ret
__#810_IF_NEXT:
__#811_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:242:3  ->  Return
  sub rsp, 8
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.strlen.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.printn.~pc?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
  mov [rbp + 0x18], eax
  mov rsp, rbp
  pop rbp
  ret
std.print.~pc?u8~?bool:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:254:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#812_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:255:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:256:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#812_IF_NEXT:
__#813_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:261:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$?bool'
  mov al, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  push rax
  mov rax, std.__printf.~ppc?u8~?bool
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#347$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#814_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:261:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#814_IF_NEXT:
__#815_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:262:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.print.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#348$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#816_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:262:32  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#816_IF_NEXT:
__#817_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:263:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#347$?i32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#348$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  add eax, [rcx]
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
std.print.~pc?u8~?i32:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:254:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#818_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:255:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:256:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#818_IF_NEXT:
__#819_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:261:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  push rax
  mov rax, std.__printf.~ppc?u8~?i32
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#311$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#820_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:261:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#820_IF_NEXT:
__#821_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:262:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.print.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#312$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#822_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:262:32  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#822_IF_NEXT:
__#823_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:263:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#311$?i32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#312$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  add eax, [rcx]
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
std.print.~pc?u8~?i32~?i32:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:266:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#824_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:267:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:268:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x28], eax
  mov rsp, rbp
  pop rbp
  ret
__#824_IF_NEXT:
__#825_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:273:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  push rax
  mov rax, std.__printf.~ppc?u8~?i32
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#319$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#826_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:273:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x28], eax
  mov rsp, rbp
  pop rbp
  ret
__#826_IF_NEXT:
__#827_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:274:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x20 ; local '_VA_N_#67#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.print.~pc?u8~?i32
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#320$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#828_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:274:37  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x28], eax
  mov rsp, rbp
  pop rbp
  ret
__#828_IF_NEXT:
__#829_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:275:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#319$?i32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#320$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  add eax, [rcx]
  mov [rbp + 0x28], eax
  mov rsp, rbp
  pop rbp
  ret
std.print.~pc?u8~?i32~?i32~?i32:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:266:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#830_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:267:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:268:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x30], eax
  mov rsp, rbp
  pop rbp
  ret
__#830_IF_NEXT:
__#831_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:273:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  push rax
  mov rax, std.__printf.~ppc?u8~?i32
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#323$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#832_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:273:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x30], eax
  mov rsp, rbp
  pop rbp
  ret
__#832_IF_NEXT:
__#833_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:274:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x28 ; local '_VA_N_#72#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x20 ; local '_VA_N_#71#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.print.~pc?u8~?i32~?i32
  call rax
  add rsp, 0x18
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#324$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#834_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:274:37  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x30], eax
  mov rsp, rbp
  pop rbp
  ret
__#834_IF_NEXT:
__#835_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:275:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#323$?i32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#324$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  add eax, [rcx]
  mov [rbp + 0x30], eax
  mov rsp, rbp
  pop rbp
  ret
std.print.~pc?u8~?i32~pc?u8~?i32~?i32:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:266:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#836_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:267:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:268:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x38], eax
  mov rsp, rbp
  pop rbp
  ret
__#836_IF_NEXT:
__#837_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:273:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  push rax
  mov rax, std.__printf.~ppc?u8~?i32
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#315$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#838_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:273:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x38], eax
  mov rsp, rbp
  pop rbp
  ret
__#838_IF_NEXT:
__#839_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:274:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x30 ; local '_VA_N_#64#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x28 ; local '_VA_N_#63#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x20 ; local '_VA_N_#62#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.print.~pc?u8~pc?u8~?i32~?i32
  call rax
  add rsp, 0x20
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#316$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#840_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:274:37  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x38], eax
  mov rsp, rbp
  pop rbp
  ret
__#840_IF_NEXT:
__#841_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:275:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#315$?i32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#316$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  add eax, [rcx]
  mov [rbp + 0x38], eax
  mov rsp, rbp
  pop rbp
  ret
std.print.~pc?u8~?i64~pc?u8:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:266:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#842_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:267:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:268:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x28], eax
  mov rsp, rbp
  pop rbp
  ret
__#842_IF_NEXT:
__#843_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:273:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  push rax
  mov rax, std.__printf.~ppc?u8~?i64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#334$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#844_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:273:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x28], eax
  mov rsp, rbp
  pop rbp
  ret
__#844_IF_NEXT:
__#845_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:274:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x20 ; local '_VA_N_#80#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.print.~pc?u8~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#335$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#846_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:274:37  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x28], eax
  mov rsp, rbp
  pop rbp
  ret
__#846_IF_NEXT:
__#847_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:275:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#334$?i32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#335$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  add eax, [rcx]
  mov [rbp + 0x28], eax
  mov rsp, rbp
  pop rbp
  ret
std.print.~pc?u8~?u64:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:254:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#848_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:255:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:256:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#848_IF_NEXT:
__#849_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:261:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  push rax
  mov rax, std.__printf.~ppc?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#307$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#850_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:261:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#850_IF_NEXT:
__#851_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:262:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.print.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#308$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#852_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:262:32  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#852_IF_NEXT:
__#853_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:263:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#307$?i32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#308$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  add eax, [rcx]
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
std.print.~pc?u8~?u64~?u64:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:266:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#854_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:267:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:268:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x28], eax
  mov rsp, rbp
  pop rbp
  ret
__#854_IF_NEXT:
__#855_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:273:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  push rax
  mov rax, std.__printf.~ppc?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#305$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#856_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:273:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x28], eax
  mov rsp, rbp
  pop rbp
  ret
__#856_IF_NEXT:
__#857_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:274:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x20 ; local '_VA_N_#56#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.print.~pc?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#306$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#858_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:274:37  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x28], eax
  mov rsp, rbp
  pop rbp
  ret
__#858_IF_NEXT:
__#859_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:275:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#305$?i32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#306$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  add eax, [rcx]
  mov [rbp + 0x28], eax
  mov rsp, rbp
  pop rbp
  ret
std.print.~pc?u8~?u64~?u64~pc?u8:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:266:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#860_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:267:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:268:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x30], eax
  mov rsp, rbp
  pop rbp
  ret
__#860_IF_NEXT:
__#861_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:273:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  push rax
  mov rax, std.__printf.~ppc?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#289$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#862_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:273:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x30], eax
  mov rsp, rbp
  pop rbp
  ret
__#862_IF_NEXT:
__#863_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:274:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x28 ; local '_VA_N_#52#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x20 ; local '_VA_N_#51#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.print.~pc?u8~?u64~pc?u8
  call rax
  add rsp, 0x18
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#290$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#864_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:274:37  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x30], eax
  mov rsp, rbp
  pop rbp
  ret
__#864_IF_NEXT:
__#865_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:275:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#289$?i32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#290$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  add eax, [rcx]
  mov [rbp + 0x30], eax
  mov rsp, rbp
  pop rbp
  ret
std.print.~pc?u8~?u64~pc?u8:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:266:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#866_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:267:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:268:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x28], eax
  mov rsp, rbp
  pop rbp
  ret
__#866_IF_NEXT:
__#867_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:273:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  push rax
  mov rax, std.__printf.~ppc?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#300$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#868_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:273:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x28], eax
  mov rsp, rbp
  pop rbp
  ret
__#868_IF_NEXT:
__#869_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:274:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x20 ; local '_VA_N_#53#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.print.~pc?u8~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#301$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#870_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:274:37  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x28], eax
  mov rsp, rbp
  pop rbp
  ret
__#870_IF_NEXT:
__#871_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:275:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#300$?i32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#301$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  add eax, [rcx]
  mov [rbp + 0x28], eax
  mov rsp, rbp
  pop rbp
  ret
std.print.~pc?u8~pc?u8:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:254:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#872_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:255:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:256:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#872_IF_NEXT:
__#873_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:261:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  push rax
  mov rax, std.__printf.~ppc?u8~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#281$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#874_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:261:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#874_IF_NEXT:
__#875_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:262:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.print.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#282$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#876_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:262:32  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#876_IF_NEXT:
__#877_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:263:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#281$?i32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#282$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  add eax, [rcx]
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
std.print.~pc?u8~pc?u8~?i32~?i32:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:266:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#878_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:267:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:268:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x30], eax
  mov rsp, rbp
  pop rbp
  ret
__#878_IF_NEXT:
__#879_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:273:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  push rax
  mov rax, std.__printf.~ppc?u8~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#317$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#880_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:273:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x30], eax
  mov rsp, rbp
  pop rbp
  ret
__#880_IF_NEXT:
__#881_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:274:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x28 ; local '_VA_N_#66#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x20 ; local '_VA_N_#65#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.print.~pc?u8~?i32~?i32
  call rax
  add rsp, 0x18
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#318$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#882_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:274:37  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x30], eax
  mov rsp, rbp
  pop rbp
  ret
__#882_IF_NEXT:
__#883_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:275:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#317$?i32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#318$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  add eax, [rcx]
  mov [rbp + 0x30], eax
  mov rsp, rbp
  pop rbp
  ret
std.print.~pc?u8~pc?u8~?u64~?u64:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:266:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#884_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:267:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:268:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x30], eax
  mov rsp, rbp
  pop rbp
  ret
__#884_IF_NEXT:
__#885_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:273:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  push rax
  mov rax, std.__printf.~ppc?u8~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#303$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#886_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:273:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x30], eax
  mov rsp, rbp
  pop rbp
  ret
__#886_IF_NEXT:
__#887_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:274:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x28 ; local '_VA_N_#55#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x20 ; local '_VA_N_#54#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.print.~pc?u8~?u64~?u64
  call rax
  add rsp, 0x18
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#304$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#888_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:274:37  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x30], eax
  mov rsp, rbp
  pop rbp
  ret
__#888_IF_NEXT:
__#889_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:275:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#303$?i32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#304$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  add eax, [rcx]
  mov [rbp + 0x30], eax
  mov rsp, rbp
  pop rbp
  ret
std.print.~pc?u8~pc?u8~?u64~?u64~pc?u8:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:266:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#890_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:267:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:268:4  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x38], eax
  mov rsp, rbp
  pop rbp
  ret
__#890_IF_NEXT:
__#891_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:273:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'val#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  push rax
  mov rax, std.__printf.~ppc?u8~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#287$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#892_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:273:41  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x38], eax
  mov rsp, rbp
  pop rbp
  ret
__#892_IF_NEXT:
__#893_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:274:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x30 ; local '_VA_N_#50#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x28 ; local '_VA_N_#49#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x20 ; local '_VA_N_#48#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.print.~pc?u8~?u64~?u64~pc?u8
  call rax
  add rsp, 0x20
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#288$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#894_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:274:37  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x38], eax
  mov rsp, rbp
  pop rbp
  ret
__#894_IF_NEXT:
__#895_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:275:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#287$?i32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#288$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  add eax, [rcx]
  mov [rbp + 0x38], eax
  mov rsp, rbp
  pop rbp
  ret
std.printRep.~?u8~?u64:
  push rbp
  mov rbp, rsp
  sub rsp, 0x10
; ../.install/qinp/stdlib/stdio.qnp:279:23  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'nPrinted#266$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:280:3  ->  While_Loop
__#897_WHILE_BEGIN:
__#899_LOOP_CONTINUE:
  mov rax, rbp
  add rax, 0x18 ; local 'n#0$?u64'
  mov rcx, rax
  mov rax, [rax]
  dec rax
  mov [rcx], rax
  inc rax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setg al
  cmp al, 0
  je __#896_WHILE_END
; ../.install/qinp/stdlib/stdio.qnp:281:4  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$?u8'
  mov al, [rax]
  push rax
  mov rax, std.print.~?u8
  call rax
  add rsp, 0x8
  pop rax
  movsx rax, eax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'nSinglePrint#265$?u64'
  pop rcx
  mov [rax], rcx
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#900_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:281:40  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#900_IF_NEXT:
__#901_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:282:13  ->  Assign_Sum
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'nSinglePrint#265$?u64'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'nPrinted#266$?u64'
  pop rcx
  push rax
  mov rax, [rax]
  add rax, [rcx]
  mov rcx, rax
  pop rax
  mov [rax], rcx
  jmp __#897_WHILE_BEGIN
__#898_LOOP_BREAK:
__#896_WHILE_END:
; ../.install/qinp/stdlib/stdio.qnp:283:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'nPrinted#266$?u64'
  mov rax, [rax]
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
std.println.:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/stdio.qnp:474:3  ->  Return
  sub rsp, 8
  mov al, 0xa
  push rax
  mov rax, std.print.~?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x10], eax
  mov rsp, rbp
  pop rbp
  ret
std.println.~pc?u8:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:479:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'val#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.print.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#329$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#902_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:479:29  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x18], eax
  mov rsp, rbp
  pop rbp
  ret
__#902_IF_NEXT:
__#903_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:480:3  ->  If_Clause
  sub rsp, 8
  mov rax, std.println.
  call rax
  add rsp, 0x0
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#330$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#904_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:480:28  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x18], eax
  mov rsp, rbp
  pop rbp
  ret
__#904_IF_NEXT:
__#905_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:481:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#329$?i32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#330$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  add eax, [rcx]
  mov [rbp + 0x18], eax
  mov rsp, rbp
  pop rbp
  ret
std.println.~pc?u8~?bool:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:486:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local '_VA_N_#81#0$?bool'
  mov al, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.print.~pc?u8~?bool
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#345$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#906_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:486:37  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#906_IF_NEXT:
__#907_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:487:3  ->  If_Clause
  sub rsp, 8
  mov rax, std.println.
  call rax
  add rsp, 0x0
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#346$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#908_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:487:28  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#908_IF_NEXT:
__#909_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:488:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#345$?i32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#346$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  add eax, [rcx]
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
std.println.~pc?u8~?i32:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:486:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local '_VA_N_#57#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.print.~pc?u8~?i32
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#309$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#910_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:486:37  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#910_IF_NEXT:
__#911_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:487:3  ->  If_Clause
  sub rsp, 8
  mov rax, std.println.
  call rax
  add rsp, 0x0
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#310$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#912_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:487:28  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#912_IF_NEXT:
__#913_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:488:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#309$?i32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#310$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  add eax, [rcx]
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
std.println.~pc?u8~?i32~?i32~?i32:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:486:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x28 ; local '_VA_N_#70#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x20 ; local '_VA_N_#69#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local '_VA_N_#68#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.print.~pc?u8~?i32~?i32~?i32
  call rax
  add rsp, 0x20
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#321$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#914_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:486:37  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x30], eax
  mov rsp, rbp
  pop rbp
  ret
__#914_IF_NEXT:
__#915_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:487:3  ->  If_Clause
  sub rsp, 8
  mov rax, std.println.
  call rax
  add rsp, 0x0
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#322$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#916_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:487:28  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x30], eax
  mov rsp, rbp
  pop rbp
  ret
__#916_IF_NEXT:
__#917_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:488:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#321$?i32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#322$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  add eax, [rcx]
  mov [rbp + 0x30], eax
  mov rsp, rbp
  pop rbp
  ret
std.println.~pc?u8~?i32~pc?u8~?i32~?i32:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:486:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x30 ; local '_VA_N_#61#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x28 ; local '_VA_N_#60#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x20 ; local '_VA_N_#59#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local '_VA_N_#58#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.print.~pc?u8~?i32~pc?u8~?i32~?i32
  call rax
  add rsp, 0x28
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#313$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#918_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:486:37  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x38], eax
  mov rsp, rbp
  pop rbp
  ret
__#918_IF_NEXT:
__#919_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:487:3  ->  If_Clause
  sub rsp, 8
  mov rax, std.println.
  call rax
  add rsp, 0x0
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#314$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#920_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:487:28  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x38], eax
  mov rsp, rbp
  pop rbp
  ret
__#920_IF_NEXT:
__#921_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:488:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#313$?i32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#314$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  add eax, [rcx]
  mov [rbp + 0x38], eax
  mov rsp, rbp
  pop rbp
  ret
std.println.~pc?u8~?i64~pc?u8:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:486:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x20 ; local '_VA_N_#79#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local '_VA_N_#78#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.print.~pc?u8~?i64~pc?u8
  call rax
  add rsp, 0x18
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#332$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#922_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:486:37  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x28], eax
  mov rsp, rbp
  pop rbp
  ret
__#922_IF_NEXT:
__#923_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:487:3  ->  If_Clause
  sub rsp, 8
  mov rax, std.println.
  call rax
  add rsp, 0x0
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#333$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#924_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:487:28  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x28], eax
  mov rsp, rbp
  pop rbp
  ret
__#924_IF_NEXT:
__#925_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:488:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#332$?i32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#333$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  add eax, [rcx]
  mov [rbp + 0x28], eax
  mov rsp, rbp
  pop rbp
  ret
std.println.~pc?u8~?u64:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:486:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local '_VA_N_#73#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.print.~pc?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#325$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#926_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:486:37  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#926_IF_NEXT:
__#927_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:487:3  ->  If_Clause
  sub rsp, 8
  mov rax, std.println.
  call rax
  add rsp, 0x0
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#326$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#928_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:487:28  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#928_IF_NEXT:
__#929_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:488:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#325$?i32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#326$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  add eax, [rcx]
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
std.println.~pc?u8~pc?u8:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:486:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local '_VA_N_#43#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.print.~pc?u8~pc?u8
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#283$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#930_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:486:37  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#930_IF_NEXT:
__#931_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:487:3  ->  If_Clause
  sub rsp, 8
  mov rax, std.println.
  call rax
  add rsp, 0x0
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#284$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#932_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:487:28  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#932_IF_NEXT:
__#933_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:488:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#283$?i32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#284$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  add eax, [rcx]
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
std.println.~pc?u8~pc?u8~?u64~?u64~pc?u8:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:486:3  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x30 ; local '_VA_N_#47#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x28 ; local '_VA_N_#46#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x20 ; local '_VA_N_#45#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local '_VA_N_#44#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'format#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.print.~pc?u8~pc?u8~?u64~?u64~pc?u8
  call rax
  add rsp, 0x28
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#285$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#934_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:486:37  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x38], eax
  mov rsp, rbp
  pop rbp
  ret
__#934_IF_NEXT:
__#935_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:487:3  ->  If_Clause
  sub rsp, 8
  mov rax, std.println.
  call rax
  add rsp, 0x0
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#286$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#936_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:487:28  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x38], eax
  mov rsp, rbp
  pop rbp
  ret
__#936_IF_NEXT:
__#937_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:488:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'n1#285$?i32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'n2#286$?i32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  add eax, [rcx]
  mov [rbp + 0x38], eax
  mov rsp, rbp
  pop rbp
  ret
std.printn.~pc?u8~?u64:
  push rbp
  mov rbp, rsp
  sub rsp, 0x40c
; ../.install/qinp/stdlib/stdio.qnp:205:29  ->  If_Clause
  mov rax, __#stck_2#130$?bool
  mov al, [rax]
  cmp al, 0
  je __#938_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:205:29  ->  Assign
  mov al, 0
  push rax
  mov rax, __#stck_2#130$?bool
  pop rcx
  mov [rax], cl
; ../.install/qinp/stdlib/stdio.qnp:205:29  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, bufFillSize#129$?u64
  pop rcx
  mov [rax], rcx
__#938_IF_NEXT:
__#939_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:207:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 1
  je __#942_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x18 ; local 'num#0$?u64'
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
__#942_LOGICAL_OR_SKIP:
  cmp al, 0
  je __#940_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:208:4  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'num#0$?u64'
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  setne al
  cmp al, 0
  je __#943_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:209:14  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/stdio.qnp:210:5  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#943_IF_NEXT:
__#944_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:211:4  ->  If_Clause
  mov rax, bufFillSize#129$?u64
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#945_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:212:5  ->  Return
  mov rax, 0x0
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#945_IF_NEXT:
__#946_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:214:4  ->  If_Clause
  sub rsp, 8
  mov rax, bufFillSize#129$?u64
  mov rax, [rax]
  push rax
  mov rax, buf#128$a1024?u8
  push rax
  mov rax, std.__printn_unbuf.~pc?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffbf4 ; local 'n#131$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#947_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:215:5  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#947_IF_NEXT:
__#948_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:216:16  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, bufFillSize#129$?u64
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:217:4  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffbf4 ; local 'n#131$?i32'
  mov eax, [rax]
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#940_IF_NEXT:
__#941_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:219:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'num#0$?u64'
  push rax
  mov rax, 0x1
  mov rcx, rax
  pop rax
  mov rax, [rax]
  sub rax, rcx
  pop rcx
  add rax, rcx
  mov al, [rax]
  push rax
  mov al, 0xa
  mov cl, al
  pop rax
  cmp al, cl
  sete al
  cmp al, 1
  je __#951_LOGICAL_OR_SKIP
  mov rax, bufFillSize#129$?u64
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'num#0$?u64'
  mov rcx, rax
  pop rax
  mov rax, [rax]
  add rax, [rcx]
  push rax
  mov rax, 0x400
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setge al
__#951_LOGICAL_OR_SKIP:
  cmp al, 0
  je __#949_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:221:4  ->  If_Clause
  mov rax, bufFillSize#129$?u64
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  setne al
  cmp al, 0
  je __#952_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:222:5  ->  If_Clause
  sub rsp, 8
  mov rax, bufFillSize#129$?u64
  mov rax, [rax]
  push rax
  mov rax, buf#128$a1024?u8
  push rax
  mov rax, std.__printn_unbuf.~pc?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#954_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:223:6  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#954_IF_NEXT:
__#955_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:224:17  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, bufFillSize#129$?u64
  pop rcx
  mov [rax], rcx
__#952_IF_NEXT:
__#953_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:225:4  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'num#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.__printn_unbuf.~pc?u8~?u64
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffbf4 ; local 'n#132$?i32'
  pop rcx
  mov [rax], ecx
  mov eax, [rax]
  movsx rax, eax
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
  cmp al, 0
  je __#956_IF_NEXT
; ../.install/qinp/stdlib/stdio.qnp:226:5  ->  Return
  mov rax, 0xffffffffffffffff
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#956_IF_NEXT:
__#957_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:227:4  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffbf4 ; local 'n#132$?i32'
  mov eax, [rax]
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
__#949_IF_NEXT:
__#950_IF_END:
; ../.install/qinp/stdlib/stdio.qnp:229:9  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'num#0$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, buf#128$a1024?u8
  push rax
  mov rax, 0x1
  push rax
  mov rax, bufFillSize#129$?u64
  mov rcx, rax
  pop rax
  mov rcx, [rcx]
  mul rcx
  mov rcx, rax
  pop rax
  add rax, rcx
  push rax
  mov rax, std.memcpy.~p?void~pc?void~?u64
  call rax
  add rsp, 0x18
  pop rax
; ../.install/qinp/stdlib/stdio.qnp:230:15  ->  Assign_Sum
  mov rax, rbp
  add rax, 0x18 ; local 'num#0$?u64'
  push rax
  mov rax, bufFillSize#129$?u64
  pop rcx
  push rax
  mov rax, [rax]
  add rax, [rcx]
  mov rcx, rax
  pop rax
  mov [rax], rcx
; ../.install/qinp/stdlib/stdio.qnp:232:3  ->  Return
  mov rax, rbp
  add rax, 0x18 ; local 'num#0$?u64'
  mov rax, [rax]
  mov [rbp + 0x20], eax
  mov rsp, rbp
  pop rbp
  ret
std.stoi.~pc?u8~?i64:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/string.qnp:556:3  ->  Return
  sub rsp, 8
  mov rax, rbp
  add rax, 0x18 ; local 'base#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, 0
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, std.stoi.~pc?u8~ppc?u8~?i64
  call rax
  add rsp, 0x18
  pop rax
  mov [rbp + 0x20], rax
  mov rsp, rbp
  pop rbp
  ret
std.stoi.~pc?u8~ppc?u8~?i64:
  push rbp
  mov rbp, rsp
  sub rsp, 0x1a
; ../.install/qinp/stdlib/string.qnp:559:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 1
  je __#960_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x20 ; local 'base#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, 0x2
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setl al
__#960_LOGICAL_OR_SKIP:
  cmp al, 1
  je __#961_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x20 ; local 'base#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, 0x24
  mov rcx, rax
  pop rax
  cmp rax, rcx
  setg al
__#961_LOGICAL_OR_SKIP:
  cmp al, 0
  je __#958_IF_NEXT
; ../.install/qinp/stdlib/string.qnp:560:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/string.qnp:561:4  ->  Return
  mov rax, 0
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
__#958_IF_NEXT:
__#959_IF_END:
; ../.install/qinp/stdlib/string.qnp:563:35  ->  If_Clause
  mov rax, __#stck_4#178$?bool
  mov al, [rax]
  cmp al, 0
  je __#962_IF_NEXT
; ../.install/qinp/stdlib/string.qnp:563:35  ->  Assign
  mov al, 0
  push rax
  mov rax, __#stck_4#178$?bool
  pop rcx
  mov [rax], cl
; ../.install/qinp/stdlib/string.qnp:563:35  ->  Assign
  mov rax, __#str_130
  push rax
  mov rax, __baseCharsLower#177$cpc?u8
  pop rcx
  mov [rax], rcx
__#962_IF_NEXT:
__#963_IF_END:
; ../.install/qinp/stdlib/string.qnp:564:13  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'num#179$?u64'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/string.qnp:566:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  mov rax, [rax]
  mov al, [rax]
  push rax
  mov al, 0x2b
  mov cl, al
  pop rax
  cmp al, cl
  sete al
  cmp al, 0
  je __#964_IF_NEXT
; ../.install/qinp/stdlib/string.qnp:566:19  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  push rax
  mov rax, [rax]
  add rax, 1
  mov rcx, rax
  pop rax
  mov [rax], rcx
__#964_IF_NEXT:
__#965_IF_END:
; ../.install/qinp/stdlib/string.qnp:568:25  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  mov rax, [rax]
  mov al, [rax]
  push rax
  mov al, 0x2d
  mov cl, al
  pop rax
  cmp al, cl
  sete al
  cmp al, 0
  setne al
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffef ; local 'negative#180$c?bool'
  pop rcx
  mov [rax], cl
; ../.install/qinp/stdlib/string.qnp:570:3  ->  If_Clause
  mov rax, rbp
  add rax, 0xffffffffffffffef ; local 'negative#180$c?bool'
  mov al, [rax]
  cmp al, 0
  setne al
  cmp al, 0
  je __#966_IF_NEXT
; ../.install/qinp/stdlib/string.qnp:570:16  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  push rax
  mov rax, [rax]
  add rax, 1
  mov rcx, rax
  pop rax
  mov [rax], rcx
__#966_IF_NEXT:
__#967_IF_END:
; ../.install/qinp/stdlib/string.qnp:573:3  ->  While_Loop
__#969_WHILE_BEGIN:
__#971_LOOP_CONTINUE:
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  mov rax, [rax]
  mov al, [rax]
  push rax
  mov rax, std.tolower.~?u8
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffee ; local 'c#181$?u8'
  pop rcx
  mov [rax], cl
  mov al, [rax]
  cmp al, 0
  setne al
  cmp al, 0
  je __#968_WHILE_END
; ../.install/qinp/stdlib/string.qnp:574:18  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffee ; local 'c#181$?u8'
  mov al, [rax]
  push rax
  mov rax, __baseCharsLower#177$cpc?u8
  mov rax, [rax]
  push rax
  mov rax, std.strchr.~pc?u8~?u8
  call rax
  add rsp, 0x10
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe6 ; local 'i#182$pc?u8'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/string.qnp:575:4  ->  If_Clause
  mov rax, rbp
  add rax, 0xffffffffffffffe6 ; local 'i#182$pc?u8'
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 1
  je __#974_LOGICAL_OR_SKIP
  mov rax, 0x1
  push rax
  mov rax, __baseCharsLower#177$cpc?u8
  mov rax, [rax]
  mov rcx, rax
  pop rax
  mul rcx
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffe6 ; local 'i#182$pc?u8'
  pop rcx
  push rax
  mov rax, [rax]
  sub rax, rcx
  mov rcx, rax
  pop rax
  mov [rax], rcx
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x20 ; local 'base#0$?i64'
  mov rcx, rax
  pop rax
  cmp rax, [rcx]
  setge al
__#974_LOGICAL_OR_SKIP:
  cmp al, 0
  je __#972_IF_NEXT
; ../.install/qinp/stdlib/string.qnp:576:5  ->  Break
  jmp __#970_LOOP_BREAK
__#972_IF_NEXT:
__#973_IF_END:
; ../.install/qinp/stdlib/string.qnp:577:8  ->  Assign_Product
  mov rax, rbp
  add rax, 0x20 ; local 'base#0$?i64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'num#179$?u64'
  pop rcx
  push rax
  mov rax, [rax]
  mul rcx
  mov rcx, rax
  pop rax
  mov [rax], rcx
; ../.install/qinp/stdlib/string.qnp:578:8  ->  Assign_Sum
  mov rax, rbp
  add rax, 0xffffffffffffffe6 ; local 'i#182$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'num#179$?u64'
  pop rcx
  push rax
  mov rax, [rax]
  add rax, rcx
  mov rcx, rax
  pop rax
  mov [rax], rcx
; ../.install/qinp/stdlib/string.qnp:579:4  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  push rax
  mov rax, [rax]
  add rax, 1
  mov rcx, rax
  pop rax
  mov [rax], rcx
  jmp __#969_WHILE_BEGIN
__#970_LOOP_BREAK:
__#968_WHILE_END:
; ../.install/qinp/stdlib/string.qnp:581:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'pNextOut#0$ppc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  je __#975_IF_NEXT
; ../.install/qinp/stdlib/string.qnp:581:26  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'pNextOut#0$ppc?u8'
  mov rax, [rax]
  pop rcx
  mov rcx, [rcx]
  mov [rax], rcx
__#975_IF_NEXT:
__#976_IF_END:
; ../.install/qinp/stdlib/string.qnp:583:3  ->  Return
  mov rax, rbp
  add rax, 0xffffffffffffffef ; local 'negative#180$c?bool'
  mov al, [rax]
  cmp al, 0
  setne al
  cmp al, 0
  je __#978_COND_FALSE
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'num#179$?u64'
  mov rax, [rax]
  neg rax
  jmp __#977_COND_END
__#978_COND_FALSE:
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'num#179$?u64'
  mov rax, [rax]
__#977_COND_END:
  mov [rbp + 0x28], rax
  mov rsp, rbp
  pop rbp
  ret
std.strchr.~pc?u8~?u8:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/string.qnp:498:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#979_IF_NEXT
; ../.install/qinp/stdlib/string.qnp:499:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/string.qnp:500:4  ->  Return
  mov rax, 0
  mov [rbp + 0x20], rax
  mov rsp, rbp
  pop rbp
  ret
__#979_IF_NEXT:
__#980_IF_END:
; ../.install/qinp/stdlib/string.qnp:502:3  ->  While_Loop
__#982_WHILE_BEGIN:
__#984_LOOP_CONTINUE:
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  mov rax, [rax]
  mov al, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'ch#0$?u8'
  mov rcx, rax
  pop rax
  cmp al, [rcx]
  setne al
  cmp al, 0
  je __#985_LOGICAL_AND_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  mov rax, [rax]
  mov al, [rax]
  cmp al, 0
  setne al
__#985_LOGICAL_AND_SKIP:
  cmp al, 0
  je __#981_WHILE_END
; ../.install/qinp/stdlib/string.qnp:502:29  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  push rax
  mov rax, [rax]
  add rax, 1
  mov rcx, rax
  pop rax
  mov [rax], rcx
  jmp __#982_WHILE_BEGIN
__#983_LOOP_BREAK:
__#981_WHILE_END:
; ../.install/qinp/stdlib/string.qnp:503:3  ->  Return
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  mov rax, [rax]
  mov al, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'ch#0$?u8'
  mov rcx, rax
  pop rax
  cmp al, [rcx]
  sete al
  cmp al, 0
  je __#987_COND_FALSE
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  mov rax, [rax]
  jmp __#986_COND_END
__#987_COND_FALSE:
  mov rax, 0
__#986_COND_END:
  mov [rbp + 0x20], rax
  mov rsp, rbp
  pop rbp
  ret
std.strcmp.~pc?u8~pc?u8:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/string.qnp:488:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'str1#0$pc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 1
  je __#990_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x18 ; local 'str2#0$pc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
__#990_LOGICAL_OR_SKIP:
  cmp al, 0
  je __#988_IF_NEXT
; ../.install/qinp/stdlib/string.qnp:489:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/string.qnp:490:4  ->  Return
  mov rax, 0
  mov [rbp + 0x20], rax
  mov rsp, rbp
  pop rbp
  ret
__#988_IF_NEXT:
__#989_IF_END:
; ../.install/qinp/stdlib/string.qnp:492:3  ->  While_Loop
__#992_WHILE_BEGIN:
__#994_LOOP_CONTINUE:
  mov rax, rbp
  add rax, 0x10 ; local 'str1#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'str2#0$pc?u8'
  mov rax, [rax]
  mov rcx, rax
  pop rax
  mov al, [rax]
  cmp al, [rcx]
  sete al
  cmp al, 0
  je __#995_LOGICAL_AND_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'str1#0$pc?u8'
  mov rax, [rax]
  mov al, [rax]
  cmp al, 0
  setne al
__#995_LOGICAL_AND_SKIP:
  cmp al, 0
  je __#996_LOGICAL_AND_SKIP
  mov rax, rbp
  add rax, 0x18 ; local 'str2#0$pc?u8'
  mov rax, [rax]
  mov al, [rax]
  cmp al, 0
  setne al
__#996_LOGICAL_AND_SKIP:
  cmp al, 0
  je __#991_WHILE_END
; ../.install/qinp/stdlib/string.qnp:493:4  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'str1#0$pc?u8'
  push rax
  mov rax, [rax]
  add rax, 1
  mov rcx, rax
  pop rax
  mov [rax], rcx
; ../.install/qinp/stdlib/string.qnp:494:4  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x18 ; local 'str2#0$pc?u8'
  push rax
  mov rax, [rax]
  add rax, 1
  mov rcx, rax
  pop rax
  mov [rax], rcx
  jmp __#992_WHILE_BEGIN
__#993_LOOP_BREAK:
__#991_WHILE_END:
; ../.install/qinp/stdlib/string.qnp:495:3  ->  Return
  mov rax, rbp
  add rax, 0x10 ; local 'str1#0$pc?u8'
  mov rax, [rax]
  mov al, [rax]
  movzx rax, al
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'str2#0$pc?u8'
  mov rax, [rax]
  mov al, [rax]
  movzx rax, al
  mov rcx, rax
  pop rax
  sub rax, rcx
  mov [rbp + 0x20], rax
  mov rsp, rbp
  pop rbp
  ret
std.strlen.~pc?u8:
  push rbp
  mov rbp, rsp
  sub rsp, 0x8
; ../.install/qinp/stdlib/string.qnp:479:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 0
  je __#997_IF_NEXT
; ../.install/qinp/stdlib/string.qnp:480:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/string.qnp:481:4  ->  Return
  mov rax, 0
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
__#997_IF_NEXT:
__#998_IF_END:
; ../.install/qinp/stdlib/string.qnp:483:17  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'begin#169$cpc?u8'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/string.qnp:484:3  ->  While_Loop
__#1000_WHILE_BEGIN:
__#1002_LOOP_CONTINUE:
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  mov rax, [rax]
  mov al, [rax]
  cmp al, 0
  setne al
  cmp al, 0
  je __#999_WHILE_END
; ../.install/qinp/stdlib/string.qnp:484:15  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  push rax
  mov rax, [rax]
  add rax, 1
  mov rcx, rax
  pop rax
  mov [rax], rcx
  jmp __#1000_WHILE_BEGIN
__#1001_LOOP_BREAK:
__#999_WHILE_END:
; ../.install/qinp/stdlib/string.qnp:485:3  ->  Return
  mov rax, rbp
  add rax, 0x10 ; local 'str#0$pc?u8'
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'begin#169$cpc?u8'
  mov rax, [rax]
  mov rcx, rax
  pop rax
  mul rcx
  mov rcx, rax
  pop rax
  mov rax, [rax]
  sub rax, rcx
  mov [rbp + 0x18], rax
  mov rsp, rbp
  pop rbp
  ret
std.strrev.~p?u8~p?u8:
  push rbp
  mov rbp, rsp
  sub rsp, 0x9
; ../.install/qinp/stdlib/string.qnp:513:3  ->  If_Clause
  mov rax, rbp
  add rax, 0x10 ; local 'begin#0$p?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
  cmp al, 1
  je __#1005_LOGICAL_OR_SKIP
  mov rax, rbp
  add rax, 0x18 ; local 'end#0$p?u8'
  mov rax, [rax]
  cmp rax, 0
  setne al
  cmp al, 0
  sete al
__#1005_LOGICAL_OR_SKIP:
  cmp al, 0
  je __#1003_IF_NEXT
; ../.install/qinp/stdlib/string.qnp:514:13  ->  FunctionCall
  mov rax, 0x1
  push rax
  mov rax, std.error.set.~?std.error.ID
  call rax
  add rsp, 0x8
; ../.install/qinp/stdlib/string.qnp:515:4  ->  Return
  mov rax, 0
  mov [rbp + 0x20], rax
  mov rsp, rbp
  pop rbp
  ret
__#1003_IF_NEXT:
__#1004_IF_END:
; ../.install/qinp/stdlib/string.qnp:517:15  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'begin#0$p?u8'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'str#170$cp?u8'
  pop rcx
  mov [rax], rcx
; ../.install/qinp/stdlib/string.qnp:519:3  ->  While_Loop
__#1007_WHILE_BEGIN:
__#1009_LOOP_CONTINUE:
  mov rax, rbp
  add rax, 0x10 ; local 'begin#0$p?u8'
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'end#0$p?u8'
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, [rcx]
  setl al
  cmp al, 0
  je __#1006_WHILE_END
; ../.install/qinp/stdlib/string.qnp:520:21  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'begin#0$p?u8'
  mov rax, [rax]
  mov al, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'temp#171$c?u8'
  pop rcx
  mov [rax], cl
; ../.install/qinp/stdlib/string.qnp:521:13  ->  Assign
  mov rax, rbp
  add rax, 0x18 ; local 'end#0$p?u8'
  push rax
  mov rax, [rax]
  sub rax, 1
  mov rcx, rax
  pop rax
  mov [rax], rcx
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'begin#0$p?u8'
  mov rcx, rax
  mov rax, [rax]
  add rax, 1
  mov [rcx], rax
  sub rax, 1
  pop rcx
  mov cl, [rcx]
  mov [rax], cl
; ../.install/qinp/stdlib/string.qnp:522:9  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff7 ; local 'temp#171$c?u8'
  mov al, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'end#0$p?u8'
  mov rax, [rax]
  pop rcx
  mov [rax], cl
  jmp __#1007_WHILE_BEGIN
__#1008_LOOP_BREAK:
__#1006_WHILE_END:
; ../.install/qinp/stdlib/string.qnp:524:3  ->  Return
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'str#170$cp?u8'
  mov rax, [rax]
  mov [rbp + 0x20], rax
  mov rsp, rbp
  pop rbp
  ret
std.tolower.~?u8:
  push rbp
  mov rbp, rsp
; ../.install/qinp/stdlib/string.qnp:589:3  ->  Return
  mov al, 0x41
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'c#0$?u8'
  mov rcx, rax
  pop rax
  cmp al, [rcx]
  setle al
  cmp al, 0
  je __#1010_LOGICAL_AND_SKIP
  mov rax, rbp
  add rax, 0x10 ; local 'c#0$?u8'
  push rax
  mov al, 0x5a
  mov cl, al
  pop rax
  mov al, [rax]
  cmp al, cl
  setle al
__#1010_LOGICAL_AND_SKIP:
  cmp al, 0
  je __#1012_COND_FALSE
  mov al, 0x20
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'c#0$?u8'
  mov rcx, rax
  pop rax
  add al, [rcx]
  jmp __#1011_COND_END
__#1012_COND_FALSE:
  mov rax, rbp
  add rax, 0x10 ; local 'c#0$?u8'
  mov al, [rax]
__#1011_COND_END:
  mov [rbp + 0x18], al
  mov rsp, rbp
  pop rbp
  ret
writeInsCondition.~p?AssemblerData~?CondID:
  push rbp
  mov rbp, rsp
; assembler.qnp:406:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x18 ; local 'cid#0$?CondID'
  push rax
  mov rax, 0x1f
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#1013_IF_NEXT
; assembler.qnp:407:23  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 17
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 8
  mov rax, [rax]
  push rax
  mov rax, __#str_60
  push rax
  mov rax, handleAsmError.~pc?u8~pc?std.String~?u64~?u64~p?u32
  call rax
  add rsp, 0x28
  pop rax
; assembler.qnp:408:29  ->  Assign
  mov al, 1
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 65
  pop rcx
  mov [rax], cl
; assembler.qnp:409:9  ->  Return
  mov al, 0
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
__#1013_IF_NEXT:
__#1014_IF_END:
; assembler.qnp:410:17  ->  FunctionCall
  mov rax, 0x5
  push rax
  mov rax, 0xf
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'cid#0$?CondID'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsPart.~p?AssemblerData~?CondID~?u32~?u32
  call rax
  add rsp, 0x20
; assembler.qnp:411:5  ->  Return
  mov al, 1
  mov [rbp + 0x20], al
  mov rsp, rbp
  pop rbp
  ret
writeInsDestReg.~p?AssemblerData~?RegID:
  push rbp
  mov rbp, rsp
; assembler.qnp:403:17  ->  FunctionCall
  mov rax, 0x5
  push rax
  mov rax, 0xf
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'rid#0$?RegID'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsPart.~p?AssemblerData~?RegID~?u32~?u32
  call rax
  add rsp, 0x20
; :0:0  ->  Return
  mov rsp, rbp
  pop rbp
  ret
writeInsImmediate.~p?AssemblerData~?i32:
  push rbp
  mov rbp, rsp
; assembler.qnp:474:17  ->  FunctionCall
  mov rax, 0x9
  push rax
  mov rax, 0x7fffff
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'imm#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsPart.~p?AssemblerData~?i32~?u32~?u32
  call rax
  add rsp, 0x20
; :0:0  ->  Return
  mov rsp, rbp
  pop rbp
  ret
writeInsOffset.~p?AssemblerData~?i32~?OffsetType:
  push rbp
  mov rbp, rsp
; assembler.qnp:451:5  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0x20 ; local 'ot#0$?OffsetType'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'offset#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, checkOffsetRange.~p?AssemblerData~?i32~?OffsetType
  call rax
  add rsp, 0x18
  pop rax
  cmp al, 0
  sete al
  cmp al, 0
  je __#1015_IF_NEXT
; assembler.qnp:452:9  ->  Return
  mov al, 0
  mov [rbp + 0x28], al
  mov rsp, rbp
  pop rbp
  ret
__#1015_IF_NEXT:
__#1016_IF_END:
; assembler.qnp:454:5  ->  If_Clause
  mov rax, rbp
  add rax, 0x20 ; local 'ot#0$?OffsetType'
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#1017_IF_NEXT
; assembler.qnp:455:21  ->  FunctionCall
  mov rax, 0x12
  push rax
  mov rax, 0x3fff
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'offset#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsPart.~p?AssemblerData~?i32~?u32~?u32
  call rax
  add rsp, 0x20
  jmp __#1018_IF_END
__#1017_IF_NEXT:
  mov rax, rbp
  add rax, 0x20 ; local 'ot#0$?OffsetType'
  push rax
  mov rax, 0x1
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#1019_IF_NEXT
; assembler.qnp:457:21  ->  FunctionCall
  mov rax, 0x12
  push rax
  mov rax, 0x1fff
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'offset#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsPart.~p?AssemblerData~?i32~?u32~?u32
  call rax
  add rsp, 0x20
  jmp __#1018_IF_END
__#1019_IF_NEXT:
  mov rax, rbp
  add rax, 0x20 ; local 'ot#0$?OffsetType'
  push rax
  mov rax, 0x2
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#1020_IF_NEXT
; assembler.qnp:459:21  ->  FunctionCall
  mov rax, 0xe
  push rax
  mov rax, 0x3ffff
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'offset#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsPart.~p?AssemblerData~?i32~?u32~?u32
  call rax
  add rsp, 0x20
  jmp __#1018_IF_END
__#1020_IF_NEXT:
  mov rax, rbp
  add rax, 0x20 ; local 'ot#0$?OffsetType'
  push rax
  mov rax, 0x3
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#1021_IF_NEXT
; assembler.qnp:461:21  ->  FunctionCall
  mov rax, 0x5
  push rax
  mov rax, 0xf
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'offset#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsPart.~p?AssemblerData~?i32~?u32~?u32
  call rax
  add rsp, 0x20
; assembler.qnp:462:21  ->  FunctionCall
  mov rax, 0x12
  push rax
  mov rax, 0x3fff
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'offset#0$?i32'
  push rax
  mov rax, 0x5
  mov ecx, eax
  pop rax
  mov eax, [rax]
  shr eax, cl
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsPart.~p?AssemblerData~?i32~?u32~?u32
  call rax
  add rsp, 0x20
  jmp __#1018_IF_END
__#1021_IF_NEXT:
; assembler.qnp:464:23  ->  FunctionCall
  sub rsp, 8
  mov rax, rbp
  add rax, 0x20 ; local 'ot#0$?OffsetType'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 25
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 17
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 8
  mov rax, [rax]
  push rax
  mov rax, __#str_64
  push rax
  mov rax, handleAsmError.~pc?u8~pc?std.String~?u64~?u64~p?u32~?i32
  call rax
  add rsp, 0x30
  pop rax
; assembler.qnp:465:29  ->  Assign
  mov al, 1
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 65
  pop rcx
  mov [rax], cl
; assembler.qnp:466:9  ->  Return
  mov al, 0
  mov [rbp + 0x28], al
  mov rsp, rbp
  pop rbp
  ret
__#1022_IF_NEXT:
__#1018_IF_END:
; assembler.qnp:468:5  ->  Return
  mov al, 1
  mov [rbp + 0x28], al
  mov rsp, rbp
  pop rbp
  ret
writeInsOffsetSelect.~p?AssemblerData~?i32:
  push rbp
  mov rbp, rsp
; assembler.qnp:414:17  ->  FunctionCall
  mov rax, 0x9
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'os#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsPart.~p?AssemblerData~?i32~?u32~?u32
  call rax
  add rsp, 0x20
; :0:0  ->  Return
  mov rsp, rbp
  pop rbp
  ret
writeInsOpCode.~p?AssemblerData~?OpCode:
  push rbp
  mov rbp, rsp
; assembler.qnp:400:17  ->  FunctionCall
  mov rax, 0x0
  push rax
  mov rax, 0x1f
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'oc#0$?OpCode'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsPart.~p?AssemblerData~?OpCode~?u32~?u32
  call rax
  add rsp, 0x20
; :0:0  ->  Return
  mov rsp, rbp
  pop rbp
  ret
writeInsPart.~p?AssemblerData~?CondID~?u32~?u32:
  push rbp
  mov rbp, rsp
  sub rsp, 0xc
; assembler.qnp:391:24  ->  Assign
  mov rax, rbp
  add rax, 0x18 ; local 'part#0$?CondID'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'rawPart#45$?u32'
  pop rcx
  mov [rax], ecx
; assembler.qnp:392:41  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'rawPart#45$?u32'
  push rax
  mov rax, rbp
  add rax, 0x20 ; local 'mask#0$?u32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  and eax, [rcx]
  push rax
  mov rax, rbp
  add rax, 0x28 ; local 'offset#0$?u32'
  mov rcx, rax
  pop rax
  mov ecx, [rcx]
  shl eax, cl
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'writablePart#46$?u32'
  pop rcx
  mov [rax], ecx
; assembler.qnp:394:35  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 49
  mov rax, [rax]
  mov rcx, 4
  mul rcx
  pop rcx
  add rax, rcx
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff4 ; local 'instr#47$?u32'
  pop rcx
  mov ecx, [rcx]
  mov [rax], ecx
; assembler.qnp:395:11  ->  Assign_Bw_AND
  mov rax, rbp
  add rax, 0x20 ; local 'mask#0$?u32'
  push rax
  mov rax, rbp
  add rax, 0x28 ; local 'offset#0$?u32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  mov ecx, [rcx]
  shl eax, cl
  not eax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff4 ; local 'instr#47$?u32'
  pop rcx
  push rax
  mov eax, [rax]
  and eax, ecx
  mov ecx, eax
  pop rax
  mov [rax], ecx
; assembler.qnp:396:11  ->  Assign_Bw_OR
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'writablePart#46$?u32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff4 ; local 'instr#47$?u32'
  pop rcx
  push rax
  mov eax, [rax]
  or eax, [rcx]
  mov ecx, eax
  pop rax
  mov [rax], ecx
; assembler.qnp:397:45  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff4 ; local 'instr#47$?u32'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 49
  mov rax, [rax]
  mov rcx, 4
  mul rcx
  pop rcx
  add rax, rcx
  pop rcx
  mov ecx, [rcx]
  mov [rax], ecx
; :0:0  ->  Return
  mov rsp, rbp
  pop rbp
  ret
writeInsPart.~p?AssemblerData~?OpCode~?u32~?u32:
  push rbp
  mov rbp, rsp
  sub rsp, 0xc
; assembler.qnp:391:24  ->  Assign
  mov rax, rbp
  add rax, 0x18 ; local 'part#0$?OpCode'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'rawPart#39$?u32'
  pop rcx
  mov [rax], ecx
; assembler.qnp:392:41  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'rawPart#39$?u32'
  push rax
  mov rax, rbp
  add rax, 0x20 ; local 'mask#0$?u32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  and eax, [rcx]
  push rax
  mov rax, rbp
  add rax, 0x28 ; local 'offset#0$?u32'
  mov rcx, rax
  pop rax
  mov ecx, [rcx]
  shl eax, cl
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'writablePart#40$?u32'
  pop rcx
  mov [rax], ecx
; assembler.qnp:394:35  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 49
  mov rax, [rax]
  mov rcx, 4
  mul rcx
  pop rcx
  add rax, rcx
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff4 ; local 'instr#41$?u32'
  pop rcx
  mov ecx, [rcx]
  mov [rax], ecx
; assembler.qnp:395:11  ->  Assign_Bw_AND
  mov rax, rbp
  add rax, 0x20 ; local 'mask#0$?u32'
  push rax
  mov rax, rbp
  add rax, 0x28 ; local 'offset#0$?u32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  mov ecx, [rcx]
  shl eax, cl
  not eax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff4 ; local 'instr#41$?u32'
  pop rcx
  push rax
  mov eax, [rax]
  and eax, ecx
  mov ecx, eax
  pop rax
  mov [rax], ecx
; assembler.qnp:396:11  ->  Assign_Bw_OR
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'writablePart#40$?u32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff4 ; local 'instr#41$?u32'
  pop rcx
  push rax
  mov eax, [rax]
  or eax, [rcx]
  mov ecx, eax
  pop rax
  mov [rax], ecx
; assembler.qnp:397:45  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff4 ; local 'instr#41$?u32'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 49
  mov rax, [rax]
  mov rcx, 4
  mul rcx
  pop rcx
  add rax, rcx
  pop rcx
  mov ecx, [rcx]
  mov [rax], ecx
; :0:0  ->  Return
  mov rsp, rbp
  pop rbp
  ret
writeInsPart.~p?AssemblerData~?RegID~?u32~?u32:
  push rbp
  mov rbp, rsp
  sub rsp, 0xc
; assembler.qnp:391:24  ->  Assign
  mov rax, rbp
  add rax, 0x18 ; local 'part#0$?RegID'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'rawPart#42$?u32'
  pop rcx
  mov [rax], ecx
; assembler.qnp:392:41  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'rawPart#42$?u32'
  push rax
  mov rax, rbp
  add rax, 0x20 ; local 'mask#0$?u32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  and eax, [rcx]
  push rax
  mov rax, rbp
  add rax, 0x28 ; local 'offset#0$?u32'
  mov rcx, rax
  pop rax
  mov ecx, [rcx]
  shl eax, cl
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'writablePart#43$?u32'
  pop rcx
  mov [rax], ecx
; assembler.qnp:394:35  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 49
  mov rax, [rax]
  mov rcx, 4
  mul rcx
  pop rcx
  add rax, rcx
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff4 ; local 'instr#44$?u32'
  pop rcx
  mov ecx, [rcx]
  mov [rax], ecx
; assembler.qnp:395:11  ->  Assign_Bw_AND
  mov rax, rbp
  add rax, 0x20 ; local 'mask#0$?u32'
  push rax
  mov rax, rbp
  add rax, 0x28 ; local 'offset#0$?u32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  mov ecx, [rcx]
  shl eax, cl
  not eax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff4 ; local 'instr#44$?u32'
  pop rcx
  push rax
  mov eax, [rax]
  and eax, ecx
  mov ecx, eax
  pop rax
  mov [rax], ecx
; assembler.qnp:396:11  ->  Assign_Bw_OR
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'writablePart#43$?u32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff4 ; local 'instr#44$?u32'
  pop rcx
  push rax
  mov eax, [rax]
  or eax, [rcx]
  mov ecx, eax
  pop rax
  mov [rax], ecx
; assembler.qnp:397:45  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff4 ; local 'instr#44$?u32'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 49
  mov rax, [rax]
  mov rcx, 4
  mul rcx
  pop rcx
  add rax, rcx
  pop rcx
  mov ecx, [rcx]
  mov [rax], ecx
; :0:0  ->  Return
  mov rsp, rbp
  pop rbp
  ret
writeInsPart.~p?AssemblerData~?i32~?u32~?u32:
  push rbp
  mov rbp, rsp
  sub rsp, 0xc
; assembler.qnp:391:24  ->  Assign
  mov rax, rbp
  add rax, 0x18 ; local 'part#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'rawPart#48$?u32'
  pop rcx
  mov [rax], ecx
; assembler.qnp:392:41  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffffc ; local 'rawPart#48$?u32'
  push rax
  mov rax, rbp
  add rax, 0x20 ; local 'mask#0$?u32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  and eax, [rcx]
  push rax
  mov rax, rbp
  add rax, 0x28 ; local 'offset#0$?u32'
  mov rcx, rax
  pop rax
  mov ecx, [rcx]
  shl eax, cl
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'writablePart#49$?u32'
  pop rcx
  mov [rax], ecx
; assembler.qnp:394:35  ->  Assign
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 49
  mov rax, [rax]
  mov rcx, 4
  mul rcx
  pop rcx
  add rax, rcx
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff4 ; local 'instr#50$?u32'
  pop rcx
  mov ecx, [rcx]
  mov [rax], ecx
; assembler.qnp:395:11  ->  Assign_Bw_AND
  mov rax, rbp
  add rax, 0x20 ; local 'mask#0$?u32'
  push rax
  mov rax, rbp
  add rax, 0x28 ; local 'offset#0$?u32'
  mov rcx, rax
  pop rax
  mov eax, [rax]
  mov ecx, [rcx]
  shl eax, cl
  not eax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff4 ; local 'instr#50$?u32'
  pop rcx
  push rax
  mov eax, [rax]
  and eax, ecx
  mov ecx, eax
  pop rax
  mov [rax], ecx
; assembler.qnp:396:11  ->  Assign_Bw_OR
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'writablePart#49$?u32'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff4 ; local 'instr#50$?u32'
  pop rcx
  push rax
  mov eax, [rax]
  or eax, [rcx]
  mov ecx, eax
  pop rax
  mov [rax], ecx
; assembler.qnp:397:45  ->  Assign
  mov rax, rbp
  add rax, 0xfffffffffffffff4 ; local 'instr#50$?u32'
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 57
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  add rax, 49
  mov rax, [rax]
  mov rcx, 4
  mul rcx
  pop rcx
  add rax, rcx
  pop rcx
  mov ecx, [rcx]
  mov [rax], ecx
; :0:0  ->  Return
  mov rsp, rbp
  pop rbp
  ret
writeInsRelativeJump.~p?AssemblerData~?i32:
  push rbp
  mov rbp, rsp
; assembler.qnp:471:17  ->  FunctionCall
  mov rax, 0x1f
  push rax
  mov rax, 0x1
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'rj#0$?i32'
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsPart.~p?AssemblerData~?i32~?u32~?u32
  call rax
  add rsp, 0x20
; :0:0  ->  Return
  mov rsp, rbp
  pop rbp
  ret
writeInsSourceReg1.~p?AssemblerData~?RegID:
  push rbp
  mov rbp, rsp
; assembler.qnp:417:17  ->  FunctionCall
  mov rax, 0xa
  push rax
  mov rax, 0xf
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'rid#0$?RegID'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsPart.~p?AssemblerData~?RegID~?u32~?u32
  call rax
  add rsp, 0x20
; :0:0  ->  Return
  mov rsp, rbp
  pop rbp
  ret
writeInsSourceReg2.~p?AssemblerData~?RegID:
  push rbp
  mov rbp, rsp
; assembler.qnp:420:17  ->  FunctionCall
  mov rax, 0xe
  push rax
  mov rax, 0xf
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'rid#0$?RegID'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x10 ; local 'data#0$p?AssemblerData'
  mov rax, [rax]
  push rax
  mov rax, writeInsPart.~p?AssemblerData~?RegID~?u32~?u32
  call rax
  add rsp, 0x20
; :0:0  ->  Return
  mov rsp, rbp
  pop rbp
  ret
writeToFile.~pc?std.String~pc?u32~?u64~?OutputFormat:
  push rbp
  mov rbp, rsp
  sub rsp, 0x58
; filewriter.qnp:52:20  ->  Assign
  sub rsp, 8
  mov rax, __#str_79
  push rax
  sub rsp, 8
  mov rax, rbp
  add rax, 0x10 ; local 'filename#0$pc?std.String'
  mov rax, [rax]
  push rax
  mov rax, std.String.raw.~pc?std.String
  call rax
  add rsp, 0x8
  pop rax
  push rax
  mov rax, 0
  push rax
  mov rax, std.__new.~p?std.File~pc?u8~pc?u8
  call rax
  add rsp, 0x18
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'file#75$p?std.File'
  pop rcx
  mov [rax], rcx
; filewriter.qnp:53:5  ->  If_Clause
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'file#75$p?std.File'
  push rax
  mov rax, 0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#1023_IF_NEXT
; filewriter.qnp:54:9  ->  Return
  sub rsp, 8
  mov rax, __#str_80
  push rax
  mov rax, handleMsgError.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x30], al
  mov rsp, rbp
  pop rbp
  ret
__#1023_IF_NEXT:
__#1024_IF_END:
; filewriter.qnp:56:18  ->  Assign
  mov rax, 0x0
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'i#76$?u64'
  pop rcx
  mov [rax], rcx
; filewriter.qnp:58:5  ->  While_Loop
__#1026_WHILE_BEGIN:
__#1028_LOOP_CONTINUE:
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'i#76$?u64'
  push rax
  mov rax, rbp
  add rax, 0x20 ; local 'nInstructions#0$?u64'
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, [rcx]
  setl al
  cmp al, 0
  je __#1025_WHILE_END
; filewriter.qnp:59:46  ->  Assign
  sub rsp, 8
  mov rax, rbp
  add rax, 0x28 ; local 'outputFormat#0$?OutputFormat'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0x18 ; local 'instructions#0$pc?u32'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'i#76$?u64'
  mov rax, [rax]
  mov rcx, 4
  mul rcx
  pop rcx
  add rax, rcx
  mov eax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb0 ; local 'buffer#77$a64?u8'
  push rax
  mov rax, genInstructionBuffer.~p?u8~?u32~?OutputFormat
  call rax
  add rsp, 0x18
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffa8 ; local 'bufferSize#78$?u64'
  pop rcx
  mov [rax], rcx
; filewriter.qnp:60:9  ->  If_Clause
  mov rax, rbp
  add rax, 0xffffffffffffffa8 ; local 'bufferSize#78$?u64'
  push rax
  mov rax, 0x0
  mov rcx, rax
  pop rax
  mov rax, [rax]
  cmp rax, rcx
  sete al
  cmp al, 0
  je __#1029_IF_NEXT
; filewriter.qnp:61:23  ->  FunctionCall
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'file#75$p?std.File'
  mov rax, [rax]
  push rax
  mov rax, std.delete.~p?std.File
  call rax
  add rsp, 0x8
; filewriter.qnp:62:13  ->  Return
  mov al, 0
  mov [rbp + 0x30], al
  mov rsp, rbp
  pop rbp
  ret
__#1029_IF_NEXT:
__#1030_IF_END:
; filewriter.qnp:64:9  ->  If_Clause
  sub rsp, 8
  mov rax, rbp
  add rax, 0xffffffffffffffa8 ; local 'bufferSize#78$?u64'
  mov rax, [rax]
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffb0 ; local 'buffer#77$a64?u8'
  push rax
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'file#75$p?std.File'
  mov rax, [rax]
  push rax
  mov rax, std.File.write.~p?std.File~pc?void~?u64
  call rax
  add rsp, 0x18
  pop rax
  push rax
  mov rax, rbp
  add rax, 0xffffffffffffffa8 ; local 'bufferSize#78$?u64'
  mov rcx, rax
  pop rax
  cmp rax, [rcx]
  setne al
  cmp al, 0
  je __#1031_IF_NEXT
; filewriter.qnp:65:23  ->  FunctionCall
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'file#75$p?std.File'
  mov rax, [rax]
  push rax
  mov rax, std.delete.~p?std.File
  call rax
  add rsp, 0x8
; filewriter.qnp:66:13  ->  Return
  sub rsp, 8
  mov rax, __#str_81
  push rax
  mov rax, handleMsgError.~pc?u8
  call rax
  add rsp, 0x8
  pop rax
  mov [rbp + 0x30], al
  mov rsp, rbp
  pop rbp
  ret
__#1031_IF_NEXT:
__#1032_IF_END:
; filewriter.qnp:67:9  ->  Prefix_Increment
  mov rax, rbp
  add rax, 0xfffffffffffffff0 ; local 'i#76$?u64'
  push rax
  mov rax, [rax]
  inc rax
  mov rcx, rax
  pop rax
  mov [rax], rcx
  jmp __#1026_WHILE_BEGIN
__#1027_LOOP_BREAK:
__#1025_WHILE_END:
; filewriter.qnp:69:15  ->  FunctionCall
  mov rax, rbp
  add rax, 0xfffffffffffffff8 ; local 'file#75$p?std.File'
  mov rax, [rax]
  push rax
  mov rax, std.delete.~p?std.File
  call rax
  add rsp, 0x8
; filewriter.qnp:71:5  ->  Return
  mov al, 1
  mov [rbp + 0x30], al
  mov rsp, rbp
  pop rbp
  ret
section .bss
  __#argc: resq 1
  __#argv: resq 1
  __#envp: resq 1
  arg#92$p?std.String: resb 8		; QISM.qnp:127:13
  addAnnotations#88$?bool: resb 1		; QISM.qnp:119:26
  argc#90$?u64: resb 8		; QISM.qnp:122:15
  argi#91$?u64: resb 8		; QISM.qnp:125:10
  argv#89$pcp?u8: resb 8		; QISM.qnp:121:21
  codeText#93$p?std.String: resb 8		; QISM.qnp:192:14
  inputFilename#84$p?std.String: resb 8		; QISM.qnp:115:32
  instructions#95$p?u32: resb 8		; QISM.qnp:200:24
  nInstructions#94$?u64: resb 8		; QISM.qnp:199:23
  outputFilename#85$p?std.String: resb 8		; QISM.qnp:116:33
  outputFormat#86$?OutputFormat: resb 8		; QISM.qnp:117:32
  __memBlocks#122$p?std.__MemBlockHeader: resb 8		; ../.install/qinp/stdlib/platform/linux/memory.qnp:61:37
  __#stck_1#100$?bool: resb 1		; ../.install/qinp/stdlib/error.qnp:65:31
  initialized#99$?bool: resb 1		; ../.install/qinp/stdlib/error.qnp:65:29
  strings#101$a6pc?u8: resb 48		; ../.install/qinp/stdlib/error.qnp:66:48
  __lastErrorID#1$?std.error.ID: resb 8		; ../.install/qinp/stdlib/error.qnp:18:25
  __#stck_0#97$?bool: resb 1		; ../.install/qinp/stdlib/error.qnp:53:55
  errorStrings#96$ppc?u8: resb 8		; ../.install/qinp/stdlib/error.qnp:53:36
  buffer#172$a32?u8: resb 32		; ../.install/qinp/stdlib/string.qnp:530:24
  __#stck_3#174$?bool: resb 1		; ../.install/qinp/stdlib/string.qnp:538:35
  __baseCharsLower#173$cpc?u8: resb 8		; ../.install/qinp/stdlib/string.qnp:538:33
  __#stck_2#130$?bool: resb 1		; ../.install/qinp/stdlib/stdio.qnp:205:29
  buf#128$a1024?u8: resb 1024		; ../.install/qinp/stdlib/stdio.qnp:204:35
  bufFillSize#129$?u64: resb 8		; ../.install/qinp/stdlib/stdio.qnp:205:27
  __#stck_4#178$?bool: resb 1		; ../.install/qinp/stdlib/string.qnp:563:35
  __baseCharsLower#177$cpc?u8: resb 8		; ../.install/qinp/stdlib/string.qnp:563:33
  verbose#87$?bool: resb 1		; QISM.qnp:118:19
section .data
  __#str_129: db 0
  __#str_91: db 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,100,101,102,97,117,108,116,58,32,60,105,110,112,117,116,95,102,105,108,101,62,46,98,105,110,0
  __#str_94: db 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,100,101,102,97,117,108,116,58,32,98,105,110,0
  __#str_95: db 32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,111,112,116,105,111,110,115,58,32,98,105,110,116,120,116,44,32,104,101,120,116,120,116,0
  __#str_93: db 32,32,45,102,61,60,102,111,114,109,97,116,62,32,32,32,32,32,32,32,32,32,111,117,116,112,117,116,32,102,111,114,109,97,116,0
  __#str_89: db 32,32,45,104,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,115,104,111,119,32,116,104,105,115,32,104,101,108,112,32,109,101,115,115,97,103,101,32,97,110,100,32,101,120,105,116,0
  __#str_90: db 32,32,45,111,61,60,111,117,116,112,117,116,95,102,105,108,101,62,32,32,32,32,111,117,116,112,117,116,32,102,105,108,101,32,110,97,109,101,0
  __#str_92: db 32,32,45,118,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,32,118,101,114,98,111,115,101,32,109,111,100,101,0
  __#str_110: db 32,32,73,110,112,117,116,32,102,105,108,101,58,32,32,32,32,37,0
  __#str_111: db 32,32,79,117,116,112,117,116,32,102,105,108,101,58,32,32,32,37,0
  __#str_112: db 32,32,79,117,116,112,117,116,32,102,111,114,109,97,116,58,32,37,32,40,37,41,0
  __#str_113: db 32,32,86,101,114,98,111,115,101,58,32,32,32,32,32,32,32,37,0
  __#str_53: db 40,0
  __#str_68: db 40,105,110,116,101,114,110,97,108,41,58,32,105,110,115,116,114,117,99,116,105,111,110,32,116,121,112,101,32,110,111,116,32,105,109,112,108,101,109,101,110,116,101,100,33,0
  __#str_24: db 40,105,110,116,101,114,110,97,108,41,58,32,117,110,107,110,111,119,110,32,111,112,99,111,100,101,33,0
  __#str_58: db 41,0
  __#str_104: db 45,97,0
  __#str_99: db 45,102,61,0
  __#str_100: db 45,102,61,98,105,110,0
  __#str_101: db 45,102,61,98,105,110,116,120,116,0
  __#str_102: db 45,102,61,104,101,120,116,120,116,0
  __#str_96: db 45,104,0
  __#str_97: db 45,111,61,0
  __#str_98: db 45,118,0
  __#str_41: db 46,0
  __#str_108: db 46,98,105,110,0
  __#str_57: db 48,0
  __#str_130: db 48,49,50,51,52,53,54,55,56,57,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,0
  __#str_56: db 48,98,0
  __#str_55: db 48,120,0
  __#str_47: db 58,0
  __#str_71: db 65,108,108,111,99,97,116,105,110,103,32,37,32,98,121,116,101,115,32,111,102,32,105,110,115,116,114,117,99,116,105,111,110,32,109,101,109,111,114,121,46,46,46,0
  __#str_115: db 65,115,115,101,109,98,108,105,110,103,46,46,46,0
  __#str_117: db 67,108,101,97,110,105,110,103,32,117,112,46,46,46,0
  __#str_85: db 67,111,117,108,100,32,110,111,116,32,97,108,108,111,99,97,116,101,32,109,101,109,111,114,121,32,102,111,114,32,102,105,108,101,32,114,101,97,100,105,110,103,33,0
  __#str_84: db 67,111,117,108,100,32,110,111,116,32,103,101,116,32,102,105,108,101,32,115,105,122,101,33,0
  __#str_83: db 67,111,117,108,100,32,110,111,116,32,111,112,101,110,32,102,105,108,101,32,102,111,114,32,114,101,97,100,105,110,103,33,0
  __#str_80: db 67,111,117,108,100,32,110,111,116,32,111,112,101,110,32,111,117,116,112,117,116,32,102,105,108,101,32,102,111,114,32,119,114,105,116,105,110,103,33,0
  __#str_86: db 67,111,117,108,100,32,110,111,116,32,114,101,97,100,32,102,105,108,101,33,0
  __#str_81: db 67,111,117,108,100,32,110,111,116,32,119,114,105,116,101,32,116,111,32,111,117,116,112,117,116,32,102,105,108,101,33,0
  __#str_118: db 68,111,110,101,33,0
  __#str_51: db 69,120,112,101,99,116,101,100,32,119,104,105,116,101,115,112,97,99,101,32,98,101,102,111,114,101,32,114,101,103,105,115,116,101,114,32,110,97,109,101,33,0
  __#str_78: db 73,110,118,97,108,105,100,32,111,117,116,112,117,116,32,102,111,114,109,97,116,33,0
  __#str_88: db 79,112,116,105,111,110,115,58,0
  __#str_114: db 82,101,97,100,105,110,103,32,105,110,112,117,116,32,102,105,108,101,46,46,46,0
  __#str_109: db 83,101,108,101,99,116,101,100,32,111,112,116,105,111,110,115,58,0
  __#str_87: db 85,115,97,103,101,58,32,113,105,115,109,32,91,111,112,116,105,111,110,115,42,93,32,60,105,110,112,117,116,95,102,105,108,101,62,0
  __#str_116: db 87,114,105,116,105,110,103,32,111,117,116,112,117,116,32,102,105,108,101,46,46,46,0
  __#str_2: db 97,100,100,0
  __#str_4: db 97,110,100,0
  __#str_74: db 98,105,110,0
  __#str_75: db 98,105,110,116,120,116,0
  __#str_28: db 98,112,0
  __#str_42: db 101,110,116,114,121,0
  __#str_0: db 101,114,114,111,114,58,32,37,0
  __#str_65: db 101,114,114,111,114,58,32,37,58,37,58,37,58,32,0
  __#str_1: db 101,114,114,111,114,58,32,37,58,37,58,37,58,32,37,0
  __#str_103: db 101,114,114,111,114,58,32,105,110,118,97,108,105,100,32,111,117,116,112,117,116,32,102,111,114,109,97,116,33,0
  __#str_107: db 101,114,114,111,114,58,32,110,111,32,105,110,112,117,116,32,102,105,108,101,33,0
  __#str_106: db 101,114,114,111,114,58,32,116,111,111,32,109,97,110,121,32,97,114,103,117,109,101,110,116,115,33,0
  __#str_105: db 101,114,114,111,114,58,32,117,110,114,101,99,111,103,110,105,122,101,100,32,111,112,116,105,111,110,33,0
  __#str_59: db 101,120,112,101,99,116,101,100,32,39,41,39,32,97,102,116,101,114,32,111,102,102,115,101,116,33,0
  __#str_48: db 101,120,112,101,99,116,101,100,32,39,58,39,32,97,102,116,101,114,32,39,58,39,33,0
  __#str_43: db 101,120,112,101,99,116,101,100,32,39,101,110,116,114,121,39,32,97,102,116,101,114,32,39,46,39,33,0
  __#str_70: db 101,120,112,101,99,116,101,100,32,39,126,39,32,97,102,116,101,114,32,39,126,39,33,0
  __#str_45: db 101,120,112,101,99,116,101,100,32,101,110,116,114,121,112,111,105,110,116,32,110,97,109,101,33,0
  __#str_49: db 101,120,112,101,99,116,101,100,32,108,97,98,101,108,32,110,97,109,101,33,0
  __#str_46: db 101,120,112,101,99,116,101,100,32,110,101,119,108,105,110,101,32,97,102,116,101,114,32,101,110,116,114,121,112,111,105,110,116,32,110,97,109,101,33,0
  __#str_50: db 101,120,112,101,99,116,101,100,32,110,101,119,108,105,110,101,32,97,102,116,101,114,32,108,97,98,101,108,32,110,97,109,101,33,0
  __#str_52: db 101,120,112,101,99,116,101,100,32,114,101,103,105,115,116,101,114,32,110,97,109,101,33,0
  __#str_44: db 101,120,112,101,99,116,101,100,32,119,104,105,116,101,115,112,97,99,101,32,97,102,116,101,114,32,39,46,101,110,116,114,121,39,33,0
  __#str_72: db 102,97,105,108,101,100,32,116,111,32,97,108,108,111,99,97,116,101,32,105,110,115,116,114,117,99,116,105,111,110,32,109,101,109,111,114,121,0
  __#str_128: db 102,97,108,115,101,0
  __#str_26: db 103,112,0
  __#str_76: db 104,101,120,116,120,116,0
  __#str_67: db 105,109,109,101,100,105,97,116,101,32,118,97,108,117,101,32,37,32,105,115,32,111,117,116,32,111,102,32,114,97,110,103,101,32,40,37,32,116,111,32,37,41,10,0
  __#str_54: db 105,110,115,116,114,117,99,116,105,111,110,115,32,109,97,121,32,110,111,116,32,104,97,118,101,32,109,111,114,101,32,116,104,97,110,32,111,110,101,32,111,102,102,115,101,116,32,115,112,101,99,105,102,105,101,100,33,0
  __#str_11: db 106,103,101,0
  __#str_9: db 106,103,122,0
  __#str_12: db 106,108,101,0
  __#str_10: db 106,108,122,0
  __#str_8: db 106,110,122,0
  __#str_17: db 106,114,103,101,0
  __#str_15: db 106,114,103,122,0
  __#str_18: db 106,114,108,101,0
  __#str_16: db 106,114,108,122,0
  __#str_14: db 106,114,110,122,0
  __#str_13: db 106,114,122,0
  __#str_7: db 106,122,0
  __#str_20: db 108,100,0
  __#str_23: db 108,105,0
  __#str_22: db 108,108,105,0
  __#str_63: db 108,111,110,103,0
  __#str_21: db 108,117,105,0
  __#str_61: db 110,111,114,109,97,108,0
  __#str_66: db 111,102,102,115,101,116,32,37,32,105,115,32,111,117,116,32,111,102,32,114,97,110,103,101,32,102,111,114,32,111,102,102,115,101,116,32,116,121,112,101,32,39,37,39,33,32,40,77,105,110,58,32,37,44,32,77,97,120,58,32,37,41,0
  __#str_5: db 111,114,0
  __#str_82: db 114,0
  __#str_30: db 114,48,0
  __#str_31: db 114,49,0
  __#str_40: db 114,49,48,0
  __#str_32: db 114,50,0
  __#str_33: db 114,51,0
  __#str_34: db 114,52,0
  __#str_35: db 114,53,0
  __#str_36: db 114,54,0
  __#str_37: db 114,55,0
  __#str_38: db 114,56,0
  __#str_39: db 114,57,0
  __#str_29: db 114,97,0
  __#str_134: db 114,119,0
  __#str_62: db 115,104,111,114,116,0
  __#str_27: db 115,112,0
  __#str_19: db 115,116,0
  __#str_3: db 115,117,98,0
  __#str_127: db 116,114,117,101,0
  __#str_73: db 117,110,101,120,112,101,99,116,101,100,32,99,104,97,114,97,99,116,101,114,33,0
  __#str_77: db 117,110,107,110,111,119,110,0
  __#str_60: db 117,110,107,110,111,119,110,32,99,111,110,100,105,116,105,111,110,33,0
  __#str_64: db 117,110,107,110,111,119,110,32,111,102,102,115,101,116,32,116,121,112,101,32,37,33,0
  __#str_79: db 119,0
  __#str_6: db 120,111,114,0
  __#str_25: db 122,101,114,111,0
  __#str_69: db 126,0
