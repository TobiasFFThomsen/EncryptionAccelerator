# 17^2 mod 33 on montgomery form

a = 17
b = 18
c = 19
n = 37
# We compute c = a*b mod n by converting to montgomery form. We choose R > n
R = 64
R_inverse = 11

result_expected_1 = a * b % n
print("a*b mod n: ", result_expected_1)

# For 3 case multiplications we get
# c = a*b*c mod n
result_expected_2 = a * b * c % n
print("a*b*c mod n: ", result_expected_2)

# Now with the Montgomery form and Redc algorithm
# Compute residues
a_resid = a*R % n
b_resid = b*R % n
c_resid = c*R % n

print("a-residual: ", a_resid)
print("b-residual: ", b_resid)
print("c-residual: ", c_resid)

naive_expected = ((a_resid % n) * (b_resid % n) * R_inverse) % n * 11 % n
print("a*b mod n (Montgomery): ", naive_expected)

print()
k = (64*11 - 1) / n
print("k: ", k)
print("Redc algorithm:")
print("Redc(T) computes TR^-1 mod n")
def Redc(T, R, k, n):
    # Given inputs:
    #   T = a_bar * b_bar Redc
    #   n
    # Redc(T, n) outputs c_bar
    m = (T % R)*k % R
    t = (T + m*n)/R
    if t >= n:
        return t - n
    else:
        return t

print(Redc(Redc(a_resid*b_resid, R, k, n) * c_resid, R, k, n) * R_inverse % n)