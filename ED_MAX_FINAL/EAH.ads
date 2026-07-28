# CTCT ADS Template

GNIVEIS

State size (State set will be (0,1....,size-1)):
# <-- Enter state size, in range 0 to 2000000, on line below.
2

Marker states:
# <-- Enter marker states, one per line.
0
1

Vocal states:
# <-- If no vocal states, leave line blank.


Transitions:
# <-- Enter transition triple, one per line.
# TRANSIÇÕES (Pares = Nao-Controlaveis):
# 0:L2_Underflow, 2:L2_u_LO, 4:L2_u_SP, 6:L2_u_HI, 8:L2_u_HI_HI, 10:L2_Overflow, 12:L2_d_HI, 14:L2_d_SP, 16:L2_d_LO, 18:L2_d_LO_LO, 20:Stop, 50:L1_u_SAFE, 52:L1_u_HI_HI, 54:L1_d_SAFE, 56:L1_d_LO, 60:T1_u_HI_HI, 62:T1_d_SAFE
# TRANSIÇÕES (Impares = Controlaveis):
# 21:Start, 31:P_on, 33:P_off, 41:V_Close, 43:V_Open, 45:V_PID, 71:H_ContT1, 73:H_ContT2, 75:H_Disable

# Transicoes do Estado 0 (q0)
0 0 0
0 2 0
0 4 0
0 6 0
0 8 0
0 10 0
0 12 0
0 14 0
0 16 0
0 18 0
0 20 0
0 21 0
0 31 0
0 33 0
0 41 0
0 43 0
0 45 0
0 50 0
0 52 0
0 54 0
0 56 0
0 60 0
0 62 0
0 71 1
0 73 1
0 75 1

# Transicoes do Estado 1 (q1)
1 0 0
1 2 0
1 4 0
1 6 0
1 8 0
1 10 0
1 12 0
1 14 0
1 16 0
1 18 0
1 20 0
1 21 0
1 31 0
1 33 0
1 41 0
1 43 0
1 45 0
1 50 0
1 52 0
1 54 0
1 56 0
1 60 0
1 62 0

# Fim