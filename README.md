# Membrane MP3 Lame plugin

MP3 output is audible, but the test does not pass.

## Test File Generation

```bash
ffmpeg -f lavfi -i "sine=frequency=1000:duration=5" -acodec pcm_s16le -ar 8000 -ac 1 -f s16le test/fixtures/input.pcm -y
```

```bash
ffmpeg -f lavfi -i "sine=frequency=1000:duration=5" -acodec libmp3lame -ar 8000 -ac 1 test/fixtures/ref.mp3 -y
```
