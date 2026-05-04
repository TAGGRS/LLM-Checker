# LLM Traffic Detector 🤖

![GTM Template](https://img.shields.io/badge/GTM-Template-blue?style=flat-square&logo=google-tag-manager)
![License](https://img.shields.io/badge/license-MIT-green?style=flat-square)
![Status](https://img.shields.io/badge/status-stable-brightgreen?style=flat-square)

Gain full visibility into traffic originating from **Large Language Models (LLMs)** such as ChatGPT, Google Gemini, Perplexity AI, Microsoft Copilot, and Claude. 

This Google Tag Manager (GTM) template allows you to detect, segment, and control LLM-influenced traffic within your analytics and performance marketing ecosystem.

## 🚀 Why LLM Traffic Detector?

As AI models increasingly browse the live web, your GA4 data and attribution models can become skewed by non-human interactions. This tool empowers you to:

- **Filter AI Traffic:** Keep your conversion rates and engagement metrics clean.
- **GA4 Segmentation:** Create dedicated audiences or segments for LLM sessions.
- **Advanced Attribution:** Ensure your marketing spend is evaluated against real human behavior.
- **Server-Side Ready:** Fully compatible with Server-side GTM (sGTM), especially when using TAGGRS.

## ✨ Key Features

- ✅ **Smart Detection:** Identifies bots and crawlers from major AI providers via User-Agent analysis.
- ✅ **Boolean Logic:** Outputs a simple `true` (AI traffic) or `false` (Human traffic).
- ✅ **Lightweight:** Designed for performance with zero dependencies.
- ✅ **Seamless Integration:** Works as a standard GTM variable for use in any tag or trigger.

## 🛠 Configuration & Installation

### 1. Add the Template
* **From Gallery (Recommended):** In GTM, go to **Templates** → **Search Gallery**. Search for **"LLM Traffic Detector"** and click **Add to Workspace**.
* **Manual:** Download the `LLM Traffic Detector.template` file from this repository and import it under the *Templates* section.

### 2. Create the Variable
1.  Navigate to **Variables** → **New** → **User-Defined Variables**.
2.  Select **LLM Traffic Detector** as the variable type.
3.  Name it (e.g., `{{LLM Traffic Detector}}`) and **Save**.

### 3. Implementation
* **In Triggers:** Use a condition like `{{LLM Traffic Detector}} equals false` to ensure a tag only fires for human visitors.
* **In Tags:** Pass the variable into GA4 as a **User Property** or **Event Parameter** (e.g., `is_llm_traffic`) to enable session-level segmentation.

## 🧪 Testing & Publishing

1.  Enter **GTM Preview mode**.
2.  **Spoof an LLM User-Agent** using browser DevTools (e.g., set your Network conditions to `Mozilla/5.0... GPTBot`).
3.  Verify that the variable output shows `true`.
4.  Once verified, **Publish** your container.

---

## 📊 Example Use Cases

### Trigger: Human Traffic Only
| Setting | Value |
| :--- | :--- |
| **Event Type** | Custom Event / Page View |
| **Trigger condition** | `{{LLM Traffic Detector}}` equals `false` |

### TAGGRS Integration
Pass the boolean value to your server-side container to enable advanced attribution filtering and prevent AI "noise" from reaching your marketing pixels.

---

## 🏗 Requirements

- **Google Tag Manager container** (Client-side or Server-side).
- For **sGTM**: A [TAGGRS](https://taggrs.io/) setup is recommended for enhanced tracking accuracy and server-side processing.

## 🤝 Contributing
Contributions are welcome! If you encounter a new AI bot that isn't being detected yet, please open an [Issue](https://github.com/TAGGRS/llm-traffic-detector/issues) or submit a Pull Request.

## 📄 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---
*Maintained by [TAGGRS](https://taggrs.io/)*
