# 회로 저항 값 및 전압원
R1 = 180      # 왼쪽 상단 저항
R2 = 390      # 오른쪽 상단 저항
R3 = 680      # 아래쪽 저항
V_source = 9  # 전원 전압 (V1)

# (a) RL 제거 상태에서 A-B 단자 전압 (V_oc)
V_oc = round(R3 / (R1 + R3) * V_source, 2)

# (b) 전압원을 단락시킨 상태에서의 Thevenin 등가 저항 (R_th)
R_th = round((R1 * R3) / (R1 + R3) + R2, 2)

# (c) RL = 150Ω 연결 시 A-B 단자 전압 (V_ab)
R_l = 150
V_ab = round(R_l / (R_th + R_l) * V_oc, 2)

# 결과 출력
print(f"V_oc: {V_oc}V")
print(f"R_th: {R_th:.2f}Ω")
print(f"V_ab: {V_ab:.2f}V")