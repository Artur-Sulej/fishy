defmodule Fishy do
  def run(text) do
    {:ok, model_info} = Bumblebee.load_model({:hf, "ealvaradob/bert-finetuned-phishing"})
    {:ok, tokenizer} = Bumblebee.load_tokenizer({:hf, "ealvaradob/bert-finetuned-phishing"})

    serving = Bumblebee.Text.text_classification(model_info, tokenizer)
    Nx.Serving.run(serving, text)
  end
end
