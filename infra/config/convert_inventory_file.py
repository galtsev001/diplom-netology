file = open("output_data.txt", "r")
text = file.read()
if text is not None:
    text = text[25:len(text)-4].strip()
    inventory = open("inventory.yml", "w")
    inventory.write(text)
    inventory.close()
file.close()

