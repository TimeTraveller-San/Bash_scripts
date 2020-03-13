# Bash scripts
I am trying to learn bash. Here are some simple scripts that help me a lot.
To use these from anywhere on terminal, add these scripts to any path in `$PATH`. Make sure to remove the `.sh` from the end of file. So, save `helpex.sh` as `helpex` in `/some/directory` where `/some/directory` exists in `$PATH`.

Add a directory in path: `export PATH="$/some/directory:$PATH"`

# Scripts
## randomplay
Randomly play a video/audio in a directory by searching recursively

- `base_dir` is the uppermost directory in which files are searched recursively
- In `line 8` and `line 17`, edit `$(find "$base_dir" -name "*.extension1" -o -name "*.extension2"  -o -name "*.extension3" | xargs -d '\n' realpath)`. `-o` is or so there can be any number of file extensions. I have used `mp4`, `mkv` and `avi` to play videos.
- In `line 20` change the command to anything you want. `mpv` is my media player.

## helpex
I keep forgetting how to extract different packaging formats on linux.

`helpex <format>` will print how to do it.

### Supports:
- bz2
- tar
- gz
- zip
- rar
- targz
- 7z
- tarbz2
