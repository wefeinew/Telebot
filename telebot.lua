-- TELEBOT SCRIPT. DON'T TOUCH
local telebot = {}

local function init (token)
    local api_url = "https://api.telegram.org/bot" .. token

    local function make_request (method, params)
        local url = api_url .. "/" .. method
        local response = http.request(url, { json = params })
        return cjson.decode(response.body)
    end

    function telebot.send_message (chat_id, text, options)
        local params = {
            chat_id = chat_id,
            text = text
        }
        if options then
            params.parse_mode = options.parse_mode
            params.disable_web_page_preview = options.disable_web_page_preview
            params.disable_notification = options.disable_notification
            params.reply_to_message_id = options.reply_to_message_id
            params.reply_markup = options.reply_markup
        end
        return make_request("sendMessage", params)
    end

    function telebot.send_photo (chat_id, photo, options)
        local params = {
            chat_id = chat_id,
            photo = photo
        }
        if options then
            params.caption = options.caption
            params.parse_mode = options.parse_mode
            params.disable_notification = options.disable_notification
            params.reply_to_message_id = options.reply_to_message_id
            params.reply_markup = options.reply_markup
        end
        return make_request("sendPhoto", params)
    end

    function telebot.send_audio (chat_id, audio, options)
        local params = {
            chat_id = chat_id,
            audio = audio
        }
        if options then
            params.caption = options.caption
            params.parse_mode = options.parse_mode
            params.duration = options.duration
            params.performer = options.performer
            params.title = options.title
            params.disable_notification = options.disable_notification
            params.reply_to_message_id = options.reply_to_message_id
            params.reply_markup = options.reply_markup
        end
        return make_request("sendAudio", params)
    end

    function telebot.send_document (chat_id, document, options)
        local params = {
            chat_id = chat_id,
            document = document
        }
        if options then
            params.caption = options.caption
            params.parse_mode = options.parse_mode
            params.disable_notification = options.disable_notification
            params.reply_to_message_id = options.reply_to_message_id
            params.reply_markup = options.reply_markup
        end
        return make_request("sendDocument", params)
    end

    function telebot.send_sticker (chat_id, sticker, options)
        local params = {
            chat_id = chat_id,
            sticker = sticker
        }
        if options then
            params.disable_notification = options.disable_notification
            params.reply_to_message_id = options.reply_to_message_id
            params.reply_markup = options.reply_markup
        end
        return make_request("sendSticker", params)
    end

    function telebot.send_video (chat_id, video, options)
        local params = {
            chat_id = chat_id,
            video = video
        }
        if options then
            params.duration = options.duration
            params.caption = options.caption
            params.parse_mode = options.parse_mode
            params.disable_notification = options.disable_notification
            params.reply_to_message_id = options.reply_to_message_id
            params.reply_markup = options.reply_markup
        end
        return make_request("sendVideo", params)
    end

    function telebot.send_animation (chat_id, animation, options)
        local params = {
            chat_id = chat_id,
            animation = animation
        }
        if options then
            params.caption = options.caption
            params.parse_mode = options.parse_mode
            params.duration = options.duration
            params.width = options.width
            params.height = options.height
            params.disable_notification = options.disable_notification
            params.reply_to_message_id = options.reply_to_message_id
            params.reply_markup = options.reply_markup
        end
        return make_request("sendAnimation", params)
    end

    function telebot.send_voice (chat_id, voice, options)
        local params = {
            chat_id = chat_id,
            voice = voice
        }
        if options then
            params.caption = options.caption
            params.parse_mode = options.parse_mode
            params.duration = options.duration
            params.disable_notification = options.disable_notification
            params.reply_to_message_id = options.reply_to_message_id
            params.reply_markup = options.reply_markup
        end
        return make_request("sendVoice", params)
    end

    function telebot.send_video_note (chat_id, video_note, options)
        local params = {
            chat_id = chat_id,
            video_note = video_note
        }
        if options then
            params.duration = options.duration
            params.length = options.length
            params.disable_notification = options.disable_notification
            params.reply_to_message_id = options.reply_to_message_id
            params.reply_markup = options.reply_markup
        end
        return make_request("sendVideoNote", params)
    end

    function telebot.send_media_group (chat_id, media, options)
        local params = {
            chat_id = chat_id,
            media = media
        end
        if options then
            params.disable_notification = options.disable_notification
            params.reply_to_message_id = options.reply_to_message_id
        end
        return make_request("sendMediaGroup", params)
    end

    function telebot.send_location (chat_id, latitude, longitude, options)
        local params = {
            chat_id = chat_id,
            latitude = latitude,
            longitude = longitude
        }
        if options then
            params.live_period = options.live_period
            params.disable_notification = options.disable_notification
            params.reply_to_message_id = options.reply_to_message_id
            params.reply_markup = options.reply_markup
        end
        return make_request("sendLocation", params)
    end

    function telebot.send_venue (chat_id, latitude, longitude, title, address, options)
        local params = {
            chat_id = chat_id,
            latitude = latitude,
            longitude = longitude,
            title = title,
            address = address
        }
        if options then
            params.foursquare_id = options.foursquare_id
            params.foursquare_type = options.foursquare_type
            params.google_place_id = options.google_place_id
            params.google_place_type = options.google_place_type
            params.disable_notification = options.disable_notification
            params.reply_to_message_id = options.reply_to_message_id
            params.reply_markup = options.reply_markup
        end
        return make_request("sendVenue", params)
    end

    function telebot.send_contact (chat_id, phone_number, first_name, options)
        local params = {
            chat_id = chat_id,
            phone_number = phone_number,
            first_name = first_name
        }
        if options then
            params.last_name = options.last_name
            params.vcard = options.vcard
            params.disable_notification = options.disable_notification
            params.reply_to_message_id = options.reply_to_message_id
            params.reply_markup = options.reply_markup
        end
        return make_request("sendContact", params)
    end

    function telebot.send_poll (chat_id, question, options, is_anonymous, type, allows_multiple_answers, correct_option_id, explanation, explanation_parse_mode, open_period, close_date, is_closed)
        local params = {
            chat_id = chat_id,
            question = question,
            options = options,
            is_anonymous = is_anonymous,
            type = type,
            allows_multiple_answers = allows_multiple_answers,
            correct_option_id = correct_option_id,
            explanation = explanation,
            explanation_parse_mode = explanation_parse_mode,
            open_period = open_period,
            close_date = close_date,
            is_closed = is_closed
        }
        return make_request("sendPoll", params)
    end

    function telebot.send_dice (chat_id, emoji, options)
        local params = {
            chat_id = chat_id,
            emoji = emoji
        }
        if options then
            params.disable_notification = options.disable_notification
            params.reply_to_message_id = options.reply_to_message_id
            params.reply_markup = options.reply_markup
        end
        return make_request("sendDice", params)
    end

    function telebot.send_chat_action (chat_id, action)
        local params = {
            chat_id = chat_id,
            action = action
        }
        return make_request("sendChatAction", params)
    end

    function telebot.send_invoice (chat_id, title, description, payload, provider_token, start_parameter, currency, prices, photo_url, photo_size, photo_width, photo_height, need_name, need_phone_number, need_email, need_shipping_address, send_phone_number_to_provider, send_email_to_provider, is_flexible, disable_notification, reply_to_message_id, reply_markup)
        local params = {
            chat_id = chat_id,
            title = title,
            description = description,
            payload = payload,
            provider_token = provider_token,
            start_parameter = start_parameter,
            currency = currency,
            prices = prices,
            photo_url = photo_url,
            photo_size = photo_size,
            photo_width = photo_width,
            photo_height = photo_height,
            need_name = need_name,
            need_phone_number = need_phone_number,
            need_email = need_email,
            need_shipping_address = need_shipping_address,
            send_phone_number_to_provider = send_phone_number_to_provider,
            send_email_to_provider = send_email_to_provider,
            is_flexible = is_flexible,
            disable_notification = disable_notification,
            reply_to_message_id = reply_to_message_id,
            reply_markup = reply_markup
        }
        return make_request("sendInvoice", params)
    end

    function telebot.send_game (chat_id, game_short_name, disable_notification, reply_to_message_id, reply_markup)
        local params = {
            chat_id = chat_id,
            game_short_name = game_short_name,
            disable_notification = disable_notification,
            reply_to_message_id = reply_to_message_id,
            reply_markup = reply_markup
        }
        return make_request("sendGame", params)
    end

    function telebot.set_game_score (user_id, score, force, disable_edit_message, chat_id, message_id, inline_message_id)
        local params = {
            user_id = user_id,
            score = score,
            force = force,
            disable_edit_message = disable_edit_message
        }
        if chat_id and message_id then
            params.chat_id = chat_id
            params.message_id = message_id
        elseif inline_message_id then
            params.inline_message_id = inline_message_id
        end
        return make_request("setGameScore", params)
    end

    function telebot.get_game_high_scores (user_id, chat_id, message_id, inline_message_id)
        local params = {
            user_id = user_id
        }
        if chat_id and message_id then
            params.chat_id = chat_id
            params.message_id = message_id
        elseif inline_message_id then
            params.inline_message_id = inline_message_id
        end
        return make_request("getGameHighScores", params)
    end

    function telebot.answer_callback_query (callback_query_id, text, show_alert, url, cache_time)
        local params = {
            callback_query_id = callback_query_id,
            text = text,
            show_alert = show_alert,
            url = url,
            cache_time = cache_time
        }
        return make_request("answerCallbackQuery", params)
    end

    function telebot.edit_message_text (chat_id, message_id, text, options)
        local params = {
            chat_id = chat_id,
            message_id = message_id,
            text = text
        }
        if options then
            params.parse_mode = options.parse_mode
            params.disable_web_page_preview = options.disable_web_page_preview
            params.reply_markup = options.reply_markup
        end
        return make_request("editMessageText", params)
    end

    function telebot.edit_message_caption (chat_id, message_id, caption, options)
        local params = {
            chat_id = chat_id,
            message_id = message_id,
            caption = caption
        }
        if options then
            params.parse_mode = options.parse_mode
            params.reply_markup = options.reply_markup
        end
        return make_request("editMessageCaption", params)
    end

    function telebot.edit_message_media (chat_id, message_id, media, options)
        local params = {
            chat_id = chat_id,
            message_id = message_id,
            media = media
        }
        if options then
            params.reply_markup = options.reply_markup
        end
        return make_request("editMessageMedia", params)
    end

    function telebot.edit_message_reply_markup (chat_id, message_id, reply_markup)
        local params = {
            chat_id = chat_id,
            message_id = message_id,
            reply_markup = reply_markup
        }
        return make_request("editMessageReplyMarkup", params)
    end

    function telebot.stop_poll (chat_id, message_id, reply_markup)
        local params = {
            chat_id = chat_id,
            message_id = message_id,
            reply_markup = reply_markup
        }
        return make_request("stopPoll", params)
    end

    function telebot.delete_message (chat_id, message_id)
        local params = {
            chat_id = chat_id,
            message_id = message_id
        }
        return make_request("deleteMessage", params)
    end

    function telebot.send_inline_keyboard_markup (chat_id, message_text, keyboard, options)
        local reply_markup = {
            inline_keyboard = keyboard
        }
        local params = {
            chat_id = chat_id,
            text = message_text,
            reply_markup = reply_markup
        }
        if options then
            params.parse_mode = options.parse_mode
            params.disable_web_page_preview = options.disable_web_page_preview
        end
        return telebot.send_message(params)
    end

    function telebot.send_reply_keyboard_markup (chat_id, message_text, keyboard, options)
        local reply_markup = {
            keyboard = keyboard,
            resize_keyboard = true
        }
        local params = {
            chat_id = chat_id,
            text = message_text,
            reply_markup = reply_markup
        }
        if options then
            params.parse_mode = options.parse_mode
            params.disable_web_page_preview = options.disable_web_page_preview
        end
        return telebot.send_message(params)
    end

    function telebot.send_keyboard_remove (chat_id, message_text, options)
        local reply_markup = {
            remove_keyboard = true
        }
        local params = {
            chat_id = chat_id,
            text = message_text,
            reply_markup = reply_markup
        }
        if options then
            params.parse_mode = options.parse_mode
            params.disable_web_page_preview = options.disable_web_page_preview
        end
        return telebot.send_message(params)
    end

    function telebot.send_force_reply (chat_id, message_text, options)
        local reply_markup = {
            force_reply = true
        }
        local params = {
            chat_id = chat_id,
            text = message_text,
            reply_markup = reply_markup
        }
        if options then
            params.parse_mode = options.parse_mode
            params.disable_web_page_preview = options.disable_web_page_preview
        end
        return telebot.send_message(params)
    end

    return telebot
end

return telebot
