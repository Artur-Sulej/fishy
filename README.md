# Fishy

Simple app for classifying phishing content.

It uses:

* [ealvaradob/bert-finetuned-phishing](https://huggingface.co/ealvaradob/bert-finetuned-phishing)
* [elixir-nx/bumblebee](https://github.com/elixir-nx/bumblebee)

## Usage

* `mix deps.get`
* `iex -S mix`


* In Elixir shell:
* `Fishy.run("Click this link to win a prize!")`

or

* paste content into `content.txt` and run `File.read!("lib/content.txt") |> Fishy.run()`

## Benchmark

```elixir
:timer.tc(Fishy, :run, ["Click this link to win a prize!"])
{2097277,
 %{
   predictions: [
     %{label: "phishing", score: 0.9999933242797852},
     %{label: "benign", score: 6.691957423754502e-6}
   ]
 }}
```

Value `2097277` is in microseconds.

## Support for other languages

Model [bert-finetuned-phishing](https://huggingface.co/ealvaradob/bert-finetuned-phishing) is a fine-tuned version
of [bert-large-uncased](https://huggingface.co/bert-large-uncased) with this
dataset: [phishing-dataset](https://huggingface.co/datasets/ealvaradob/phishing-dataset). It
supports only English.

To support other languages, multilingual
BERT [bert-base-multilingual-cased](https://huggingface.co/google-bert/bert-base-multilingual-cased)
would need to be fine-tuned with phishing and non-phishing examples across different languages.

Instructions for fine-tuning with Bumblebee: https://hexdocs.pm/bumblebee/fine_tuning.html
