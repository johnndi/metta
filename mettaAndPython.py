from hyperon import MeTTa
metta = MeTTa()


print(metta.run("!(hello-world)"))
result = metta.run("!(hello-world)")
print(result)


pattern = metta.parse_single('(parent $x bob)')
print(metta.space().query(pattern))



# simple python code to impliment and query family relationship it should 
# filter impliment using recursive
# count function