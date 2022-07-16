import os

batch_num = 120

with open('Run_Aso1_0_CPU.py') as f:
    lines = f.readlines()

for block in range(1,batch_num+1):
    for i in range(len(lines)):
        if lines[i].startswith('    seed = '):
            lines[i] = '    seed = '+str(block) + '\n'
    with open('Run_Aso1_0_CPU_'+str(block)+'.py', 'w') as f:
        f.writelines(lines)