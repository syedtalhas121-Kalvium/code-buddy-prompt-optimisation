# Code Buddy - AI Code Review Assistant

Code Buddy is an AI-powered code review assistant built with Node.js. This repository contains the solution for **Prompt Optimisation and Token Efficiency (Challenge #2)**.

## Project Structure

- `prompts/system-prompt.txt`: The system prompt driving the AI code review assistant.
- `src/callAI.js`: AI integration script featuring real-time token usage logging and cost estimation.
- `token-audit.md`: Detailed audit report covering pre-fix baseline, token waste sources, rewritten prompt, instruction mapping, and cost comparison analysis.

## Getting Started

1. Install dependencies:
   ```bash
   npm install
   ```

2. Copy environment file and add your API key:
   ```bash
   cp .env.example .env
   ```

3. Run the application and test token logging:
   ```bash
   npm start
   ```
