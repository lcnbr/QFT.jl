using QFT.NickelIndex
import QFT.NickelIndex: edges,vedges,ranges,vertexneighbors,root,edgemeta


n=SimpleNickel("|i.3.4|o.i.o.3.4 ||e|")
using TypedTables
EdgeMetaNickel(n,Table(p=["p₁(μ₁)", "p₂(μ₂)", "M0", "M0", "p₃(μ₃)", "p₄(μ₄)"]))
ranges(n)
n  =MetaNickel("|e.3.4|e.3.4|e|e| E= e:|e.3.4|e.3.4|e|e| f:|e.3.4|e.3.4|e|e| V= v:|1|3|2|4|",(Symbol,Symbol),(Int,))

edges(n)[e.match for e in eachmatch(r"([\|]+)","|i.3.4|o.i.o.3.4 ||e"))]

vedges(n)
ranges(n)
root(n)