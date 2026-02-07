#!/bin/bash
set -e

echo "=== Installing packages ==="
pip install --no-cache-dir Flask==3.0.0 flask-cors==4.0.0 gunicorn==21.2.0
pip install --no-cache-dir praw==7.7.1
pip install --no-cache-dir "pandas<2.1" "numpy<1.25"
pip install --no-cache-dir "spacy<3.7"
pip install --no-cache-dir nltk==3.8.1

echo "=== Downloading spaCy model ==="
pip install https://github.com/explosion/spacy-models/releases/download/en_core_web_sm-3.6.0/en_core_web_sm-3.6.0-py3-none-any.whl

echo "=== Verifying installations ==="
python -c "import spacy; spacy.load('en_core_web_sm'); print('spaCy OK')"
python -c "import nltk; print('NLTK OK')"

echo "=== Build complete ==="
