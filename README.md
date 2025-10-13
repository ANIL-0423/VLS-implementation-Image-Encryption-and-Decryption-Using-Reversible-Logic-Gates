# VLS-implementation-Image-Encryption-and-Decryption-Using-Reversible-Logic-Gates
Implementation of Image Encryption and Decryption using Reversible Logic Gates with LFSR-based key generation and LSB watermarking. FPGA-tested low-power VLSI cryptography system.

This repository contains the implementation and study materials for the paper:
**"VLSI Implementation of Image Encryption and Decryption Using Reversible Logic Gates"**  
(Originally published at IEEE Power Electronics and Renewable Energy Applications Conference, 2020)

## 📘 Abstract

This project presents a low-power, high-security cryptography system based on **Reversible Logic Gates (RLG)**.  
The system performs image encryption and decryption using **Feynman**, **Fredkin**, **Toffoli**, and **SCL** gates,  
with a **Linear Feedback Shift Register (LFSR)** for key generation and **LSB watermarking** for added security.

## ⚙️ Features

- Reversible logic-based cryptography design (RLGCD)
- LFSR-based random key generation
- LSB watermark embedding and extraction
- MATLAB for image preprocessing & watermarking
- Verilog HDL implementation for FPGA
- Xilinx ISE 14.7 simulation on Spartan3E (XC3S500E)
- Low power consumption (~85mW)


## 🧩 System Workflow

1. **MATLAB Stage**
   - Read image and embed watermark using LSB method.
   - Convert image to binary and export to `.txt` file.

2. **Verilog Stage**
   - Implement encryption & decryption using reversible gates.
   - Generate random key using LFSR.
   - Write encrypted/decrypted data to output text files.

3. **MATLAB Post-Processing**
   - Reconstruct encrypted/decrypted images.
   - Extract and verify watermark.


## 🖥️ Tools & Technologies

| Tool | Purpose |
|------|----------|
| **MATLAB 2018** | Image processing and watermarking |
| **Verilog HDL** | RLG-based encryption/decryption logic |
| **Xilinx ISE 14.7** | FPGA synthesis and simulation |
| **Spartan3E XC3S500E** | Target FPGA device |

---

## 📊 FPGA Results

| Device | LUT | Flip-Flops | Slices | Frequency (MHz) | Power (mW) |
|--------|-----|-------------|---------|-----------------|-------------|
| Spartan3E XC3S500E | 37 | 40 | 42 | 175.05 | 85 |


## 🧠 Reversible Logic Gates Used

- Feynman Gate  
- Fredkin Gate  
- Toffoli Gate  
- SCL Gate  

These gates enable information-preserving operations that minimize heat dissipation, aligning with reversible computing principles.


## 🔐 Key Generation

The **4-bit LFSR** generates pseudo-random keys based on feedback polynomial logic.  
Each pixel block uses a unique key for encryption and decryption.


## 🧪 Example Results

| Stage | Image |
|--------|--------|
| Original | ![original](D:\DATA IMP PRSNL\GITHUB\VLSI Implementaion of Image Encryption and\IMAGE_ENCRYPTION) |
| Watermarked | ![watermarked](images/watermarked.png) |
| Encrypted | ![encrypted](images/encrypted.png) |
| Decrypted | ![decrypted](images/decrypted.png) |
| Extracted Watermark | ![watermark](images/watermark.png) |
