#Posterior prediktive sjekker
#For ?? sjekke hvordan modellen passer dataen
#Tolkning:
#Hvis y og y_rep ligger n??rt hverandre, 
#betyr det at modellen klarer ?? gjenskape 
#den faktiske datadistribusjonen.

#1
pp_check(modell_brm)
#M??rk tykk linje (y): 
#Den observerte fordelingen av Utf??rer-verdiene(1-5)

#Lyse linjer (y_rep): 
#Simulerte fordelinger fra modellen(posterior-predikert data)


#---------------------------------------------------------------
#2
pp_check(modell_brm, type = "bars", ndraws = 50)

#Lyse s??yler = 
#faktiske antall barn i hver kategori (Utf??rer)

#M??rke prikker med linjer (y_rep) = 
#gjennomsnitt og usikkerhet fra modellens prediksjoner


#Tolkning:
#Modellen predikerer godt for niv?? 3 og 4
#Litt st??rre avvik for niv?? 1 og 2 
#noe som kan bety at modellen undervurderer de laveste niv??ene
#Men totalt sett f??lger modellen dataen ganske bra.