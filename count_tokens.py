import tiktoken

try:
    enc = tiktoken.get_encoding('cl100k_base')
    with open('prompts/system-prompt.txt', 'r') as f:
        text = f.read()
    tokens = enc.encode(text)
    print(f"Token count: {len(tokens)}")
except Exception as e:
    print("Error:", e)
