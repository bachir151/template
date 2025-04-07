import openai

with open("fichier.txt", "r") as fichier:
    contenu = fichier.read()
    #print(contenu)
# Remplace "VOTRE_CLE_API" par ta clé API OpenAI
client = openai.OpenAI(api_key="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")

# Prompt simple
prompt = "Analyse le texte suivant et dis 'OK' si le commit est réalisé avec succès et 'ECHEC' sinon :  " + contenu

# Envoi de la requête à l'API
response = client.chat.completions.create(
    model="gpt-3.5-turbo",
    messages=[{"role": "user", "content": prompt}],
    max_tokens=100  # Limite la réponse pour économiser des tokens
)

# Affichage de la réponse
print(response.choices[0].message.content)
