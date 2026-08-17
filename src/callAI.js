import fs from 'fs';
import path from 'path';
import OpenAI from 'openai';
import dotenv from 'dotenv';

dotenv.config();

const client = new OpenAI({
  apiKey: process.env.OPENAI_API_KEY || 'dummy-key',
  baseURL: process.env.OPENAI_API_BASE || 'https://api.openai.com/v1',
});

export async function reviewCode(userCode) {
  const systemPromptPath = path.resolve('prompts/system-prompt.txt');
  const systemPrompt = fs.readFileSync(systemPromptPath, 'utf-8');

  const response = await client.chat.completions.create({
    model: 'gpt-4o',
    messages: [
      { role: 'system', content: systemPrompt },
      { role: 'user', content: userCode }
    ]
  });

  return response.choices[0].message.content;
}
