import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import lsim, TransferFunction

# ----- Filter Parameters -----
f0 = 1e3               # Corner frequency (Hz)
w0 = 2 * np.pi * f0    # Angular frequency (rad/s)
Q = 10                 # Quality factor
H0 = 1                 # Gain

# ----- Frequency Domain Analysis (AC) -----
w = np.logspace(1, 5, 1000)  # Frequency range: 10 Hz to 100 kHz
s = 1j * w

# Common denominator
den = 1 + (s / (w0 * Q)) + (s**2 / w0**2)

# Transfer functions
H_lpf = H0 / den
H_hpf = (H0 * (s**2 / w0**2)) / den
H_bpf = (-H0 * (s / (w0 * Q))) / den
H_bsf = ((1 + (s**2 / w0**2)) * H0) / den

# Convert to dB and degrees
def db(x):
    return 20 * np.log10(np.abs(x))

def deg(x):
    return np.angle(x, deg=True)

# Plot magnitude and phase
plt.figure(figsize=(12, 8))

# Magnitude
plt.subplot(2, 1, 1)
plt.semilogx(w, db(H_lpf), label='LPF')
plt.semilogx(w, db(H_hpf), label='HPF')
plt.semilogx(w, db(H_bpf), label='BPF')
plt.semilogx(w, db(H_bsf), label='BSF')
plt.title('AC Analysis - Magnitude Response')
plt.ylabel('Magnitude (dB)')
plt.grid(True, which='both', linestyle='--')
plt.legend()

# Phase
plt.subplot(2, 1, 2)
plt.semilogx(w, deg(H_lpf), label='LPF')
plt.semilogx(w, deg(H_hpf), label='HPF')
plt.semilogx(w, deg(H_bpf), label='BPF')
plt.semilogx(w, deg(H_bsf), label='BSF')
plt.title('AC Analysis - Phase Response')
plt.xlabel('Frequency (Hz)')
plt.ylabel('Phase (degrees)')
plt.grid(True, which='both', linestyle='--')
plt.legend()

plt.tight_layout()
plt.show()

# ----- Time Domain Analysis (Transient) -----
# Time vector and input signal (1 kHz sine wave)
t = np.linspace(0, 0.01, 1000)  # 10 ms duration
u = np.sin(2 * np.pi * f0 * t)  # 1 kHz sine wave

# Transfer function coefficients for simulation
den_common = [1, w0 / Q, w0**2]
num_lpf = [0, 0, H0 * w0**2]
num_hpf = [H0, 0, 0]
num_bpf = [0, -H0 * w0 / Q, 0]
num_bsf = [H0, 0, H0 * w0**2]

# Define transfer functions
tf_lpf = TransferFunction(num_lpf, den_common)
tf_hpf = TransferFunction(num_hpf, den_common)
tf_bpf = TransferFunction(num_bpf, den_common)
tf_bsf = TransferFunction(num_bsf, den_common)

# Simulate output signals
_, y_lpf, _ = lsim(tf_lpf, u, t)
_, y_hpf, _ = lsim(tf_hpf, u, t)
_, y_bpf, _ = lsim(tf_bpf, u, t)
_, y_bsf, _ = lsim(tf_bsf, u, t)

# Plot time-domain results
plt.figure(figsize=(12, 8))
plt.plot(t * 1000, u, label='Input (1kHz Sine)', linestyle='--', color='gray')
plt.plot(t * 1000, y_lpf, label='LPF Output')
plt.plot(t * 1000, y_hpf, label='HPF Output')
plt.plot(t * 1000, y_bpf, label='BPF Output')
plt.plot(t * 1000, y_bsf, label='BSF Output')
plt.title('Transient Analysis - Time Domain Response')
plt.xlabel('Time (ms)')
plt.ylabel('Amplitude')
plt.grid(True)
plt.legend()
plt.tight_layout()
plt.show()