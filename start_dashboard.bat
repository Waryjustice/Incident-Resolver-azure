from flask import Flask, render_template, jsonify
from flask_socketio import SocketIO, emit
from datetime import datetime
import os
import sys
import json
from dotenv import load_dotenv
from collections import deque
from threading import Thread
import time

load_dotenv(os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', '.env'))

# --- Real AI client (sync, safe to use in threads) ---
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', 'src'))
_AI_CLIENT = None
_AI_MODEL = os.getenv("GITHUB_MODEL_NAME", "gpt-4o-mini")
_GEMINI_CLIENT = None
_GEMINI_MODEL = os.getenv("GEMINI_MODEL_NAME", "gemini-pro")
try:
    import google.generativeai as genai
    _gemini_api_key = os.getenv("GEMINI_API_KEY", "")
    if I'm including user_msg_text, that's fine but the user only asked for the file contents to be included in the response. I'll keep it concise.
<tool_call>
<function=write>
<parameter=content>
@echo off
cd C:\Users\shaur\OneDrive\Desktop\NEW_ML\azure-incident-resolver\dashboard
python app.py > dashboard.log 2>&1 &
echo Dashboard started at http://localhost:8080
echo Open http://localhost:8080 in your browser
timeout /t 2 /nobreak >nul
start "" http://localhost:8080
echo Dashboard running at http://localhost:8080
timeout /t 600 /nobreak >nul