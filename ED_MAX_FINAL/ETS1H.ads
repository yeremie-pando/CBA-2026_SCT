# CTCT ADS Template

GNIVEIS

State size (State set will be (0,1....,size-1)):
# <-- Enter state size, in range 0 to 2000000, on line below.
2

Marker states:
# <-- Enter marker states, one per line.
0

Vocal states:
# <-- If no vocal states, leave line blank.


Transitions:
# <-- Enter transition triple, one per line.
# TRANSIÇÕES (Pares = Nao-Controlaveis):
# 0:L2_Underflow, 2:L2_u_LO, 4:L2_u_SP, 6:L2_u_HI, 8:L2_u_HI_HI, 10:L2_Overflow, 12:L2_d_HI, 14:L2_d_SP, 16:L2_d_LO, 18:L2_d_LO_LO, 20:Stop, 50:L1_u_SAFE, 52:L1_u_HI_HI, 54:L1_d_SAFE, 56:L1_d_LO, 60:T1_u_HI_HI, 62:T1_d_SAFE
# TRANSIÇÕES (Impares = Controlaveis):
# 21:Start, 31:P_on, 33:P_off, 41:V_Close, 43:V_Open, 45:V_PID, 71:H_ContT1, 73:H_ContT2, 75:H_Disable

# Transicoes do Estado 0 (T1_SAFE)
0 60 1
0 71 0
0 73 0

# Transicoes do Estado 1 (T1_HI_HI)
1 62 0

# Fim