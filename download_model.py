# download_model.py
from transformers import AutoTokenizer, AutoModelForSequenceClassification

# Nom du modèle préentraîné
MODEL_NAME = "tabularisai/multilingual-sentiment-analysis"

# Téléchargement du tokenizer
tokenizer = AutoTokenizer.from_pretrained(MODEL_NAME, cache_dir="./model_cache")

# Téléchargement du modèle
model = AutoModelForSequenceClassification.from_pretrained(MODEL_NAME, cache_dir="./model_cache")

print("Modèle téléchargé avec succès dans ./model_cache")
