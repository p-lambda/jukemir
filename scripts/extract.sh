docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/emomusic/wav:/input \
	-v /home/cdonahue/.jukemir/representations/emomusic/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 0
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/emomusic/wav:/input \
	-v /home/cdonahue/.jukemir/representations/emomusic/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 1
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/emomusic/wav:/input \
	-v /home/cdonahue/.jukemir/representations/emomusic/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 2
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/emomusic/wav:/input \
	-v /home/cdonahue/.jukemir/representations/emomusic/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 0
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/emomusic/wav:/input \
	-v /home/cdonahue/.jukemir/representations/emomusic/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 1
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/emomusic/wav:/input \
	-v /home/cdonahue/.jukemir/representations/emomusic/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 2
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/emomusic/wav:/input \
	-v /home/cdonahue/.jukemir/representations/emomusic/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 0
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/emomusic/wav:/input \
	-v /home/cdonahue/.jukemir/representations/emomusic/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 1
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/emomusic/wav:/input \
	-v /home/cdonahue/.jukemir/representations/emomusic/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 2
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/emomusic/wav:/input \
	-v /home/cdonahue/.jukemir/representations/emomusic/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 0
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/emomusic/wav:/input \
	-v /home/cdonahue/.jukemir/representations/emomusic/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 1
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/emomusic/wav:/input \
	-v /home/cdonahue/.jukemir/representations/emomusic/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 2
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/emomusic/wav:/input \
	-v /home/cdonahue/.jukemir/representations/emomusic/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 0
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/emomusic/wav:/input \
	-v /home/cdonahue/.jukemir/representations/emomusic/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 1
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/emomusic/wav:/input \
	-v /home/cdonahue/.jukemir/representations/emomusic/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 2
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/emomusic/wav:/input \
	-v /home/cdonahue/.jukemir/representations/emomusic/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 0
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/emomusic/wav:/input \
	-v /home/cdonahue/.jukemir/representations/emomusic/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 1
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/emomusic/wav:/input \
	-v /home/cdonahue/.jukemir/representations/emomusic/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 2
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/gtzan_ff/wav:/input \
	-v /home/cdonahue/.jukemir/representations/gtzan_ff/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 0
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/gtzan_ff/wav:/input \
	-v /home/cdonahue/.jukemir/representations/gtzan_ff/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 1
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/gtzan_ff/wav:/input \
	-v /home/cdonahue/.jukemir/representations/gtzan_ff/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 2
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/gtzan_ff/wav:/input \
	-v /home/cdonahue/.jukemir/representations/gtzan_ff/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 3
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/gtzan_ff/wav:/input \
	-v /home/cdonahue/.jukemir/representations/gtzan_ff/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 0
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/gtzan_ff/wav:/input \
	-v /home/cdonahue/.jukemir/representations/gtzan_ff/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 1
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/gtzan_ff/wav:/input \
	-v /home/cdonahue/.jukemir/representations/gtzan_ff/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 2
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/gtzan_ff/wav:/input \
	-v /home/cdonahue/.jukemir/representations/gtzan_ff/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 3
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/gtzan_ff/wav:/input \
	-v /home/cdonahue/.jukemir/representations/gtzan_ff/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 0
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/gtzan_ff/wav:/input \
	-v /home/cdonahue/.jukemir/representations/gtzan_ff/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 1
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/gtzan_ff/wav:/input \
	-v /home/cdonahue/.jukemir/representations/gtzan_ff/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 2
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/gtzan_ff/wav:/input \
	-v /home/cdonahue/.jukemir/representations/gtzan_ff/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 3
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/gtzan_ff/wav:/input \
	-v /home/cdonahue/.jukemir/representations/gtzan_ff/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 0
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/gtzan_ff/wav:/input \
	-v /home/cdonahue/.jukemir/representations/gtzan_ff/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 1
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/gtzan_ff/wav:/input \
	-v /home/cdonahue/.jukemir/representations/gtzan_ff/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 2
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/gtzan_ff/wav:/input \
	-v /home/cdonahue/.jukemir/representations/gtzan_ff/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 3
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/gtzan_ff/wav:/input \
	-v /home/cdonahue/.jukemir/representations/gtzan_ff/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 0
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/gtzan_ff/wav:/input \
	-v /home/cdonahue/.jukemir/representations/gtzan_ff/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 1
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/gtzan_ff/wav:/input \
	-v /home/cdonahue/.jukemir/representations/gtzan_ff/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 2
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/gtzan_ff/wav:/input \
	-v /home/cdonahue/.jukemir/representations/gtzan_ff/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 3
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/gtzan_ff/wav:/input \
	-v /home/cdonahue/.jukemir/representations/gtzan_ff/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 0
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/gtzan_ff/wav:/input \
	-v /home/cdonahue/.jukemir/representations/gtzan_ff/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 1
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/gtzan_ff/wav:/input \
	-v /home/cdonahue/.jukemir/representations/gtzan_ff/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 2
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/gtzan_ff/wav:/input \
	-v /home/cdonahue/.jukemir/representations/gtzan_ff/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 3
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 0
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 1
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 2
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 3
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 4
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 5
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 6
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 7
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 8
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 9
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 10
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 11
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 12
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 13
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 14
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 15
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 16
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 17
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 18
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 19
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 20
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 21
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 22
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 23
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 24
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 25
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 26
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 27
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 28
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 29
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 30
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 31
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 32
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 33
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 34
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 35
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 36
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 37
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 38
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 39
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 40
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 41
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 42
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 43
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 44
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 45
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 46
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 47
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 48
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 49
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 50
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 51
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 52
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 53
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 54
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 55
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 56
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 57
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 58
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 59
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 60
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 61
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 62
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 63
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 64
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 65
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 66
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 67
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 68
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 69
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 70
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 71
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 72
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 73
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 74
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 75
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 76
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 77
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 78
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 79
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 80
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 81
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 82
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 83
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 84
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 85
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 86
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 87
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 88
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 89
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 90
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 91
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 92
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 93
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 94
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 95
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 96
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 97
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 98
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 99
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 100
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 101
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 0
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 1
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 2
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 3
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 4
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 5
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 6
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 7
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 8
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 9
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 10
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 11
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 12
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 13
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 14
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 15
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 16
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 17
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 18
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 19
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 20
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 21
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 22
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 23
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 24
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 25
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 26
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 27
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 28
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 29
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 30
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 31
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 32
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 33
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 34
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 35
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 36
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 37
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 38
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 39
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 40
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 41
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 42
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 43
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 44
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 45
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 46
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 47
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 48
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 49
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 50
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 51
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 52
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 53
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 54
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 55
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 56
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 57
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 58
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 59
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 60
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 61
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 62
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 63
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 64
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 65
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 66
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 67
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 68
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 69
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 70
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 71
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 72
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 73
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 74
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 75
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 76
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 77
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 78
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 79
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 80
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 81
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 82
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 83
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 84
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 85
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 86
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 87
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 88
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 89
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 90
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 91
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 92
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 93
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 94
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 95
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 96
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 97
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 98
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 99
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 100
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 101
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 0
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 1
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 2
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 3
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 4
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 5
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 6
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 7
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 8
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 9
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 10
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 11
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 12
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 13
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 14
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 15
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 16
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 17
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 18
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 19
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 20
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 21
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 22
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 23
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 24
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 25
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 26
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 27
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 28
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 29
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 30
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 31
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 32
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 33
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 34
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 35
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 36
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 37
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 38
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 39
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 40
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 41
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 42
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 43
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 44
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 45
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 46
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 47
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 48
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 49
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 50
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 51
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 52
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 53
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 54
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 55
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 56
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 57
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 58
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 59
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 60
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 61
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 62
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 63
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 64
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 65
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 66
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 67
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 68
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 69
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 70
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 71
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 72
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 73
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 74
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 75
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 76
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 77
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 78
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 79
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 80
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 81
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 82
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 83
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 84
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 85
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 86
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 87
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 88
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 89
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 90
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 91
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 92
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 93
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 94
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 95
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 96
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 97
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 98
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 99
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 100
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 101
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 0
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 1
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 2
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 3
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 4
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 5
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 6
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 7
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 8
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 9
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 10
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 11
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 12
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 13
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 14
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 15
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 16
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 17
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 18
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 19
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 20
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 21
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 22
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 23
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 24
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 25
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 26
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 27
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 28
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 29
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 30
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 31
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 32
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 33
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 34
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 35
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 36
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 37
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 38
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 39
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 40
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 41
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 42
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 43
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 44
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 45
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 46
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 47
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 48
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 49
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 50
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 51
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 52
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 53
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 54
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 55
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 56
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 57
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 58
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 59
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 60
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 61
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 62
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 63
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 64
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 65
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 66
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 67
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 68
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 69
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 70
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 71
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 72
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 73
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 74
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 75
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 76
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 77
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 78
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 79
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 80
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 81
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 82
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 83
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 84
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 85
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 86
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 87
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 88
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 89
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 90
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 91
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 92
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 93
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 94
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 95
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 96
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 97
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 98
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 99
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 100
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 101
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 0
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 1
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 2
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 3
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 4
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 5
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 6
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 7
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 8
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 9
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 10
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 11
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 12
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 13
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 14
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 15
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 16
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 17
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 18
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 19
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 20
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 21
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 22
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 23
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 24
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 25
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 26
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 27
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 28
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 29
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 30
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 31
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 32
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 33
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 34
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 35
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 36
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 37
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 38
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 39
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 40
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 41
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 42
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 43
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 44
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 45
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 46
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 47
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 48
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 49
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 50
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 51
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 52
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 53
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 54
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 55
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 56
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 57
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 58
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 59
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 60
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 61
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 62
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 63
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 64
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 65
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 66
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 67
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 68
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 69
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 70
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 71
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 72
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 73
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 74
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 75
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 76
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 77
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 78
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 79
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 80
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 81
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 82
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 83
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 84
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 85
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 86
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 87
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 88
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 89
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 90
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 91
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 92
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 93
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 94
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 95
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 96
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 97
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 98
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 99
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 100
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 101
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 0
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 1
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 2
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 3
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 4
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 5
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 6
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 7
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 8
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 9
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 10
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 11
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 12
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 13
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 14
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 15
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 16
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 17
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 18
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 19
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 20
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 21
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 22
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 23
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 24
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 25
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 26
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 27
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 28
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 29
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 30
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 31
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 32
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 33
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 34
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 35
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 36
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 37
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 38
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 39
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 40
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 41
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 42
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 43
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 44
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 45
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 46
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 47
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 48
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 49
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 50
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 51
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 52
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 53
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 54
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 55
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 56
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 57
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 58
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 59
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 60
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 61
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 62
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 63
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 64
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 65
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 66
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 67
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 68
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 69
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 70
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 71
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 72
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 73
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 74
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 75
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 76
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 77
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 78
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 79
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 80
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 81
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 82
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 83
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 84
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 85
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 86
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 87
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 88
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 89
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 90
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 91
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 92
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 93
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 94
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 95
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 96
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 97
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 98
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 99
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 100
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/magnatagatune/wav:/input \
	-v /home/cdonahue/.jukemir/representations/magnatagatune/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 101
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 0
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 1
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 2
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 3
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 4
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 5
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 6
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 7
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 8
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 9
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 10
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 11
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 12
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 13
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 14
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 15
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 16
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 17
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 18
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 19
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 20
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 21
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 22
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 23
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 24
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 25
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 26
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/chroma:/output \
	jukemir/representations_chroma \
	--batch_size 256 \
	--batch_idx 27
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 0
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 1
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 2
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 3
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 4
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 5
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 6
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 7
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 8
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 9
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 10
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 11
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 12
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 13
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 14
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 15
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 16
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 17
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 18
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 19
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 20
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 21
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 22
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 23
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 24
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 25
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 26
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/mfcc:/output \
	jukemir/representations_mfcc \
	--batch_size 256 \
	--batch_idx 27
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 0
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 1
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 2
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 3
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 4
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 5
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 6
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 7
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 8
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 9
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 10
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 11
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 12
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 13
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 14
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 15
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 16
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 17
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 18
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 19
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 20
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 21
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 22
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 23
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 24
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 25
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 26
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/choi:/output \
	jukemir/representations_choi \
	--batch_size 256 \
	--batch_idx 27
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 0
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 1
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 2
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 3
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 4
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 5
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 6
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 7
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 8
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 9
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 10
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 11
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 12
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 13
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 14
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 15
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 16
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 17
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 18
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 19
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 20
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 21
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 22
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 23
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 24
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 25
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 26
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/musicnn:/output \
	jukemir/representations_musicnn \
	--batch_size 256 \
	--batch_idx 27
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 0
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 1
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 2
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 3
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 4
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 5
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 6
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 7
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 8
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 9
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 10
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 11
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 12
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 13
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 14
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 15
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 16
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 17
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 18
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 19
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 20
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 21
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 22
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 23
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 24
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 25
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 26
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/clmr:/output \
	jukemir/representations_clmr \
	--batch_size 256 \
	--batch_idx 27
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 0
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 1
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 2
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 3
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 4
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 5
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 6
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 7
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 8
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 9
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 10
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 11
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 12
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 13
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 14
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 15
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 16
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 17
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 18
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 19
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 20
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 21
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 22
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 23
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 24
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 25
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 26
docker run \
	-it \
	--rm \
	-v /home/cdonahue/.jukemir/processed/giantsteps_clips/wav:/input \
	-v /home/cdonahue/.jukemir/representations/giantsteps_clips/jukebox:/output \
	jukemir/representations_jukebox \
	--batch_size 256 \
	--batch_idx 27
