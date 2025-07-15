import numpy as np
import matplotlib.pyplot as plt
from scipy import signal

# Filter Parameters
def get_tf(w0, Q=10, H0=1):
    
    
    den_scipy = [1, w0/Q, w0**2] # This is s^2 + (w0/Q)s + w0^2, which we established matches the image's denominator after scaling.

    # Transfer functions based directly on Table 4.1 after multiplying top and bottom by w0^2
    # This ensures the denominator in scipy's TransferFunction is consistent and matches the form s^2 + (w0/Q)s + w0^2

    # LPF: Numerator H0 / (1 + s/(w0*Q) + s^2/w0^2)  -> scaled to (H0 * w0^2) / (s^2 + (w0/Q)s + w0^2)
    tf_lpf = signal.TransferFunction([H0 * w0**2], den_scipy)

    # HPF: Numerator (H0 * s^2/w0^2) / (1 + s/(w0*Q) + s^2/w0^2) -> scaled to (H0 * s^2) / (s^2 + (w0/Q)s + w0^2)
    tf_hpf = signal.TransferFunction([H0, 0, 0], den_scipy) # Numerator: H0 * s^2

    # BPF: Numerator (-H0 * s/w0) / (1 + s/(w0*Q) + s^2/w0^2) -> scaled to (-H0 * w0 * s) / (s^2 + (w0/Q)s + w0^2)
    # Note the negative sign from the image's equation
    tf_bpf = signal.TransferFunction([-H0 * w0, 0], den_scipy) # Numerator: -H0 * w0 * s

    # BSF: Numerator (H0 * (1 + s^2/w0^2)) / (1 + s/(w0*Q) + s^2/w0^2) -> scaled to (H0 * (w0^2 + s^2)) / (s^2 + (w0/Q)s + w0^2)
    tf_bsf = signal.TransferFunction([H0, 0, H0 * w0**2], den_scipy) # Numerator: H0 * s^2 + H0 * w0^2

    return tf_lpf, tf_hpf, tf_bpf, tf_bsf

# Plot frequency response
def plot_frequency_response(systems, labels, w_range, title_suffix):
    plt.figure(figsize=(12, 6))

    # Magnitude
    plt.subplot(2, 1, 1)
    for sys, label in zip(systems, labels):
        w, mag, phase = signal.bode(sys, w_range)
        plt.semilogx(w / (2 * np.pi), mag, label=label) # Convert to Hz
    plt.title(f'Frequency Response (Magnitude) - {title_suffix}')
    plt.xlabel('Frequency (Hz)') # Updated label to Hz
    plt.ylabel('Magnitude (dB)')
    plt.grid(True)
    plt.legend()

    # Phase
    plt.subplot(2, 1, 2)
    for sys, label in zip(systems, labels):
        w, mag, phase = signal.bode(sys, w_range)
        plt.semilogx(w / (2 * np.pi), phase, label=label) # Convert to Hz
    plt.title(f'Frequency Response (Phase) - {title_suffix}')
    plt.xlabel('Frequency (Hz)') # Updated label to Hz
    plt.ylabel('Phase (degrees)')
    plt.grid(True)
    plt.legend()
    plt.tight_layout()
    plt.savefig('frequency_response_1KHz_Q10_from_table.png') # Changed filename for clarity
    plt.show()

# Plot transient response to square wave
def plot_transient_response(systems, labels, t_end, f_input):
    t = np.linspace(0, t_end, 1000)
    u = signal.square(2 * np.pi * f_input * t)

    plt.figure(figsize=(12, 8))
    plt.subplot(2, 1, 1)
    plt.plot(t, u, 'k--', label='Input Square Wave')
    plt.title(f'Square Wave Input at {f_input} Hz') # Updated title
    plt.grid(True)
    plt.legend()

    plt.subplot(2, 1, 2)
    for sys, label in zip(systems, labels):
        t_out, y_out, _ = signal.lsim(sys, U=u, T=t)
        plt.plot(t_out, y_out, label=label)
    plt.title(f'Transient Response to Square Wave Input')
    plt.xlabel('Time (s)')
    plt.ylabel('Output')
    plt.grid(True)
    plt.legend()
    plt.tight_layout()
    plt.savefig('transient_response_1KHz_Q10_from_table.png') # Changed filename for clarity
    plt.show()

# Define corner frequency
f0_khz = 1 # 1 KHz
f0_hz = f0_khz * 1e3 # Convert to Hz (1000 Hz)

# Define Q factor
Q_factor = 10

# Run analysis for the specified frequency
w0 = 2 * np.pi * f0_hz
systems = get_tf(w0, Q=Q_factor)
labels = ['LPF', 'HPF', 'BPF', 'BSF']

# Adjust w_range for plotting. The range covers frequencies around w0.
# Example: from w0/100 to w0*100 in Hz
w_range = np.logspace(np.log10(w0/100), np.log10(w0*100), 1000)

plot_frequency_response(systems, labels, w_range, f'{f0_khz} KHz Corner Frequency (Q={Q_factor})')

# Adjust t_end for transient response.
# For 1 KHz, 1 cycle is 1 millisecond (1e-3 s).
# Let's display 5 cycles for clear visualization.
t_end_val = 5 * (1 / f0_hz) # 5 cycles
plot_transient_response(systems, labels, t_end=t_end_val, f_input=f0_hz)