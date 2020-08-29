LSTM generating song lyrics
===

_If you want to understand what an [LSTM](https://en.wikipedia.org/wiki/Long_short-term_memory) is and how it works, I suggest [this great article](https://colah.github.io/posts/2015-08-Understanding-LSTMs/)._

## About this project
Completing this LSTM was the practical exercise accompanying the _Deep Learning & Neural Networks_ course in the summer term of 2020 at [KIT](https://www.kit.edu).
The template for the LSTM was written by our instructor, [Ngoc Quan Pham](https://github.com/quanpn90).

## Our implementation
We implemented the forward pass and backpropagation and also applied some additional modifications to the LSTM, like changing it's sequence rate over time.
This way, we hoped, it would first learn basic words and then go on to learn bigger structures, like sentences, later on.
From what we could observe, that was a useful change, as the network produced way less random (non-)words and formed (mostly) nicely structured sentences.
We also changed how characters are sampled from the probability distribution that is generated, which helped with reducing the amount of random (non-)words as well.

## How to run the LSTM

1. Get an API key from [Genius API](https://docs.genius.com/) and add it to `downloadlyrics.py`.
2. Then start the training with `./train.sh ARTIST-NAME` and enjoy the show.
