entrada = map(int, raw_input().split())
dakkar = []
secciones = entrada[0]
motos = entrada[1]
buggies = entrada[2]
def resolverDakkar(dakkar, motos, buggies):
    #minmotos
    #minbuggies
    #for i in minmotos:
        #if dakkar[i][0] < minmotos[i][0]
            #del minmotos[i]
    #for i in minbuggies:
        #if dakkar[i][0] < minbuggies[i][0]
            #del minmotos[i]
    pasadas = motos
    while (motos!=0) and (pasadas!=0):
        for i in range(len(dakkar)):
            
        
    
    
for i in range(secciones):
    tiempos = map(int, raw_input().split())
    dakkar.append(tiempos, i)
for i in range(len(dakkar)):
    bmxTime = dakkar[i][0]
    motoTime = dakkar[i][1]
    buggyTime = dakkar[i][2]
    dakkar[i] = [min(bmxTime - motoTime, bmxTime - buggyTime),min(motoTime - bmxTime, motoTime - buggyTime),min(buggyTime - bmxTime, buggyTime - motoTime)]
resolverDakkar(dakkar, motos, buggies, i)
