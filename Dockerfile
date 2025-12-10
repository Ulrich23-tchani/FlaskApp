# On part d'une image de base Python
FROM python:3.9-slim

# On définit le dossier de travail dans le conteneur
WORKDIR /app

# On copie les fichiers de notre dossier actuel vers le conteneur
COPY . /app

# On installe les dépendances
RUN pip install -r requirements.txt

# On dit que l'app écoute sur le port 5000
EXPOSE 5000

# La commande pour lancer l'app
CMD ["python", "app.py"]
