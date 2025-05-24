import matplotlib.pyplot as plt
import numpy as np

# (1) SR 래치 회로 타이밍 다이어그램
time = [0.0, 0.5, 1.1, 1.8, 2.4, 3.1, 3.4, 4.1, 4.4, 5.1, 6.4]
Sbar = [0, 1, 0, 1, 1, 1, 0, 1, 1, 1]
Rbar = [1, 1, 1, 1, 0, 1, 1, 1, 0, 1]
Q = [1, 1, 1, 1, 0, 0, 1, 1, 0, 0]
Qbar = [0, 0, 0, 0, 1, 1, 0, 0, 1, 1]
expected_Q = [0] * (len(time) - 1)
expected_Qbar = [1] * (len(time) - 1)

for i in range(len(time) - 1):
    if Sbar[i] == 0 and Rbar[i] == 1:
        expected_Q[i] = 1
        expected_Qbar[i] = 0
    elif Sbar[i] == 1 and Rbar[i] == 0:
        expected_Q[i] = 0
        expected_Qbar[i] = 1
    elif Sbar[i] == 1 and Rbar[i] == 1:
        expected_Q[i] = expected_Q[i - 1]
        expected_Qbar[i] = expected_Qbar[i - 1]
    else:
        assert False, "Undefined state in SR latch: both Sbar and Rbar are 0"

for i in range(len(time) - 1):
    if expected_Q[i] != Q[i]:
        assert False, f"SR latch: Q mismatch at time {time[i]}: expected {expected_Q[i]}, got {Q[i]}"
    if expected_Qbar[i] != Qbar[i]:
        assert False, f"SR latch: Qbar mismatch at time {time[i]}: expected {expected_Qbar[i]}, got {Qbar[i]}"

fig, ax = plt.subplots(figsize=(12, 5))
signals1 = [
    (r"$\overline{S}$", Sbar, "black"),
    (r"$\overline{R}$", Rbar, "black"),
    ("Q", Q, "black"),
    (r"$\overline{Q}$", Qbar, "black"),
]

y_offset = 0
yticks = []
yticklabels = []

for label, signal, color in reversed(signals1):
    if len(signal) == len(time) - 1:
        signal = signal + [signal[-1]]
    ax.step(time, np.array(signal) + y_offset, where="post", linewidth=2, color=color)
    yticks.append(y_offset + 0.5)
    yticklabels.append(label)
    y_offset += 2

for t in time[:-1]:
    ax.axvline(t, color="gray", linestyle="--", linewidth=0.8)

ax.set_ylim(-1, y_offset)
ax.set_xlim(time[0], time[-1])
ax.set_yticks(yticks)
ax.set_yticklabels(yticklabels, fontsize=12)
ax.set_xlabel("time", fontsize=12)
ax.tick_params(axis="x", bottom=False, labelbottom=False)
ax.grid(False)

plt.tight_layout()
plt.show()

# (2), (3) 공통 시간축과 입력 신호 데이터
time_vline = [0.0, 0.4, 1.4, 2.4, 3.4, 4.4, 5.4, 6.4, 6.9]
time = [0.0, 0.4, 0.65, 0.9, 1.4, 1.9, 2.4, 2.55, 2.9, 3.4, 3.6, 3.9, 4.25, 4.4, 4.8, 4.9, 5.4, 5.65, 5.9, 6.4, 6.9]
D = [0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 0, 0]
CLK = [0, 1, 1, 0, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1]

# (2) D-latch 회로 타이밍 다이어그램
Q = [0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 0]
expected_Q = [0] * (len(time) - 1)
for i in range(1, len(time) - 1):
    if CLK[i] == 0:
        expected_Q[i] = expected_Q[i - 1]
    else:
        expected_Q[i] = D[i]

for i in range(len(time) - 1):
    if expected_Q[i] != Q[i]:
        assert False, f"D latch: Q mismatch at time {time[i]}: expected {expected_Q[i]}, got {Q[i]}"

fig, ax = plt.subplots(figsize=(10, 3))
signals2 = [("D", D, "black"), ("CLK", CLK, "black"), ("Q", Q, "black")]

y_offset = 0
yticks = []
yticklabels = []

for label, signal, color in reversed(signals2):
    if len(signal) == len(time) - 1:
        signal = signal + [signal[-1]]
    ax.step(time, np.array(signal) + y_offset, where="post", linewidth=2, color=color)
    yticks.append(y_offset + 0.5)
    yticklabels.append(label)
    y_offset += 2

for t in time_vline[:-1]:
    ax.axvline(t, color="gray", linestyle="--", linewidth=0.8)

ax.set_ylim(-1, y_offset)
ax.set_xlim(time_vline[0], time_vline[-1])
ax.set_yticks(yticks)
ax.set_yticklabels(yticklabels, fontsize=12)
ax.set_xlabel("time", fontsize=12)
ax.tick_params(axis="x", bottom=False, labelbottom=False)
ax.grid(False)

plt.tight_layout()
plt.show()

# (3) D-flip-flop 회로 타이밍 다이어그램
Q = [0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0]
expected_Q = [0] * (len(time) - 1)
for i in range(1, len(time) - 1):
    if CLK[i] == 1 and CLK[i - 1] == 0:
        expected_Q[i] = D[i]
    else:
        expected_Q[i] = expected_Q[i - 1]

for i in range(len(time) - 1):
    if expected_Q[i] != Q[i]:
        assert False, f"D flip-flop: Q mismatch at time {time[i]}: expected {expected_Q[i]}, got {Q[i]}"

fig, ax = plt.subplots(figsize=(10, 3))
signals3 = [("D", D, "black"), ("CLK", CLK, "black"), ("Q", Q, "black")]

y_offset = 0
yticks = []
yticklabels = []

for label, signal, color in reversed(signals3):
    if len(signal) == len(time) - 1:
        signal = signal + [signal[-1]]
    ax.step(time, np.array(signal) + y_offset, where="post", linewidth=2, color=color)
    yticks.append(y_offset + 0.5)
    yticklabels.append(label)
    y_offset += 2

for t in time_vline[:-1]:
    ax.axvline(t, color="gray", linestyle="--", linewidth=0.8)

ax.set_ylim(-1, y_offset)
ax.set_xlim(time_vline[0], time_vline[-1])
ax.set_yticks(yticks)
ax.set_yticklabels(yticklabels, fontsize=12)
ax.set_xlabel("time", fontsize=12)
ax.tick_params(axis="x", bottom=False, labelbottom=False)
ax.grid(False)

plt.tight_layout()
plt.show()