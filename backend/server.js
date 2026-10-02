import 'dotenv/config';
import express from 'express';
import cors from 'cors';
import OpenAI from 'openai';

const app = express();
app.use(cors());
app.use(express.json({ limit: '1mb' }));

const port = process.env.PORT || 8787;

const client = process.env.OPENAI_API_KEY
  ? new OpenAI({ apiKey: process.env.OPENAI_API_KEY })
  : null;

app.get('/health', (_, res) => {
  res.json({
    ok: true,
    service: 'Angganism AI',
    configured: Boolean(client),
  });
});

app.post('/api/ai/poem', async (req, res) => {
  try {
    if (!client) {
      return res.status(503).json({
        error: 'AI belum dikonfigurasi di server.',
      });
    }

    const { action, idea, draft } = req.body ?? {};

    if (!idea && !draft) {
      return res.status(400).json({
        error: 'idea atau draft diperlukan.',
      });
    }

    const prompt = `
Kamu adalah AI writing companion untuk Angganism,
sebuah aplikasi personal poetry milik Muhammad Alghazali.

Tugasmu membantu penulis menemukan kata, metafora, struktur,
dan kemungkinan pengembangan puisi. Jangan menghapus identitas
dan suara penulis. Hindari klise yang terlalu umum.

Bantuan yang diminta: ${action || 'Kembangkan ide'}

Ide:
${idea || '(tidak ada)'}

Draft:
${draft || '(tidak ada)'}

Berikan respons dalam Bahasa Indonesia.
    `.trim();

    const response = await client.responses.create({
      model: process.env.OPENAI_MODEL,
      input: prompt,
    });

    res.json({
      ok: true,
      output: response.output_text,
    });
  } catch (error) {
    console.error(error);
    res.status(500).json({
      error: 'Terjadi kesalahan saat memproses AI.',
    });
  }
});

app.listen(port, () => {
  console.log(`Angganism backend running on port ${port}`);
});
