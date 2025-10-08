from fastapi import FastAPI
from pydantic import BaseModel
from model import predict_sentiment

app = FastAPI(title="Sentiment Analysis API")

class TextInput(BaseModel):
    text: str

@app.post("/sentiment")
def predict(input: TextInput):
    sentiment = predict_sentiment([input.text])[0]
    return {"sentiment": sentiment}
