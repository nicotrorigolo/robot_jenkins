import os
from time import sleep

print("hello world")

nom_du_fichier = "sup_dossier"

os.mkdir(nom_du_fichier)

print("Creation", nom_du_fichier)

sleep(5)

os.rmdir(nom_du_fichier)

print("fin du script")

