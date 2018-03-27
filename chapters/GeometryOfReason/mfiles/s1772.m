m=[1/3;1/3;1/3];
z=[3/4;1/4;0];
lla=1/8;
llb=5/8;
llc=1/4;
lld=3/4;
p=(1-lla).*m.+(lla.*z)
pl=(1-llb).*m.+(llb.*z)
q=(1-llc).*m.+(llc.*z)
ql=(1-lld).*m.+(lld.*z)
pc=threetwo(p)
plc=threetwo(pl)
qc=threetwo(q)
qlc=threetwo(ql)


