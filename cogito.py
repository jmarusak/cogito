from gpt4all import GPT4All

model_name = "mistral-7b-instruct-v0.1.Q4_0.gguf"
model_path = "model"

model = GPT4All(model_name, model_path=model_path)
output = model.generate("generate Dockerfile for python fastapi")
print(output)
