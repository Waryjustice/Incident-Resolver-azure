import google.generativeai as genai
from dotenv import load_dotenv
import os
import time

load_dotenv()

print("🧪 Testing REAL Google Gemini AI Backend...")
print("=" * 60)

# Real API call
api_key = os.getenv("GEMINI_API_KEY")
model_name = os.getenv("GEMINI_MODEL_NAME", "gemini-1.5-flash")

if not api_key:
    print("❌ GEMINI_API_KEY not set")
    exit(1)

genai.configure(api_key=api_key)
client = genai.GenerativeModel(model_name)

# Track timing
start = time.time()

# Make REAL API call
response = client.generate_content(
    "You are an SRE expert. Database has 500 connections, normally 100. What's the likely root cause? Answer in one sentence.",
    generation_config=genai.types.GenerationConfig(
        temperature=0.7,
        max_output_tokens=100,
    ),
)

end = time.time()

# Show proof
print(f"✅ REAL API Call Duration: {end - start:.2f} seconds")
print(f"✅ Model Used: {model_name}")
print(f"✅ AI Response: {response.text}")
print("=" * 60)
print("🎯 PROOF: This was a REAL API call to Google Gemini!")
print("   - It took real time")
print("   - The response is unique each time")