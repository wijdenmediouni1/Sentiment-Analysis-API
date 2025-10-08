# ===============================
# Sentiment Analysis API Makefile
# ===============================

APP_NAME = sentiment-api
PORT = 8000

# --- Environment ---
PYTHON = python3
VENV = venv

# --- Default target ---
.DEFAULT_GOAL := help

# ===============================
# 🔧 Setup commands
# ===============================

venv: ## Create virtual environment
	$(PYTHON) -m venv $(VENV)

install: venv ## Install dependencies inside venv
	$(VENV)/bin/pip install --upgrade pip
	$(VENV)/bin/pip install -r requirements.txt

run: ## Run FastAPI locally
	$(VENV)/bin/uvicorn app:app --reload --host 0.0.0.0 --port $(PORT)

download-model: ## Download Hugging Face model
	$(VENV)/bin/python model_cache/download_model.py

# ===============================
# 🐳 Docker commands
# ===============================

docker-build: ## Build Docker image
	docker build -t $(APP_NAME) .

docker-run: ## Run Docker container
	docker run -p $(PORT):$(PORT) $(APP_NAME)

docker-clean: ## Remove old Docker images/containers
	docker system prune -f

# ===============================
# 🧹 Utilities
# ===============================

clean: ## Clean cache and temporary files
	rm -rf __pycache__ */__pycache__ .pytest_cache
	rm -rf $(VENV)

help: ## Show this help message
	@echo ""
	@echo "Usage: make [target]"
	@echo ""
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' Makefile | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2}'
	@echo ""
