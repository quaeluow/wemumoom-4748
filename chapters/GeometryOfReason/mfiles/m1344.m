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
# results:
# g1 =  0.65625
# g2 =  0.65278
# h1 =  0.056633
# h2 =  0.071530

# CASE 2
# prior probabilities
## a1=1/3
## a2=7/12
## a3=1/12
# Jeffrey conditioning
## j1=1/2
## j2=7/16
## j3=1/16
# Leitgeb-Pettigrew conditioning
## l1=1/2
## l2=1/2
## l3=0
# results:
# g1 =  0.59115
# g2 =  0.58333
# h1 =  0.056633
# h2 = infty (division by nil)

# quadratic inaccuracy according to LP
g1=a1*(((1-j1)^2)+(j2^2)+(j3^2))+a2*(((j1^2)+((1-j2)^2)+(j3^2)))+a3*((j1^2)+(j2^2)+((1-j3)^2))
g2=a1*(((1-l1)^2)+(l2^2)+(l3^2))+a2*(((l1^2)+((1-l2)^2)+(l3^2)))+a3*((l1^2)+(l2^2)+((1-l3)^2))
# Kullback-Leibler divergence
h1=(a1*(log(a1/j1)))+(a2*(log(a2/j2)))+(a3*(log(a3/j3)))
h2=(a1*(log(a1/l1)))+(a2*(log(a2/l2)))+(a3*(log(a3/l3)))
# Euclidean distance
e1=((1/36)+(1/64)+(1/576))^.5
e2=((1/36)+(1/144)+(1/144))^.5
