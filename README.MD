

# telebot: A Lua Library for Telegram Bot API

## Introduction

The "telebot" library provides a convenient interface for interacting with the Telegram Bot API in the Lua programming language. With this library, you can create Telegram bots, send and receive messages, handle updates, and much more.

## Installation

To install the "telebot" library, make sure you have Lua 5.3 and git installed. Then, execute the following command:

```
git clone wefeknew/Telebot
```

## Usage

To start using the "telebot" library, first import it into your Lua script:


local telebot = require "telebot"


Then, initialize the library with your Telegram bot token:


local token = "YOUR_TELEGRAM_BOT_TOKEN"
telebot.init(token)


Replace `YOUR_TELEGRAM_BOT_TOKEN` with your Telegram bot token.

## Sending Messages

The "telebot" library provides functions for sending various types of messages:

### Sending a Text Message


local chat_id = "CHAT_ID"
local message = "Hello, world!"

local response = telebot.send_message(chat_id, message)


### Sending a Photo


local chat_id = "CHAT_ID"
local photo = "PHOTO_FILE_ID"

local response = telebot.send_photo(chat_id, photo)


### Sending Audio


local chat_id = "CHAT_ID"
local audio = "AUDIO_FILE_ID"

local response = telebot.send_audio(chat_id, audio)


### Other Message Types

The "telebot" library also supports sending documents, stickers, videos, animations, voice messages, video notes, locations, contacts, and polls. You can find more information about these functions in the library documentation or the Telegram Bot API documentation.

## Handling Updates

The "telebot" library allows you to handle different types of updates from Telegram:

### Receiving a Text Message


function on_text_message(message)
    print("Text message received:", message.text)
end

telebot.add_update_handler(on_text_message)


### Receiving a Photo


function on_photo_message(message)
    print("Photo received:", message.photo)
end

telebot.add_update_handler(on_photo_message)


### Other Update Types

The "telebot" library also provides functions to handle updates for edited messages, channel posts, inline queries, callback queries, chosen inline results, shipping queries, and pre-checkout queries. You can find more information about these functions in the library documentation or the Telegram Bot API documentation.

## Inline Keyboards and Buttons

The "telebot" library supports inline keyboards and buttons:

### Sending an Inline Keyboard


local keyboard = {
    {
        { text = "Button 1", callback_data = "button1" },
        { text = "Button 2", callback_data = "button2" }
    }
}

local response = telebot.send_inline_keyboard_markup(chat_id, "Message with inline keyboard", keyboard)

### Handling Callback Queries


function on_callback_query(query)
    local data = query.data
    print("Callback query received:", data)
end

telebot.add_callback_query_handler(on_callback_query)


## Long Polling and Webhooks

The "telebot" library supports both long polling and webhooks for receiving updates:

### Long Polling


telebot.start_polling()


### Setting Up Webhooks


local webhook_url = "YOUR_WEBHOOK_URL"
telebot.set_webhook(webhook_url)

Replace `YOUR_WEBHOOK_URL` with your webhook URL.

## Error Handling

The "telebot" library provides functions to handle errors and exceptions:

### Handling Errors


function on_error(error)
    print("Error occurred:", error)
end

telebot.set_error_handler(on_error)


## Advanced Features

The "telebot" library offers advanced features such as sending files, using inline mode, handling inline queries, and more:

### Sending Files

The library supports sending files such as photos, documents, and videos. You can use the `send_photo`, `send_document`, and `send_video` functions to send files.

### Inline Mode

Inline mode allows your bot to send messages to users without leaving the current chat. You can enable inline mode for your bot and provide inline results using the `answer_inline_query` function.

### Inline Queries

Inline queries are used to handle user queries directly from the text input field. You can handle inline queries using the `on_inline_query` function.

## Conclusion

The "telebot" library provides a comprehensive set of functions to interact with the Telegram Bot API in Lua. With this library, you can build powerful Telegram bots, handle updates, send and receive messages, use inline keyboards, and more. For more detailed information and examples, please refer to the library documentation or the official Telegram Bot API documentation.
