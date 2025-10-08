# 🧠 Multilingual Sentiment Analysis API

## 1. Project Title / Headline
**Multilingual Sentiment Analysis API**  
A RESTful API that predicts the sentiment of text in multiple languages using a fine-tuned BERT model.

---

## 2. Short Description / Purpose
This API classifies text into **Positive**, **Neutral**, or **Negative** sentiments.  
It supports multiple languages and is ideal for social media monitoring, product review analysis, and customer feedback evaluation.

---

## 3. Tech Stack
The project was built using the following tools and technologies:  
- 🧠 **Python 3.10** – Core programming language.  
- ⚡ **FastAPI** – REST API framework for fast deployment.  
- 🔧 **Docker** – Containerization for easy deployment.  
- 📦 **Hugging Face Transformers** – Pretrained multilingual BERT model.  
- 🔢 **PyTorch** – Deep learning framework for model inference.  
- 📂 **NumPy & Pandas** – Data preprocessing and manipulation.  
- 📝 **Uvicorn** – ASGI server for running FastAPI.

---

## 4. Data Source / Model
**Model: `tabularisai/multilingual-sentiment-analysis`**  
- Architecture: `BERT multilingual base`  
- Trained for multilingual sentiment classification  
- Output labels: `Positive`, `Neutral`, `Negative`  
- Supports >10 languages  
- Fine-tuned on Twitter, Product Review, and Social Media datasets  

🔗 **Hugging Face model link:** [tabularisai/multilingual-sentiment-analysis](https://huggingface.co/tabularisai/multilingual-sentiment-analysis)

---

## 5. Features / Highlights

### 🔹 Business Problem
Understanding sentiment from multilingual text is challenging, especially for customer feedback, social media, or product reviews. Analysts need a reliable, scalable solution for automated sentiment detection.

### 🔹 Goals of the API
- Provide a **simple REST API** for sentiment prediction.  
- Support **multilingual input** in over 10 languages.  
- Offer fast, real-time inference for web or application integration.

### 🔹 API Endpoints
- **POST `/sentiment`** – Predict sentiment from text.



## 6. Clone repository
git clone https://github.com/<your-username>/sentiment-analysis-api.git
cd sentiment-analysis-api

## 7.  Install dependencies, download model, and run API using Makefile
- make install
- make download-model
- make run
## 8. Docker Setup
Make sure Docker is installed.

# Build and run Docker container using Makefile
- make docker-build
- make docker-run
### Access API

Swagger UI: [http://127.0.0.1:8000/docs](http://localhost:8000/docs#/default/predict_sentiment_post)
