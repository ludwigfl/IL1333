import re

# Read the original file with extra chars
with open('dump.txt', 'r') as f:
    content = f.readlines()

clean_bits = []

for line in content:
    # Remove everything before and including colon (:)
    if ':' in line:
        line = line.split(':', 1)[1]

    # Remove ASCII column (which usually starts after double space)
    line = line.split('  ')[0]

    # Remove all characters except 0, 1, and whitespace
    line = re.sub(r'[^01\s]', '', line)

    # Strip and append if line still has bits
    if line.strip():
        clean_bits.append(line.strip())

# Join all lines to a single bitstream (if needed) or save clean lines
bitstream = ''.join(clean_bits)

# Save clean bitstream to a new file (optional)
with open('clean_dump.txt', 'w') as f:
    f.write(bitstream)

print("Sanitization complete. Output saved to clean_dump.txt")
print(f"Total bits: {len(bitstream)}")
