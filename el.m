
# Visualising Electricity Usage

# Task 1
# Load the file Cchord.mat.
# Create a variable named n that contains the number of elements in y
# Then use n to create an evenly-spaced vector t that starts at 0, ends at n-1, and has elements that are spaced by 1

load Cchord.mat
n = numel(y)
t = 0:n-1

# Task 2
# Suitably plot y against t.
t = t/fs
plot(t,y)

# Task 3
# Create a variable named yfft that contains the absolute value of the discrete Fourier transform of y
yfft = abs(fft(y))

# Task 4
f = 0:n-1

# Task 5
# Multiply f with fs/n. Assign the output to the same variable f.
# Plot yfft against f using the x-limits 0 and 1000.
f = f*fs/n
plot(f,yfft)
xlim([0 1000])
title("Frequency Distribution")
ylabel("FFT Values")
xlabel("Frequencies")
