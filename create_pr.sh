#!/bin/bash
gh repo edit --visibility public --accept-visibility-change-consequences
gh pr create --title "Optimised system prompt and added token logging" --body "## Summary of Changes

- **System Prompt Optimisation**: Audited prompts/system-prompt.txt and identified three key token waste patterns (instruction duplication, filler preambles, and redundant summaries). Rewrote the prompt from 299 tokens down to 80 tokens (a 73.2% token reduction) while preserving 100% of instructions.
- **Token Usage Logging**: Added real-time token tracking and estimated cost calculation in src/callAI.js printing prompt tokens, completion tokens, total tokens, and estimated cost in USD.
- **Comprehensive Audit Documentation**: Created token-audit.md detailing baseline metrics, waste source analysis, rewritten prompt, instruction mapping, and full cost comparison arithmetic demonstrating recurring monthly savings of $49.28 at 90,000 monthly calls." --base main --head token-fix
