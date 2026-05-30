# MoneyPrinterMerged 🎬

Combined video generation automation from MoneyPrinterTurbo + MoneyPrinterV2

## Features

- 🎥 **Auto Video Generation** - Script, voiceover, subtitles, b-roll, music
- 🤖 **Twitter Bot** - Auto-post with CRON scheduling
- 📺 **YouTube Shorts** - Automated upload pipeline
- 🔗 **Affiliate Marketing** - Amazon + social integration
- 📧 **Cold Outreach** - Local business scraper + email automation
- 🆓 **Free B-Roll** - Pexels, Pixabay, Mixkit (no paid APIs)
- 🧠 **Mistral AI** - Pre-configured LLM for scripts
- 📓 **Colab Ready** - One-click deployment

## Quick Start - Google Colab

[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/corruptcrew/KyxContent-Hub/blob/main/notebook.ipynb)

## API Keys Required

| Service | Purpose | Get Key |
|---------|---------|---------|
| Mistral AI | Script generation | https://console.mistral.ai/ |
| Pexels | Stock videos (free) | https://pexels.com/api/ |
| Pixabay | Stock videos (free) | https://pixabay.com/api/ |
| Edge TTS | Voiceover (free) | No key needed |

## Local Installation

```bash
git clone https://github.com/corruptcrew/KyxContent-Hub.git
cd MoneyPrinterMerged
python -m venv venv
source venv/bin/activate  # Windows: venv\Scripts\activate
pip install -r requirements.txt
```

## Configuration

Copy `config.example.toml` to `config.toml` and add your API keys.

## Usage

### WebUI
```bash
streamlit run webui/Main.py
```

### API Server
```bash
python main.py
# Access at http://localhost:8080/docs
```

### Twitter Bot
```bash
python src/twitter_bot.py
```

### YouTube Automation
```bash
python src/youtube_automator.py
```

## License

AGPL-3.0

## Credits

- Original MoneyPrinterTurbo: https://github.com/harry0703/MoneyPrinterTurbo
- Original MoneyPrinterV2: https://github.com/FujiwaraChoki/MoneyPrinterV2

---

**Author:** Ghost Marshal (@corruptcrew)
