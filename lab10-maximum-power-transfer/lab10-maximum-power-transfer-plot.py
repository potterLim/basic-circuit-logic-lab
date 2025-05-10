import matplotlib.pyplot as plt

# 실험 데이터: 부하 저항 R2(kΩ)에 따른 전압 및 전력
R2 = [0.5, 1.0, 2.0, 3.0, 4.0, 5.0, 7.5, 10.0]  # kΩ
VR1 = [7.57, 6.46, 5.22, 4.21, 3.66, 3.14, 2.39, 1.91]  # V
VR2 = [1.46, 2.55, 3.80, 4.79, 5.35, 5.88, 6.62, 7.11]  # V
P1 = [21.53, 15.69, 10.25, 6.67, 5.03, 3.71, 2.14, 1.38]  # mW
P2 = [4.27, 6.00, 7.38, 7.64, 7.29, 6.76, 5.88, 5.05]    # mW

# (1) VR1과 VR2를 R2에 대해 하나의 그래프로 출력
plt.figure(figsize=(10, 5))
plt.plot(R2, VR1, marker='o', label='$V_{R1}$ (V)')
plt.plot(R2, VR2, marker='s', label='$V_{R2}$ (V)')
plt.title('$V_{R1}$ and $V_{R2}$ vs $R_2$')
plt.xlabel('Resistance $R_2$ (kΩ)')
plt.ylabel('Voltage (V)')
plt.xticks(R2)
plt.grid(True)
plt.legend()
plt.tight_layout()
plt.show()

# (2) P1과 P2를 R2에 대해 하나의 그래프로 출력
plt.figure(figsize=(10, 5))
plt.plot(R2, P1, marker='o', label='$P_1$ (mW)')
plt.plot(R2, P2, marker='s', label='$P_2$ (mW)')
plt.title('$P_1$ and $P_2$ vs $R_2$')
plt.xlabel('Resistance $R_2$ (kΩ)')
plt.ylabel('Power (mW)')
plt.xticks(R2)
plt.grid(True)
plt.legend()
plt.tight_layout()
plt.show()
