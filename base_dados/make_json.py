import pandas as pd

df = pd.read_csv("Ilha.csv")
df.to_json("ilhas.json", orient="records", indent=4)

print("JSON file created successfully!")
