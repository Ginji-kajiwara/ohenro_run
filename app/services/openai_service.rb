# frozen_string_literal: true

class OpenaiService
  def initialize(api_key)
    @client = OpenAI::Client.new(api_key: api_key)
  end

  def generate_memory(location)
    prompt = "あなたはお遍路を行っています。#{location}の近くに到達しました。到達地点付近で仮想の思い出を50文字以内で作成してください。"
    response = @client.chat(
      parameters: {
        model: 'gpt-4',
        max_tokens: 100,
        messages: [{ role: 'user', content: prompt }]
      }
    )
    Rails.logger.debug("OpenAI API response: #{response.inspect}")
    if response && response['choices'] && response['choices'][0] && response['choices'][0]['message']
      response['choices'][0]['message']['content']
    else
      '思い出を生成できませんでした。'
    end
  end
end
