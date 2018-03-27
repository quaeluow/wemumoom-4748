# CASE 1
# prior probabilities
a1=1/3
a2=1/2
a3=1/6
# Jeffrey conditioning
j1=1/2
j2=3/8
j3=1/8
# Leitgeb-Pettigrew conditioning
l1=1/2
l2=5/12
l3=1/12

dab=(((a1-l1)^2)+((a2-l2)^2)+((a3-l3)^2))^(1/2)
dac=(((a1-j1)^2)+((a2-j2)^2)+((a3-j3)^2))^(1/2)
klab=(a1*(log(a1/l1)))+(a2*(log(a2/l2)))+(a3*(log(a3/l3)))
klac=(a1*(log(a1/j1)))+(a2*(log(a2/j2)))+(a3*(log(a3/j3)))

